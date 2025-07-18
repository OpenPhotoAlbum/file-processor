#!/usr/bin/env python3
"""
Speaker Verification Tool for Assembly AI Results
Helps quickly verify and correct speaker assignments for voice preservation
"""
import json
import os
import subprocess
from typing import Dict, List, Optional
from datetime import datetime

class SpeakerVerifier:
    def __init__(self, results_file: str, audio_file: str):
        """Initialize with Assembly AI results and corresponding audio file"""
        self.results_file = results_file
        self.audio_file = audio_file
        self.base_name = os.path.splitext(os.path.basename(results_file))[0].replace('_enhanced_analysis', '')
        
        # Load Assembly AI results
        with open(results_file, 'r') as f:
            self.results = json.load(f)
        
        # Initialize or load existing verifications in organized directory
        verified_dir = "/photos/voices/transcripts/verified"
        os.makedirs(verified_dir, exist_ok=True)
        
        self.verification_file = os.path.join(verified_dir, f"{self.base_name}_verified_speakers.json")
        self.verifications = self.load_verifications()
        
        # Global speaker names file for persistence across sessions
        self.speaker_names_file = "/photos/voices/known_speakers.json"
        self.known_speakers = self.load_known_speakers()
    
    def load_known_speakers(self) -> List[str]:
        """Load known speakers list from persistent file"""
        default_speakers = [
            "Stephen", "David", "Patty", "Dad", "DIDI", "Jim_Jim",
            "Grandma", "Grammy", "Dorothy", "Grandpa", "Papa",
            "Aunt_Mary", "Uncle_Bob", "Uncle_Mike", "Aunt_Karen",
            "Cayce", "Austen", "Christian", "Henry", "Eli",
            "Eddie", "Johnny", "Billy", "Roxanne", "Debbie", "Erica",
            "Unknown_Male", "Unknown_Female", "Unknown_Child",
            "Other", "WRONG_SPEAKER"
        ]
        
        if os.path.exists(self.speaker_names_file):
            try:
                with open(self.speaker_names_file, 'r') as f:
                    data = json.load(f)
                    return data.get('known_speakers', default_speakers)
            except (json.JSONDecodeError, KeyError):
                print(f"⚠️  Error loading speaker names, using defaults")
                return default_speakers
        else:
            # Save defaults for first time
            self.save_known_speakers(default_speakers)
            return default_speakers
    
    def save_known_speakers(self, speakers: List[str] = None):
        """Save known speakers list to persistent file"""
        if speakers is None:
            speakers = self.known_speakers
            
        data = {
            "known_speakers": speakers,
            "last_updated": datetime.now().isoformat(),
            "version": "1.0"
        }
        
        try:
            with open(self.speaker_names_file, 'w') as f:
                json.dump(data, f, indent=2)
        except Exception as e:
            print(f"⚠️  Warning: Could not save speaker names: {e}")
    
    def load_verifications(self) -> Dict:
        """Load existing verifications if they exist"""
        if os.path.exists(self.verification_file):
            with open(self.verification_file, 'r') as f:
                return json.load(f)
        else:
            return {
                "file_info": {
                    "results_file": self.results_file,
                    "audio_file": self.audio_file,
                    "created": datetime.now().isoformat(),
                    "total_utterances": self.results['metadata']['total_utterances']
                },
                "speaker_summary": {},
                "verified_segments": [],
                "verification_progress": {
                    "total_verified": 0,
                    "high_confidence": 0,
                    "medium_confidence": 0,
                    "low_confidence": 0,
                    "wrong_speaker": 0
                }
            }
    
    def play_audio_segment(self, start_ms: int, end_ms: int, padding_ms: int = 500):
        """Play audio segment using ffplay"""
        start_sec = max(0, (start_ms - padding_ms) / 1000)
        duration_sec = ((end_ms - start_ms) + (2 * padding_ms)) / 1000
        
        cmd = [
            'ffplay',
            '-nodisp',
            '-autoexit',
            '-ss', str(start_sec),
            '-t', str(duration_sec),
            self.audio_file
        ]
        
        subprocess.run(cmd, stderr=subprocess.DEVNULL)
    
    def verify_speaker_segments(self, speaker_id: str, sample_size: int = 10):
        """Verify segments for a specific speaker"""
        print(f"\n{'='*60}")
        print(f"🔍 VERIFYING SPEAKER {speaker_id}")
        print(f"{'='*60}")
        
        # Get speaker data
        speaker_data = self.results['speakers'].get(speaker_id)
        if not speaker_data:
            print(f"❌ Speaker {speaker_id} not found!")
            return
        
        # Show speaker summary
        print(f"📊 Speaker Statistics:")
        print(f"  - Speaking time: {speaker_data['speaking_percentage']:.1f}%")
        print(f"  - Utterances: {speaker_data['utterance_count']}")
        print(f"  - Family words used: {', '.join(speaker_data.get('family_words_used', [])[:5])}")
        
        # Get all utterances for this speaker
        speaker_utterances = [
            u for u in self.results['timeline'] 
            if u['speaker'] == speaker_id
        ]
        
        # Sample utterances evenly across the timeline
        if len(speaker_utterances) <= sample_size:
            segments_to_verify = speaker_utterances
        else:
            step = len(speaker_utterances) // sample_size
            segments_to_verify = speaker_utterances[::step][:sample_size]
        
        print(f"\n🎯 Verifying {len(segments_to_verify)} sample segments...")
        print("\n" + "-"*40)
        
        verified_count = 0
        for i, segment in enumerate(segments_to_verify, 1):
            print(f"\n📍 Segment {i}/{len(segments_to_verify)}")
            print(f"⏱️  Time: {segment['start_ms']/1000:.1f}s - {segment['end_ms']/1000:.1f}s")
            print(f"💬 Text: \"{segment['text']}\"")
            print("\n🔊 Playing audio...")
            
            self.play_audio_segment(segment['start_ms'], segment['end_ms'])
            
            # Get verification
            print("\n👤 Who is speaking?")
            # Display speaker list in two columns
            for i in range(0, len(self.known_speakers), 2):
                left = f"{i}: {self.known_speakers[i]}"
                right = f"{i+1}: {self.known_speakers[i+1]}" if i+1 < len(self.known_speakers) else ""
                print(f"  {left:<25} {right}")
            print("  N: Add new speaker name")
            print("  R: Replay audio")
            print("  S: Skip this segment")
            
            while True:
                choice = input("\nYour choice: ").strip().upper()
                
                if choice == 'R':
                    print("🔊 Replaying...")
                    print(f"💬 Text: \"{segment['text']}\"")
                    self.play_audio_segment(segment['start_ms'], segment['end_ms'])
                    continue
                elif choice == 'S':
                    print("⏭️  Skipping segment")
                    break
                elif choice == 'N':
                    # Add new speaker
                    new_name = input("Enter new speaker name: ").strip()
                    if new_name and new_name not in self.known_speakers:
                        # Insert before "Other" and "WRONG_SPEAKER" 
                        insert_pos = len(self.known_speakers) - 2
                        self.known_speakers.insert(insert_pos, new_name)
                        
                        # Save updated list to persistent storage
                        self.save_known_speakers()
                        
                        print(f"✅ Added '{new_name}' to speaker list (saved)")
                        
                        # Show updated list in two columns
                        print("\n👤 Updated speaker list:")
                        for i in range(0, len(self.known_speakers), 2):
                            left = f"{i}: {self.known_speakers[i]}"
                            right = f"{i+1}: {self.known_speakers[i+1]}" if i+1 < len(self.known_speakers) else ""
                            print(f"  {left:<25} {right}")
                    else:
                        print("❌ Invalid name or speaker already exists")
                    continue
                
                try:
                    speaker_idx = int(choice)
                    if 0 <= speaker_idx < len(self.known_speakers):
                        identified_speaker = self.known_speakers[speaker_idx]
                        
                        # Get confidence
                        confidence = input("Confidence (H)igh/(M)edium/(L)ow [H]: ").strip().upper()
                        confidence_map = {'H': 'HIGH', 'M': 'MEDIUM', 'L': 'LOW'}
                        confidence = confidence_map.get(confidence, 'HIGH')  # Default to HIGH if empty
                        
                        # Save verification
                        self.save_segment_verification(
                            speaker_id, segment, identified_speaker, confidence
                        )
                        verified_count += 1
                        print(f"✅ Marked as {identified_speaker} ({confidence} confidence)")
                        break
                except ValueError:
                    print("❌ Invalid choice, try again")
        
        print(f"\n✨ Verified {verified_count} segments for Speaker {speaker_id}")
        self.update_speaker_summary(speaker_id)
    
    def save_segment_verification(self, assembly_speaker: str, segment: Dict, 
                                  actual_speaker: str, confidence: str):
        """Save a verified segment"""
        verification = {
            "assembly_speaker": assembly_speaker,
            "actual_speaker": actual_speaker,
            "confidence": confidence,
            "start_ms": segment['start_ms'],
            "end_ms": segment['end_ms'],
            "text": segment['text'],
            "verified_at": datetime.now().isoformat(),
            "is_correct": assembly_speaker == actual_speaker or actual_speaker not in ["WRONG_SPEAKER"]
        }
        
        self.verifications['verified_segments'].append(verification)
        
        # Update progress
        self.verifications['verification_progress']['total_verified'] += 1
        self.verifications['verification_progress'][f"{confidence.lower()}_confidence"] += 1
        if actual_speaker == "WRONG_SPEAKER":
            self.verifications['verification_progress']['wrong_speaker'] += 1
        
        # Save immediately
        self.save_verifications()
    
    def update_speaker_summary(self, speaker_id: str):
        """Update summary for a speaker based on verifications"""
        speaker_verifications = [
            v for v in self.verifications['verified_segments']
            if v['assembly_speaker'] == speaker_id
        ]
        
        if not speaker_verifications:
            return
        
        # Count actual speakers
        actual_speaker_counts = {}
        for v in speaker_verifications:
            speaker = v['actual_speaker']
            if speaker not in actual_speaker_counts:
                actual_speaker_counts[speaker] = 0
            actual_speaker_counts[speaker] += 1
        
        # Determine most likely identity
        most_likely = max(actual_speaker_counts.items(), key=lambda x: x[1])
        
        self.verifications['speaker_summary'][speaker_id] = {
            "most_likely_identity": most_likely[0],
            "confidence": f"{(most_likely[1] / len(speaker_verifications)) * 100:.0f}%",
            "verification_breakdown": actual_speaker_counts,
            "total_verified": len(speaker_verifications)
        }
        
        self.save_verifications()
    
    def save_verifications(self):
        """Save verifications to file"""
        with open(self.verification_file, 'w') as f:
            json.dump(self.verifications, f, indent=2)
    
    def show_speaker_list(self):
        """Display the speaker list in two columns"""
        print(f"\n👥 Available Speakers:")
        print("-" * 50)
        
        # Display in two columns
        for i in range(0, len(self.known_speakers), 2):
            left = f"{i}: {self.known_speakers[i]}"
            right = f"{i+1}: {self.known_speakers[i+1]}" if i+1 < len(self.known_speakers) else ""
            print(f"  {left:<25} {right}")

    def show_verification_summary(self):
        """Show current verification status"""
        print(f"\n{'='*60}")
        print(f"📊 VERIFICATION SUMMARY: {self.base_name}")
        print(f"{'='*60}")
        
        progress = self.verifications['verification_progress']
        total_utterances = self.verifications['file_info']['total_utterances']
        
        print(f"\n📈 Progress:")
        print(f"  - Total utterances: {total_utterances}")
        print(f"  - Verified: {progress['total_verified']} ({progress['total_verified']/total_utterances*100:.1f}%)")
        print(f"  - High confidence: {progress['high_confidence']}")
        print(f"  - Wrong speaker: {progress['wrong_speaker']}")
        
        if self.verifications['speaker_summary']:
            print(f"\n👥 Speaker Identifications:")
            for speaker_id, summary in self.verifications['speaker_summary'].items():
                print(f"\n  Speaker {speaker_id}:")
                print(f"    Most likely: {summary['most_likely_identity']} ({summary['confidence']})")
                print(f"    Based on: {summary['total_verified']} verifications")
    
    def extract_verified_voice_samples(self, actual_speaker: str, min_confidence: str = "MEDIUM"):
        """Extract audio samples for a verified speaker"""
        confidence_levels = {"LOW": 1, "MEDIUM": 2, "HIGH": 3}
        min_level = confidence_levels[min_confidence]
        
        # Get verified segments for this speaker
        segments = [
            v for v in self.verifications['verified_segments']
            if v['actual_speaker'] == actual_speaker 
            and confidence_levels[v['confidence']] >= min_level
        ]
        
        if not segments:
            print(f"❌ No verified segments found for {actual_speaker}")
            return
        
        print(f"\n🎯 Found {len(segments)} verified segments for {actual_speaker}")
        
        # Create output directory in organized samples structure
        output_dir = f"/photos/voices/samples/by_person/{actual_speaker}"
        os.makedirs(output_dir, exist_ok=True)
        
        # Extract each segment
        for i, segment in enumerate(segments[:10]):  # Limit to 10 samples
            output_file = f"{output_dir}/{self.base_name}_sample_{i+1}.wav"
            
            cmd = [
                'ffmpeg', '-y',
                '-i', self.audio_file,
                '-ss', str(segment['start_ms'] / 1000),
                '-t', str((segment['end_ms'] - segment['start_ms']) / 1000),
                '-acodec', 'pcm_s16le',
                '-ar', '16000',
                output_file
            ]
            
            subprocess.run(cmd, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
            print(f"  ✅ Extracted: {output_file}")
            print(f"     Text: \"{segment['text'][:50]}...\"")
        
        print(f"\n✨ Voice samples saved to: {output_dir}/")
    
    def extract_all_verified_voice_samples(self, min_confidence: str = "MEDIUM"):
        """Extract voice samples for all verified speakers"""
        confidence_levels = {"LOW": 1, "MEDIUM": 2, "HIGH": 3}
        min_level = confidence_levels[min_confidence]
        
        # Get all unique speakers from verified segments
        verified_speakers = set()
        for segment in self.verifications['verified_segments']:
            if (confidence_levels[segment['confidence']] >= min_level and 
                segment['actual_speaker'] not in ['Other', 'WRONG_SPEAKER']):
                verified_speakers.add(segment['actual_speaker'])
        
        if not verified_speakers:
            print(f"❌ No verified speakers found with {min_confidence}+ confidence")
            return
        
        print(f"\n{'='*60}")
        print(f"🎯 EXTRACTING ALL VERIFIED VOICE SAMPLES")
        print(f"{'='*60}")
        print(f"📋 Found {len(verified_speakers)} verified speakers:")
        
        for speaker in sorted(verified_speakers):
            # Count segments for this speaker
            segments = [
                v for v in self.verifications['verified_segments']
                if v['actual_speaker'] == speaker 
                and confidence_levels[v['confidence']] >= min_level
            ]
            print(f"  - {speaker}: {len(segments)} segments")
        
        print(f"\n🚀 Starting extraction...")
        
        total_extracted = 0
        for speaker in sorted(verified_speakers):
            print(f"\n🎵 Extracting samples for {speaker}...")
            
            # Get verified segments for this speaker
            segments = [
                v for v in self.verifications['verified_segments']
                if v['actual_speaker'] == speaker 
                and confidence_levels[v['confidence']] >= min_level
            ]
            
            if not segments:
                continue
            
            # Create output directory
            output_dir = f"/photos/voices/samples/by_person/{speaker}"
            os.makedirs(output_dir, exist_ok=True)
            
            # Extract each segment (limit to 10 per speaker)
            for i, segment in enumerate(segments[:10]):
                output_file = f"{output_dir}/{self.base_name}_sample_{i+1}.wav"
                
                cmd = [
                    'ffmpeg', '-y',
                    '-i', self.audio_file,
                    '-ss', str(segment['start_ms'] / 1000),
                    '-t', str((segment['end_ms'] - segment['start_ms']) / 1000),
                    '-acodec', 'pcm_s16le',
                    '-ar', '16000',
                    output_file
                ]
                
                subprocess.run(cmd, stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)
                total_extracted += 1
            
            print(f"  ✅ Extracted {min(len(segments), 10)} samples for {speaker}")
        
        print(f"\n{'='*60}")
        print(f"🎉 EXTRACTION COMPLETE!")
        print(f"{'='*60}")
        print(f"📊 Total samples extracted: {total_extracted}")
        print(f"📁 Samples organized in: /photos/voices/samples/by_person/")
        print(f"🎯 Ready for Legacy Capture project!")
    
    def show_completion_status(self):
        """Show completion status for all speakers"""
        print(f"\n{'='*60}")
        print(f"📋 VERIFICATION COMPLETION STATUS")
        print(f"{'='*60}")
        
        # Get all speakers from Assembly AI results
        all_speakers = list(self.results['speakers'].keys())
        total_speakers = len(all_speakers)
        
        # Minimum verification thresholds
        MIN_VERIFICATIONS = 5  # Minimum segments to verify per speaker
        COVERAGE_THRESHOLD = 80  # Percent of speaking time that should be verified
        
        completed_speakers = 0
        partially_completed = 0
        unverified_speakers = 0
        
        print(f"📊 Total speakers detected: {total_speakers}")
        print(f"🎯 Verification target: {MIN_VERIFICATIONS}+ segments per speaker")
        print(f"\n📈 Speaker-by-Speaker Status:")
        print("-" * 50)
        
        for speaker_id in sorted(all_speakers):
            speaker_data = self.results['speakers'][speaker_id]
            speaking_pct = speaker_data['speaking_percentage']
            utterance_count = speaker_data['utterance_count']
            
            # Count verified segments for this speaker
            verified_segments = [
                v for v in self.verifications['verified_segments']
                if v['assembly_speaker'] == speaker_id
            ]
            verified_count = len(verified_segments)
            
            # Determine status
            if verified_count >= MIN_VERIFICATIONS:
                status = "✅ COMPLETE"
                completed_speakers += 1
                status_color = ""
            elif verified_count > 0:
                status = "🔶 PARTIAL"
                partially_completed += 1
                status_color = ""
            else:
                status = "❌ NOT STARTED"
                unverified_speakers += 1
                status_color = ""
            
            # Show most likely identity if verified
            identity = "Unknown"
            if speaker_id in self.verifications['speaker_summary']:
                identity = self.verifications['speaker_summary'][speaker_id]['most_likely_identity']
                confidence = self.verifications['speaker_summary'][speaker_id]['confidence']
                identity = f"{identity} ({confidence})"
            
            print(f"  Speaker {speaker_id}: {status}")
            print(f"    Speaking time: {speaking_pct:.1f}% ({utterance_count} utterances)")
            print(f"    Verified: {verified_count}/{utterance_count} segments")
            print(f"    Identity: {identity}")
            print()
        
        # Overall completion summary
        completion_pct = (completed_speakers / total_speakers) * 100
        
        print(f"{'='*60}")
        print(f"🎉 OVERALL COMPLETION: {completion_pct:.1f}%")
        print(f"{'='*60}")
        print(f"✅ Completed speakers: {completed_speakers}/{total_speakers}")
        print(f"🔶 Partially verified: {partially_completed}")
        print(f"❌ Not started: {unverified_speakers}")
        
        if completed_speakers == total_speakers:
            print(f"\n🎊 ALL SPEAKERS VERIFIED! 🎊")
            print(f"🚀 Ready to extract voice samples with option 'A'")
        elif unverified_speakers > 0:
            print(f"\n📋 Next steps:")
            print(f"  - Review unverified speakers: {[s for s in all_speakers if not any(v['assembly_speaker'] == s for v in self.verifications['verified_segments'])]}")
            print(f"  - Consider skipping very short speakers (<2% speaking time)")
        else:
            print(f"\n📋 Next steps:")
            print(f"  - Complete partial verifications to reach {MIN_VERIFICATIONS}+ segments each")
            print(f"  - Focus on speakers with higher speaking percentages first")


def main():
    """Interactive speaker verification"""
    import sys
    
    if len(sys.argv) < 3:
        print("Usage: python verify_speakers.py <results.json> <audio.wav>")
        print("\nExample:")
        print("  python verify_speakers.py xmas-didis-2017_enhanced_analysis.json xmas-didis-2017.wav")
        sys.exit(1)
    
    results_file = sys.argv[1]
    audio_file = sys.argv[2]
    
    if not os.path.exists(results_file):
        print(f"❌ Results file not found: {results_file}")
        sys.exit(1)
    
    if not os.path.exists(audio_file):
        print(f"❌ Audio file not found: {audio_file}")
        sys.exit(1)
    
    verifier = SpeakerVerifier(results_file, audio_file)
    
    while True:
        print(f"\n{'='*60}")
        print("🎄 SPEAKER VERIFICATION TOOL")
        print(f"{'='*60}")
        print(f"📁 File: {verifier.base_name}")
        print(f"🗣️  Speakers: {verifier.results['metadata']['speakers_detected']}")
        
        verifier.show_verification_summary()
        
        # Calculate overall progress summary
        speaker_list = list(verifier.results['speakers'].keys())
        completed_count = 0
        partial_count = 0
        not_started_count = 0
        
        for speaker_id in speaker_list:
            verified_count = len([
                v for v in verifier.verifications['verified_segments']
                if v['assembly_speaker'] == speaker_id
            ])
            if verified_count >= 5:
                completed_count += 1
            elif verified_count > 0:
                partial_count += 1
            else:
                not_started_count += 1
        
        total_speakers = len(speaker_list)
        completion_pct = (completed_count / total_speakers) * 100 if total_speakers > 0 else 0
        
        print(f"\n🗣️  Detected Speakers ({completion_pct:.0f}% complete):")
        print(f"     ✅ {completed_count} complete  🔶 {partial_count} partial  ❌ {not_started_count} not started")
        print("-" * 70)
        for i, speaker_id in enumerate(speaker_list, 1):
            speaker_data = verifier.results['speakers'][speaker_id]
            
            # Check verification status
            verified_segments = [
                v for v in verifier.verifications['verified_segments']
                if v['assembly_speaker'] == speaker_id
            ]
            verified_count = len(verified_segments)
            
            # Determine status indicator
            if verified_count >= 5:  # Minimum verification threshold
                status = "✅"
                status_text = f"DONE ({verified_count})"
            elif verified_count > 0:
                status = "🔶"
                status_text = f"PARTIAL ({verified_count})"
            else:
                status = "❌"
                status_text = "NOT STARTED"
            
            # Show most likely identity if available
            identity = ""
            if speaker_id in verifier.verifications['speaker_summary']:
                likely_name = verifier.verifications['speaker_summary'][speaker_id]['most_likely_identity']
                confidence = verifier.verifications['speaker_summary'][speaker_id]['confidence']
                identity = f" → {likely_name} ({confidence})"
            
            print(f"  {i}: Speaker {speaker_id} ({speaker_data['speaking_percentage']:.1f}%) {status} {status_text}{identity}")
        
        print("\n📋 Options:")
        print("  1-9...: Verify specific speaker (by number above)")
        print("  U: Start with first unverified speaker")
        print("  X: Extract voice samples for one speaker")
        print("  A: Extract ALL verified voice samples")
        print("  C: Show completion status")
        print("  N: Add new speaker to list")
        print("  S: Show full summary")
        print("  Q: Quit")
        
        choice = input("\nYour choice: ").strip().upper()
        
        if choice == 'Q':
            break
        elif choice == 'U':
            # Find first unverified speaker
            for speaker_id in speaker_list:
                verified_count = len([
                    v for v in verifier.verifications['verified_segments']
                    if v['assembly_speaker'] == speaker_id
                ])
                if verified_count == 0:
                    print(f"\n🎯 Starting with first unverified speaker: {speaker_id}")
                    verifier.verify_speaker_segments(speaker_id)
                    break
            else:
                print("🎉 All speakers have been started! Use 'C' to see completion status.")
        elif choice == 'X':
            speaker = input("Extract samples for which speaker? ").strip()
            verifier.extract_verified_voice_samples(speaker)
        elif choice == 'A':
            verifier.extract_all_verified_voice_samples()
        elif choice == 'C':
            verifier.show_completion_status()
        elif choice == 'N':
            # Add new speaker from main menu
            new_name = input("Enter new speaker name: ").strip()
            if new_name and new_name not in verifier.known_speakers:
                # Insert before "Other" and "WRONG_SPEAKER" 
                insert_pos = len(verifier.known_speakers) - 2
                verifier.known_speakers.insert(insert_pos, new_name)
                
                # Save updated list to persistent storage
                verifier.save_known_speakers()
                
                print(f"✅ Added '{new_name}' to speaker list (saved)")
                print(f"📝 You can now use option {insert_pos} to select '{new_name}' during verification")
                
                # Show updated speaker list immediately
                verifier.show_speaker_list()
            else:
                print("❌ Invalid name or speaker already exists")
        elif choice == 'S':
            verifier.show_verification_summary()
        else:
            # Try to parse as speaker number
            try:
                speaker_num = int(choice)
                speaker_list = list(verifier.results['speakers'].keys())
                if 1 <= speaker_num <= len(speaker_list):
                    speaker_id = speaker_list[speaker_num - 1]
                    verifier.verify_speaker_segments(speaker_id)
                else:
                    print(f"❌ Invalid speaker number. Choose 1-{len(speaker_list)}")
            except ValueError:
                print(f"❌ Invalid choice. Use numbers 1-{len(list(verifier.results['speakers'].keys()))} or letters X, A, N, S, Q")

if __name__ == "__main__":
    main()