# Voice Processing Tools

This directory contains all tools for the Legacy Capture Pilot Program voice preservation workflow.

## Directory Structure

```
voice-processing/
├── scripts/
│   ├── extract_audio.py          # Extract audio from video files (Python with time ranges)
│   ├── extract_audio.sh          # Extract audio from video files (Shell script)
│   ├── enhanced_assembly_ai.py   # Process with family vocabulary boost
│   └── verify_speakers.py        # Verify and extract voice samples
├── configs/
│   └── speaker_mappings.json     # Track speaker identifications across videos
├── docs/
│   ├── workflow.md               # Complete processing workflow
│   └── file-locations.md         # File organization reference
└── data/
    └── [working files]           # Temporary processing files
```

## Quick Start Workflow

### 1. Extract Audio from Video

**Python script (recommended)** - supports time ranges:
```bash
# Extract full audio
python scripts/extract_audio.py "/photos/staging/home-videos/home-videos/1993/xmas 1993.mp4"

# Extract specific time range (first 5 minutes)
python scripts/extract_audio.py video.mp4 --start 00:00:00 --duration 00:05:00

# Extract with custom name
python scripts/extract_audio.py video.mp4 --output christmas-1993
```

**Shell script** - simple extraction:
```bash
./scripts/extract_audio.sh "/path/to/video.mp4" output-name
```

### 2. Process with Assembly AI
```bash
python scripts/enhanced_assembly_ai.py /photos/voices/raw_audio/1993/christmas-1993.wav
```

### 3. Verify Speakers
```bash
python scripts/verify_speakers.py christmas-1993_enhanced_analysis.json /photos/voices/raw_audio/1993/christmas-1993.wav
```

## Smart File Organization

All tools automatically organize files in `/photos/voices/`:

```
/photos/voices/
├── raw_audio/
│   ├── 1989/
│   │   ├── christmas-1989.wav
│   │   └── christmas-1989_metadata.json
│   ├── 1993/
│   │   ├── xmas-eve-1993.wav
│   │   └── xmas-1993.wav
│   └── 2017/
│       └── xmas-didis-2017.wav
├── transcripts/
│   ├── assembly_ai/
│   │   ├── christmas-1989_enhanced_analysis.json
│   │   └── xmas-didis-2017_enhanced_analysis.json
│   └── verified/
│       ├── christmas-1989_verified_speakers.json
│       └── xmas-didis-2017_verified_speakers.json
└── samples/
    ├── by_person/
    │   ├── David/
    │   ├── Patty/
    │   └── DIDI/
    ├── by_event/
    │   ├── christmas_1989/
    │   └── christmas_2017/
    └── by_year/
        ├── 1989/
        ├── 1993/
        └── 2017/
```

## Audio Extraction Features

### Time Range Support
- `--start HH:MM:SS` - Start time
- `--end HH:MM:SS` - End time  
- `--duration HH:MM:SS` - Duration from start
- Supports seconds format: `--start 90`

### Automatic Organization
- Extracts year from video path
- Sanitizes filenames (spaces → dashes)
- Creates metadata JSON files
- Optimizes for Assembly AI (16kHz, mono)

## Assembly AI Enhanced Processing

### Family Vocabulary Boost
139+ family-specific words for better recognition:
- **Names**: Stephen, Stevie, David, Patty, DIDI, Jim Jim, Grammy
- **Locations**: Haverhill, Massachusetts, DIDI's house
- **Christmas terms**: Santa, presents, tree, cookies, Christmas Eve
- **Family phrases**: "remember when", "come here", "look at this"
- **Emotional words**: love, beautiful, wonderful, precious

### Speaker Detection
- Prompts for expected speaker count
- Auto-detects actual speakers
- Provides speaker breakdown with statistics
- Identifies family vocabulary usage per speaker

## Speaker Verification System

### Known Family Members
Pre-configured list includes:
- Immediate family: Stephen, David, Patty, Dad
- Extended family: DIDI, Jim_Jim, Grammy, Dorothy, Grandpa
- Aunts/Uncles: Aunt_Mary, Uncle_Bob, Uncle_Mike
- Younger generation: Cayce, Austen, Christian, Henry, Eli

### Verification Process

**Main Menu Options:**
- **1-9...**: Verify specific speaker (by number)
- **X**: Extract voice samples for one speaker
- **A**: Extract ALL verified voice samples
- **C**: Show completion status (track verification progress)
- **N**: Add new speaker to list
- **S**: Show full summary
- **Q**: Quit

