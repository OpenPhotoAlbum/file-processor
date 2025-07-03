#!/usr/bin/env python3
"""
Enhanced Assembly AI with Family Vocabulary Boost
Optimized for Stephen's Christmas videos and family voice recognition
"""
import assemblyai as aai
import json
import os
import sys
from typing import List, Dict, Any

# Set your API key
aai.settings.api_key = "914b8c3a97934043a374d150d65f99a9"

# Family-specific vocabulary for word boosting
FAMILY_VOCABULARY = {
    "names": [
        # Immediate family
        "Stephen", "Stevie",
        "David", "Dave",
        "Mom", "Mommy", "Patty", "Patricia",
        "Dad", "Daddy", "Steve",
        
        # Extended family from video titles
        "Grandma", "Grammy", "Nana", "Granny",
        "Grandpa", "Papa", "Pop Pop", "Grampy",
        "DIDI", "Didi", "Aunt Didi", "DiDi",
        "Jim Jim", "Uncle Jim", "Jimmy",
        "Dorothy", "Grandma Dorothy", "Dot",
        "Aunt Mary", "Mary", "Erica", "Debbie",
        "Eddie", "Johnny", "John", "Mike", "Uncle Mike",
        "Billy", "Roxanne",
        # "Aunt Mary", "Uncle Bob", "Aunt Karen",
        # "Austen", "Austin", "Cayce", "Christian", "Henry", "Eli",
        
        # Common family nicknames
        "honey", "sweetie", "buddy", "kiddo", "baby", "bud"
    ],
    
    "locations": [
        # Primary houses from master file
        "Haverhill", # "Lawrence", "Sandown", "Plaistow", "Exeter",
        # "DIDI's house", "Didi's house", "My house", "our house", "home",
        # "Grandma's house", "Grammy's house",
        
        # Specific places from video collection
        # "Fish Tale Diner", "Salisbury Beach", "Salisbury",
        # "Crowell School", "Holy Angels", "TRHS",
        # "Weaverville", "North Carolina", "Austin", "Texas",
        
        # Regional terms
        "Massachusetts", "Mass", # "New Hampshire", "Mass", "New England"
    ],
    
    "christmas_terms": [
        # Christmas specific
        "Santa", "Santa Claus", "stockings", "presents", "gifts",
        "Christmas tree", "tree", "ornaments", "decorations",
        "midnight Mass", "Christmas Eve", "Christmas morning",
        "Christmas Day", "Xmas", "holiday", "holidays",
        
        # Christmas food/traditions
        "cookies", "sugar cookies", "Christmas cookies",
        "almond extract", "vanilla", "butter", "flour",
        "ham", "turkey", "stuffing", "cranberry", "gravy",
        "wrapping", "wrapping paper", "ribbons", "bows",
        
        # Common Christmas phrases
        "Merry Christmas", "Happy Christmas", "Happy New Year",
        "God bless", "bless you", "thank you Jesus",
        "look what Santa brought", "open it", "tear it open",
        "what is it", "oh my goodness", "wow", "beautiful"
    ],
    
    "family_phrases": [
        # Time/memory markers
        "remember when", "last year", "when you were little",
        "when you were small", "back in my day", "years ago",
        "always used to", "every year", "tradition",
        
        # Common family expressions
        "come here", "come see", "look at this", "watch this",
        "be careful", "careful now", "hold on", "wait a minute",
        "let me see", "show me", "can you see", "look over here",
        
        # Recording/camera phrases
        "say cheese", "smile", "look at the camera",
        "let me get the camera", "hold still", "one more",
        "get closer", "everybody together", "say hi"
    ],
    
    "emotional_words": [
        # Family emotions
        "love", "beautiful", "wonderful", "precious", "sweet",
        "adorable", "cute", "handsome", "pretty", "gorgeous",
        "amazing", "incredible", "special", "perfect",
        "excited", "happy", "surprised", "delighted"
    ]
}

def get_all_boost_words() -> List[str]:
    """
    Combine all vocabulary categories into one boost list
    """
    boost_words = []
    for category in FAMILY_VOCABULARY.values():
        boost_words.extend(category)
    
    # Remove duplicates while preserving order
    seen = set()
    unique_boost_words = []
    for word in boost_words:
        if word.lower() not in seen:
            seen.add(word.lower())
            unique_boost_words.append(word)
    
    return unique_boost_words

