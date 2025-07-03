#!/usr/bin/env python3
"""
Audio Extraction Tool for Video Files
Extracts audio optimized for Assembly AI with optional time ranges
"""
import os
import sys
import subprocess
import argparse
from datetime import datetime
from pathlib import Path
import json

def extract_year_from_path(video_path: str) -> str:
    """Extract year from video path if it contains a year folder"""
    path_parts = Path(video_path).parts
    for part in path_parts:
        if part.isdigit() and len(part) == 4 and 1900 <= int(part) <= 2100:
            return part
    return datetime.now().strftime("%Y")

def sanitize_filename(filename: str) -> str:
    """Sanitize filename for filesystem"""
    # Remove extension and replace problematic characters
    name = Path(filename).stem
    safe_chars = name.replace(" ", "-").replace("&", "and").replace("'", "")
    return safe_chars.lower()

def extract_audio(video_path: str, output_name: str = None, start_time: str = None, 
                 end_time: str = None, duration: str = None) -> dict:
    """
    Extract audio from video file
    
    Args:
        video_path: Path to video file
        output_name: Optional custom output name
        start_time: Optional start time (format: HH:MM:SS or seconds)
        end_time: Optional end time (format: HH:MM:SS or seconds)
        duration: Optional duration (format: HH:MM:SS or seconds)
    
    Returns:
        Dictionary with extraction results
    """
    # Validate input file
    if not os.path.exists(video_path):
        print(f"❌ Video file not found: {video_path}")
        return {"success": False, "error": "File not found"}
    
    # Determine output name and path
    if not output_name:
        output_name = sanitize_filename(os.path.basename(video_path))
    
    # Extract year from video path for organization
    year = extract_year_from_path(video_path)
    
    # Create output directory
    output_dir = f"/photos/voices/raw_audio/{year}"
    os.makedirs(output_dir, exist_ok=True)
    
    # Build output path
    output_file = os.path.join(output_dir, f"{output_name}.wav")
    
    # Build ffmpeg command
    cmd = ["ffmpeg", "-y"]  # -y to overwrite
    
    # Add input file
    cmd.extend(["-i", video_path])
    
    # Add time range options if specified
    if start_time:
        cmd.extend(["-ss", start_time])
    
    if end_time and not duration:
        # Calculate duration from start and end
        # This is complex with time formats, so we'll let ffmpeg handle it
        cmd.extend(["-to", end_time])
    elif duration:
        cmd.extend(["-t", duration])
    
    # Audio extraction options optimized for Assembly AI
    cmd.extend([
        "-vn",  # No video
        "-acodec", "pcm_s16le",  # 16-bit PCM
        "-ar", "16000",  # 16kHz sample rate
        "-ac", "1",  # Mono
        output_file
    ])
    
    # Execute extraction
    print(f"🎬 Extracting audio from: {video_path}")
    if start_time or end_time:
        time_range = f" [{start_time or '00:00:00'} - {end_time or 'end'}]"
        print(f"⏱️  Time range:{time_range}")
    print(f"🎯 Output file: {output_file}")
    
    try:
        result = subprocess.run(cmd, capture_output=True, text=True)
        
        if result.returncode == 0:
            # Get file size
            file_size = os.path.getsize(output_file)
            file_size_mb = file_size / (1024 * 1024)
            
            # Create metadata file
            metadata = {
                "source_video": video_path,
                "source_filename": os.path.basename(video_path),
                "extraction_date": datetime.now().isoformat(),
                "year": year,
                "time_range": {
                    "start": start_time,
                    "end": end_time,
                    "duration": duration
                },
                "output_file": output_file,
                "file_size_bytes": file_size,
                "file_size_mb": round(file_size_mb, 2)
            }
            
            metadata_file = output_file.replace(".wav", "_metadata.json")
            with open(metadata_file, 'w') as f:
                json.dump(metadata, f, indent=2)
            
            print(f"✅ Audio extracted successfully!")
            print(f"📊 File size: {file_size_mb:.1f} MB")
            print(f"📋 Metadata saved: {metadata_file}")
            
            # Show next steps
            print("\n🚀 Next steps:")
            print(f"1. Process with Assembly AI:")
            print(f"   python voice-processing/scripts/enhanced_assembly_ai.py '{output_file}'")
            print(f"\n2. Verify speakers:")
            print(f"   python voice-processing/scripts/verify_speakers.py '{output_file.replace('.wav', '_enhanced_analysis.json')}' '{output_file}'")
            
            return {
                "success": True,
                "output_file": output_file,
                "metadata_file": metadata_file,
                "file_size_mb": file_size_mb,
                "year": year
            }
            
        else:
            print(f"❌ Audio extraction failed!")
            print(f"Error: {result.stderr}")
            return {
                "success": False,
                "error": result.stderr
            }
            
    except Exception as e:
        print(f"❌ Exception during extraction: {str(e)}")
        return {
            "success": False,
            "error": str(e)
        }

def main():
    parser = argparse.ArgumentParser(
        description="Extract audio from video files for Assembly AI processing",
        formatter_class=argparse.RawDescriptionHelpFormatter,
        epilog="""
Examples:
  # Extract full audio
  python extract_audio.py "/photos/staging/home-videos/home-videos/1993/xmas 1993.mp4"
  
  # Extract with custom name
  python extract_audio.py video.mp4 --output christmas-1993
  
  # Extract specific time range
  python extract_audio.py video.mp4 --start 00:01:30 --end 00:05:00
  
  # Extract 2 minutes starting at 1:30
  python extract_audio.py video.mp4 --start 00:01:30 --duration 00:02:00
        """
    )
    
    parser.add_argument("video", help="Path to video file")
    parser.add_argument("-o", "--output", help="Custom output name (without extension)")
    parser.add_argument("-s", "--start", help="Start time (HH:MM:SS or seconds)")
    parser.add_argument("-e", "--end", help="End time (HH:MM:SS or seconds)")
    parser.add_argument("-d", "--duration", help="Duration (HH:MM:SS or seconds)")
    
    args = parser.parse_args()
    
    # Validate time options
    if args.end and args.duration:
        print("❌ Cannot specify both --end and --duration")
        sys.exit(1)
    
    # Extract audio
    result = extract_audio(
        video_path=args.video,
        output_name=args.output,
        start_time=args.start,
        end_time=args.end,
        duration=args.duration
    )
    
    # Exit with appropriate code
    sys.exit(0 if result["success"] else 1)

if __name__ == "__main__":
    main()