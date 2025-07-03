#!/usr/bin/env python3
"""
Complete Video Processing Workflow
Streamlined pipeline from video to verified voice samples
"""
import os
import sys
import argparse
import subprocess
from pathlib import Path

def find_videos_by_pattern(pattern: str):
    """Find videos matching a pattern in the staging directory"""
    staging_dir = "/photos/staging/home-videos/home-videos"
    
    if os.path.isfile(pattern):
        # Direct file path provided
        return [pattern]
    
    # Search by pattern
    videos = []
    for root, dirs, files in os.walk(staging_dir):
        for file in files:
            if file.lower().endswith(('.mp4', '.mov', '.avi')):
                full_path = os.path.join(root, file)
                if pattern.lower() in file.lower() or pattern.lower() in full_path.lower():
                    videos.append(full_path)
    
    return sorted(videos)

def extract_audio_step(video_path: str, output_name: str = None, start_time: str = None, duration: str = None):
    """Step 1: Extract audio from video"""
    print(f"\n{'='*60}")
    print("🎬 STEP 1: AUDIO EXTRACTION")
    print(f"{'='*60}")
    
    cmd = ["python", "voice-processing/scripts/extract_audio.py", video_path]
    
    if output_name:
        cmd.extend(["--output", output_name])
    if start_time:
        cmd.extend(["--start", start_time])
    if duration:
        cmd.extend(["--duration", duration])
    
    result = subprocess.run(cmd, capture_output=True, text=True)
    
    if result.returncode != 0:
        print(f"❌ Audio extraction failed: {result.stderr}")
        return None
    
    # Parse output to find the extracted file path
    for line in result.stdout.split('\n'):
        if 'Output file:' in line:
            audio_file = line.split('Output file: ')[1].strip()
            print(f"✅ Audio extracted: {audio_file}")
            return audio_file
    
    return None

def transcribe_step(audio_file: str, expected_speakers: int = None):
    """Step 2: Transcribe with Assembly AI"""
    print(f"\n{'='*60}")
    print("🎄 STEP 2: ASSEMBLY AI TRANSCRIPTION")
    print(f"{'='*60}")
    
    cmd = ["python", "voice-processing/scripts/enhanced_assembly_ai.py", audio_file]
    
    # Run Assembly AI script
    process = subprocess.Popen(cmd, stdin=subprocess.PIPE, stdout=subprocess.PIPE, 
                             stderr=subprocess.PIPE, text=True)
    
    # Provide expected speakers input
    speakers_input = str(expected_speakers) if expected_speakers else ""
    stdout, stderr = process.communicate(input=speakers_input + "\n")
    
    if process.returncode != 0:
        print(f"❌ Transcription failed: {stderr}")
        return None
    
    # Find the output file
    base_name = os.path.splitext(os.path.basename(audio_file))[0]
    transcript_file = f"/photos/voices/transcripts/assembly_ai/{base_name}_enhanced_analysis.json"
    
    if os.path.exists(transcript_file):
        print(f"✅ Transcription completed: {transcript_file}")
        return transcript_file
    
    return None

def verify_step(transcript_file: str, audio_file: str, auto_mode: bool = False):
    """Step 3: Speaker verification (optional)"""
    print(f"\n{'='*60}")
    print("🔍 STEP 3: SPEAKER VERIFICATION")
    print(f"{'='*60}")
    
    if auto_mode:
        print("⏭️  Skipping verification (auto mode)")
        return True
    
    print("Starting interactive speaker verification...")
    print("Use the verification tool to identify speakers and extract voice samples.")
    print(f"\nCommand: python voice-processing/scripts/verify_speakers.py '{transcript_file}' '{audio_file}'")
    
    # Ask if user wants to run verification now
    response = input("\nRun speaker verification now? (y/n): ").strip().lower()
    
    if response == 'y':
        cmd = ["python", "voice-processing/scripts/verify_speakers.py", transcript_file, audio_file]
        subprocess.run(cmd)
        return True
    else:
        print("⏭️  Verification skipped - you can run it later")
        return True

def main():
    parser = argparse.ArgumentParser(
        description="Complete video processing workflow",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Process specific video
  python process_video.py "/photos/staging/home-videos/home-videos/1993/xmas 1993.mp4"
  
  # Process by pattern
  python process_video.py "christmas 1993" --speakers 8
  
  # Extract only first 5 minutes
  python process_video.py "xmas 1993" --duration 00:05:00 --auto
  
  # Process with custom name
  python process_video.py video.mp4 --output christmas-test --speakers 6
        """
    )
    
    parser.add_argument("video", help="Video file path or search pattern")
    parser.add_argument("-o", "--output", help="Custom output name")
    parser.add_argument("-s", "--start", help="Start time (HH:MM:SS)")
    parser.add_argument("-d", "--duration", help="Duration (HH:MM:SS)")
    parser.add_argument("--speakers", type=int, help="Expected number of speakers")
    parser.add_argument("--auto", action="store_true", help="Skip verification step")
    parser.add_argument("--list", action="store_true", help="List matching videos without processing")
    
    args = parser.parse_args()
    
    # Find videos
    videos = find_videos_by_pattern(args.video)
    
    if not videos:
        print(f"❌ No videos found matching: {args.video}")
        sys.exit(1)
    
    if args.list:
        print("📹 Found videos:")
        for video in videos:
            print(f"  {video}")
        sys.exit(0)
    
    if len(videos) > 1:
        print(f"📹 Found {len(videos)} videos:")
        for i, video in enumerate(videos, 1):
            print(f"  {i}. {video}")
        
        try:
            choice = int(input(f"\nSelect video (1-{len(videos)}): ")) - 1
            if 0 <= choice < len(videos):
                selected_video = videos[choice]
            else:
                print("❌ Invalid choice")
                sys.exit(1)
        except ValueError:
            print("❌ Invalid choice")
            sys.exit(1)
    else:
        selected_video = videos[0]
    
    print(f"\n🎯 Processing: {selected_video}")
    
    # Step 1: Extract audio
    audio_file = extract_audio_step(selected_video, args.output, args.start, args.duration)
    if not audio_file:
        print("❌ Failed at audio extraction step")
        sys.exit(1)
    
    # Step 2: Transcribe
    transcript_file = transcribe_step(audio_file, args.speakers)
    if not transcript_file:
        print("❌ Failed at transcription step")
        sys.exit(1)
    
    # Step 3: Verify (optional)
    verify_step(transcript_file, audio_file, args.auto)
    
    print(f"\n{'='*60}")
    print("🎉 PROCESSING COMPLETE!")
    print(f"{'='*60}")
    print(f"📁 Audio: {audio_file}")
    print(f"📁 Transcript: {transcript_file}")
    print(f"📁 Verification: Run manually or use --auto next time")
    
    print(f"\n🚀 Next steps:")
    print(f"1. Review transcript results")
    print(f"2. Run speaker verification if needed:")
    print(f"   python voice-processing/scripts/verify_speakers.py '{transcript_file}' '{audio_file}'")
    print(f"3. Extract voice samples from verified speakers")

if __name__ == "__main__":
    main()