def enhanced_transcribe(audio_file_path: str, expected_speakers: int = None) -> aai.Transcript:
    """
    Transcribe with enhanced family-specific configuration
    """
    print(f"🎄 Enhanced Processing: {audio_file_path}")
    print("📤 Uploading with family vocabulary boost...")
    
    boost_words = get_all_boost_words()
    print(f"🚀 Boosting {len(boost_words)} family-specific words")
    
    # Enhanced configuration
    config = aai.TranscriptionConfig(
        # Core speaker features
        speaker_labels=True,
        speakers_expected=expected_speakers,
        
        # Family vocabulary boost
        word_boost=boost_words,
        boost_param="high",
        
        # Enhanced features
        auto_chapters=True,
        auto_highlights=True,
        sentiment_analysis=True,
        
        # Audio processing
        speech_model=aai.SpeechModel.best,  # Use best available model
        
        # Language settings
        language_code="en_us",
        
        # Additional context - custom_spelling format: from -> to (single word only)
        custom_spelling={
            "stevie": "Stevie",
            "didi": "DIDI",
            # "jimjim": "Jim Jim",  # Can't use multi-word replacements
            "haverhill": "Haverhill", 
            "sandown": "Sandown",
            "patty": "Patty",
            "patricia": "Patricia"
        }
    )
    
    # Create transcriber
    transcriber = aai.Transcriber()
    
    # Upload and transcribe
    transcript = transcriber.transcribe(audio_file_path, config)
    
    if transcript.status == aai.TranscriptStatus.error:
        print(f"❌ Error: {transcript.error}")
        return None
    
    print("✅ Enhanced transcription complete!")
    print(f"🗣️  Detected {len(set([utterance.speaker for utterance in transcript.utterances]))} speakers")
    
    return transcript

def save_enhanced_results(transcript: aai.Transcript, output_file: str) -> Dict[str, Any]:
    """
    Save enhanced results with additional analysis
    """
    speakers_detected = set([utterance.speaker for utterance in transcript.utterances])
    
    results = {
        "metadata": {
            "processing_type": "enhanced_family_vocabulary",
            "duration_ms": transcript.audio_duration,
            "speakers_detected": len(speakers_detected),
            "total_utterances": len(transcript.utterances),
            "boost_words_used": len(get_all_boost_words()),
            "confidence": transcript.confidence if hasattr(transcript, 'confidence') else None
        },
        "speakers": {},
        "timeline": [],
        "family_terms_found": [],
        "highlights": [],
        "sentiment": {}
    }
    
    # Analyze family vocabulary usage
    family_words_found = set()
    boost_words_lower = [word.lower() for word in get_all_boost_words()]
    
    # Process each utterance
    for utterance in transcript.utterances:
        speaker = utterance.speaker
        
        # Initialize speaker if new
        if speaker not in results["speakers"]:
            results["speakers"][speaker] = {
                "total_time_ms": 0,
                "utterance_count": 0,
                "sample_quotes": [],
                "family_words_used": [],
                "speaking_percentage": 0
            }
        
        # Update speaker stats
        speaking_time = utterance.end - utterance.start
        results["speakers"][speaker]["total_time_ms"] += speaking_time
        results["speakers"][speaker]["utterance_count"] += 1
        
        # Collect sample quotes (first 5 per speaker)
        if len(results["speakers"][speaker]["sample_quotes"]) < 5:
            results["speakers"][speaker]["sample_quotes"].append({
                "text": utterance.text,
                "timestamp": f"{utterance.start/1000:.1f}s-{utterance.end/1000:.1f}s"
            })
        
        # Find family vocabulary in this utterance
        words_in_utterance = utterance.text.lower().split()
        for word in words_in_utterance:
            if word in boost_words_lower:
                family_words_found.add(word)
                if word not in results["speakers"][speaker]["family_words_used"]:
                    results["speakers"][speaker]["family_words_used"].append(word)
        
        # Add to timeline
        results["timeline"].append({
            "speaker": speaker,
            "start_ms": utterance.start,
            "end_ms": utterance.end,
            "duration_ms": speaking_time,
            "text": utterance.text
        })
    
    # Calculate speaking percentages
    total_duration = transcript.audio_duration
    print(f"🔍 Debug: Total duration = {total_duration} ms ({total_duration/1000/60:.1f} minutes)")
    
    total_speaking_time = sum(speaker_data["total_time_ms"] for speaker_data in results["speakers"].values())
    print(f"🔍 Debug: Total speaking time = {total_speaking_time} ms ({total_speaking_time/1000/60:.1f} minutes)")
    
    for speaker_data in results["speakers"].values():
        if total_duration > 0:
            speaker_data["speaking_percentage"] = (speaker_data["total_time_ms"] / total_duration) * 100
        else:
            speaker_data["speaking_percentage"] = 0
            print(f"⚠️  Warning: Total duration is 0, cannot calculate percentages")
    
    # Store family terms found
    results["family_terms_found"] = sorted(list(family_words_found))
    
    # Add highlights if available
    if hasattr(transcript, 'auto_highlights') and transcript.auto_highlights:
        results["highlights"] = [
            {
                "text": highlight.text,
                "count": highlight.count,
                "rank": highlight.rank
            }
            for highlight in transcript.auto_highlights.results
        ]
    
    # Add sentiment if available
    if hasattr(transcript, 'sentiment_analysis') and transcript.sentiment_analysis:
        # Handle different sentiment analysis formats
        if isinstance(transcript.sentiment_analysis, list):
            results["sentiment"] = {
                "results": [
                    {
                        "text": result.text if hasattr(result, 'text') else "",
                        "sentiment": result.sentiment if hasattr(result, 'sentiment') else "",
                        "confidence": result.confidence if hasattr(result, 'confidence') else 0
                    }
                    for result in transcript.sentiment_analysis
                ]
            }
        else:
            results["sentiment"] = {
                "overall": transcript.sentiment_analysis.overall if hasattr(transcript.sentiment_analysis, 'overall') else None,
                "by_sentence": []
            }
    
    # Save to file
    with open(output_file, 'w') as f:
        json.dump(results, f, indent=2)
    
    return results