**During Segment Verification:**
- **0-30**: Select speaker identity from numbered list
- **N**: Add new speaker name on-the-fly
- **R**: Replay audio segment
- **S**: Skip this segment

### Smart Interface Design
- **Numbers (1-999)**: Select speakers for verification (no conflicts with speaker IDs)
- **Letters**: All commands and options
- **Two-column speaker list**: Easy scanning of all available family members
- **Unlimited speaker support**: Handles A-Z, AA-ZZ, etc. automatically

### Completion Tracking
- **Verification target**: 5+ segments per speaker for reliable identification
- **Status indicators**: Complete ✅, Partial 🔶, Not Started ❌
- **Overall progress**: Percentage completion across all detected speakers
- **Smart recommendations**: Prioritizes high speaking-time speakers

### Confidence Levels
- **HIGH**: 90%+ certain (distinctive voice/phrases)
- **MEDIUM**: 70-90% certain (likely but needs verification)
- **LOW**: <70% certain (could be multiple people)

## Batch Processing Examples

**Process all 1993 Christmas videos:**
```bash
for video in /photos/staging/home-videos/home-videos/1993/*mas*.mp4; do
    python scripts/extract_audio.py "$video"
done
```

**Process specific time ranges:**
```bash
# Extract first 2 minutes for quick testing
python scripts/extract_audio.py video.mp4 --duration 00:02:00 --output test-sample

# Extract middle section (5-15 minutes)
python scripts/extract_audio.py video.mp4 --start 00:05:00 --end 00:15:00
```

## Complete Workflow Example

**1. Extract and Process 1993 Christmas Video:**
```bash
# Extract full audio
python scripts/extract_audio.py "/photos/staging/home-videos/home-videos/1993/xmas 1993.mp4"

# Process with Assembly AI
python scripts/enhanced_assembly_ai.py /photos/voices/raw_audio/1993/xmas-1993.wav

# Verify speakers
python scripts/verify_speakers.py /photos/voices/transcripts/assembly_ai/xmas-1993_enhanced_analysis.json /photos/voices/raw_audio/1993/xmas-1993.wav
```

**2. Verification Workflow:**
```
🗣️  Detected Speakers:
------------------------------
  1: Speaker A (32.5%)
  2: Speaker B (18.7%)
  3: Speaker C (15.2%)
  ...

Your choice: 1         # Verify Speaker A
Your choice: C         # Check completion status
Your choice: N         # Add new family member "DJ"
Your choice: A         # Extract ALL verified voice samples
```

**3. Results:**
- **Raw audio**: `/photos/voices/raw_audio/1993/xmas-1993.wav`
- **Transcripts**: `/photos/voices/transcripts/assembly_ai/xmas-1993_enhanced_analysis.json`
- **Verifications**: `/photos/voices/transcripts/verified/xmas-1993_verified_speakers.json`
- **Voice samples**: `/photos/voices/samples/by_person/Patty/`, `/by_person/David/`, etc.
- **Analysis data**: `/photos/voices/analysis/speaker_mappings.json`

## Integration with Legacy Capture

This toolset builds the foundation for:
- **Voice preservation** - Clean audio samples of family members
- **Speaker identification** - Map anonymous speakers to family names  
- **Voice aging analysis** - Compare voices across decades
- **Family conversation archive** - Searchable transcripts with timestamps
- **Memorial projects** - Verified voice samples for tributes

## Configuration Files

**Speaker Mappings**: `configs/speaker_mappings.json`
- Tracks verified speaker identities across videos
- Evidence and confidence levels
- Updated by verification process

**Current Identifications:**
- **2017 Christmas**: David (Speaker B), Patty (Speaker E), DIDI (Speaker D)
- **1993 Christmas**: Patty (Speakers A,B,H,L), David (Speaker G,K), Dad (Speaker J,M), Stephen (Speaker F,I), Danny (Speaker M), Roxanne (Speaker O), Billy (Speaker E)
- **1989 Christmas**: Processing in progress

## Voice Sample Statistics
- **Patty**: 50+ high-confidence voice samples across multiple Christmas videos
- **David**: 15+ verified voice samples from childhood through teens  
- **Dad**: 8+ voice samples from family gatherings
- **Stephen**: 12+ voice samples from Christmas mornings
- **Extended Family**: Danny, Roxanne, Billy, and other family members preserved

## Cost Estimates

- **Assembly AI**: ~$0.37 per hour of audio
- **Storage**: ~10MB per hour of extracted audio
- **Time**: ~2-3 hours per Christmas video (extraction + verification)

Ready to preserve family voices across generations!