def print_enhanced_summary(results: Dict[str, Any]):
    """
    Print enhanced summary with family-specific insights
    """
    print("\n" + "="*70)
    print("🎄 ENHANCED CHRISTMAS 1989 VOICE ANALYSIS")
    print("="*70)
    
    metadata = results["metadata"]
    duration_minutes = metadata["duration_ms"] / 1000 / 60
    
    print(f"📊 Duration: {duration_minutes:.1f} minutes")
    print(f"👥 Speakers detected: {metadata['speakers_detected']}")
    print(f"💬 Total conversations: {metadata['total_utterances']}")
    print(f"🚀 Family words boosted: {metadata['boost_words_used']}")
    print(f"✨ Family terms found: {len(results['family_terms_found'])}")
    
    print("\n🗣️  ENHANCED SPEAKER BREAKDOWN:")
    print("-" * 50)
    
    # Sort speakers by speaking time
    sorted_speakers = sorted(
        results["speakers"].items(),
        key=lambda x: x[1]["total_time_ms"],
        reverse=True
    )
    
    for speaker_id, data in sorted_speakers:
        speak_time_min = data["total_time_ms"] / 1000 / 60
        percentage = data["speaking_percentage"]
        
        print(f"\n{speaker_id}:")
        print(f"  ⏱️  Speaking time: {speak_time_min:.1f} min ({percentage:.1f}%)")
        print(f"  💬 Utterances: {data['utterance_count']}")
        print(f"  🏠 Family words used: {', '.join(data['family_words_used'][:5])}")
        print(f"  📝 Sample quotes:")
        for i, quote in enumerate(data["sample_quotes"][:2], 1):
            print(f"    {i}. \"{quote['text'][:60]}{'...' if len(quote['text']) > 60 else ''}\"")
            print(f"       [{quote['timestamp']}]")
    
    print(f"\n🏠 FAMILY VOCABULARY DETECTED:")
    print("-" * 30)
    for term in results["family_terms_found"][:20]:  # Show first 20
        print(f"  ✓ {term}")
    if len(results["family_terms_found"]) > 20:
        print(f"  ... and {len(results['family_terms_found']) - 20} more")
    
    if results["highlights"]:
        print(f"\n⭐ AUTO HIGHLIGHTS:")
        print("-" * 20)
        for highlight in results["highlights"][:5]:
            print(f"  🎯 \"{highlight['text']}\" (mentioned {highlight['count']} times)")
    
    print("\n🎯 NEXT STEPS:")
    print("1. Compare with baseline results")
    print("2. Listen to sample segments to identify speakers")
    print("3. Map Speaker A/B/C to family member names")
    print("4. Extract voice samples for Legacy Capture project")

if __name__ == "__main__":
    # Check for command line argument
    if len(sys.argv) < 2:
        print("Usage: python enhanced_assembly_ai.py <audio_file>")
        print("\nExample:")
        print("  python enhanced_assembly_ai.py xmas-didis-2017.wav")
        print("  python enhanced_assembly_ai.py /path/to/audio.mp3")
        sys.exit(1)
    
    # Get audio file from command line
    audio_file = sys.argv[1]
    
    # Generate output filename and organize in transcripts directory
    base_name = os.path.splitext(os.path.basename(audio_file))[0]
    
    # Create transcripts directory structure
    transcripts_dir = "/photos/voices/transcripts/assembly_ai"
    os.makedirs(transcripts_dir, exist_ok=True)
    
    output_file = os.path.join(transcripts_dir, f"{base_name}_enhanced_analysis.json")
    
    if not os.path.exists(audio_file):
        print(f"❌ Audio file not found: {audio_file}")
        print("Available files:")
        for f in os.listdir("."):
            if f.endswith((".wav", ".mp3", ".mp4")):
                print(f"  📁 {f}")
        sys.exit(1)
    
    print("🚀 Starting Enhanced Assembly AI Analysis...")
    print(f"📁 Input: {audio_file}")
    print(f"📁 Output: {output_file}")
    print("⚠️  Enhanced processing with family vocabulary boost")
    print("💰 Cost: ~$0.38 for 62 minutes")
    
    # Ask for speaker hint
    try:
        expected = input("\n🤔 How many speakers do you expect? (press Enter to auto-detect): ").strip()
        expected_speakers = int(expected) if expected else None
    except ValueError:
        expected_speakers = None
    
    print(f"📋 Expected speakers: {expected_speakers or 'Auto-detect'}")
    
    # Process the audio
    transcript = enhanced_transcribe(audio_file, expected_speakers)
    
    if transcript:
        # Save and display results
        results = save_enhanced_results(transcript, output_file)
        print_enhanced_summary(results)
        
        print(f"\n📁 Enhanced results saved to: {output_file}")
        print("🎄 Ready to compare with baseline and identify voices!")
    else:
        print("❌ Enhanced transcription failed")