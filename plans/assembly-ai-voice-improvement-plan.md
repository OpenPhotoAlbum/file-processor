# Assembly AI Voice Recognition Improvement Plan
## Building Family Voice Profiles for Legacy Capture

**Goal:** Systematically improve speaker identification accuracy across 174 family videos
**Timeline:** Iterative improvement over 30-60 days
**Integration:** Part of Legacy Capture Pilot Program Phase 0

## Phase 1: Foundation Building (Week 1)

### 1.0 Audio Pre-Processing Optimization
Test whether audio enhancement improves Assembly AI results:

#### Pre-Processing Tests
```bash
# Original audio (baseline)
original: "Xmas Eve & Xmas 1989_extracted.wav"

# Gentle optimization version
ffmpeg -i input.wav -af "highpass=f=80,lowpass=f=8000,dynaudnorm=f=500,anlmdn=s=0.00001" optimized.wav

# Noise reduction version  
audacity: Noise Reduction -> Normalize -> Compress

# AI noise reduction
krisp or similar tools
```

#### A/B Testing Strategy
1. **Baseline**: Original audio + basic Assembly AI
2. **Enhanced**: Original audio + vocabulary boost
3. **Optimized**: Pre-processed audio + vocabulary boost
4. **Compare**: Accuracy, speaker separation, word recognition

#### Audio Processing Guidelines
- **Conservative approach**: Start with gentle processing
- **Test incrementally**: One filter at a time
- **Preserve voice characteristics**: Don't over-process
- **Focus on common issues**: Noise, volume inconsistency

#### Processing Options to Test
```python
AUDIO_FILTERS = {
    "gentle": [
        "highpass=f=80",      # Remove rumble
        "normalize",          # Consistent volume
        "dynaudnorm=f=500"    # Light compression
    ],
    "moderate": [
        "highpass=f=80",
        "lowpass=f=8000",     # Remove high-frequency noise
        "anlmdn=s=0.00001",   # Denoise
        "dynaudnorm=f=500"
    ],
    "aggressive": [
        "highpass=f=100",
        "lowpass=f=7000", 
        "anlmdn=s=0.0001",    # Stronger denoise
        "compand=0.3,1:6:-70,-60,-20", # Compression
        "normalize"
    ]
}
```

#### Quality Metrics
- Speaker separation accuracy
- Word recognition for family names
- Overall transcription quality
- Processing time impact

### 1.1 Custom Vocabulary Database
Create comprehensive word lists for Assembly AI boost:

```python
FAMILY_VOCABULARY = {
    "names": [
        # Immediate family
        "Stephen", "Stevie", "Stevy", "Steve",
        "David", "Dave", "Davey",
        "Mom", "Mommy", "Mother",
        "Dad", "Daddy", "Father",
        
        # Extended family
        "Grandma", "Grammy", "Nana",
        "Grandpa", "Papa", "Pop Pop",
        "DIDI", "Didi", "Aunt Didi",
        "Jim Jim", "Uncle Jim",
        "Dorothy", "Grandma Dorothy",
        "Aunt Mary", "Uncle Bob", "Aunt Karen",
        
        # From video titles
        "Austen", "Cayce", "Christian", "Henry", "Eli"
    ],
    
    "locations": [
        # Houses
        "Haverhill", "Lawrence", "Sandown", "Plaistow", "Exeter",
        
        # Specific places
        "DIDI's house", "My house", "Grandma's house",
        "Fish Tale Diner", "Salisbury Beach",
        
        # States/Regions
        "Massachusetts", "New Hampshire", "North Carolina",
        "Weaverville", "Austin", "Texas"
    ],
    
    "holiday_terms": [
        # Christmas specific
        "Santa", "stockings", "presents", "tree", "ornaments",
        "midnight Mass", "Christmas Eve", "Christmas morning",
        
        # Food/traditions
        "cookies", "sugar cookies", "almond extract",
        "ham", "turkey", "stuffing", "cranberry",
        
        # Common phrases
        "Merry Christmas", "Happy New Year", "God bless"
    ],
    
    "time_markers": [
        # Helps identify when in videos
        "remember when", "last year", "when you were little",
        "back in my day", "years ago", "always used to"
    ]
}
```

### 1.2 Initial Speaker Profile Template
```json
{
    "speaker_id": "SPEAKER_A",
    "identified_as": "Mom",
    "voice_characteristics": {
        "gender": "female",
        "age_range": "40-50",
        "accent": "New England",
        "speaking_pace": "moderate"
    },
    "common_phrases": [
        "Oh my goodness",
        "Come see this",
        "Be careful"
    ],
    "appears_in_videos": [
        "Xmas Eve & Xmas 1989.mp4",
        "1992 Xmas.mp4"
    ],
    "relationships_mentioned": [
        "calls Stephen 'Stevie'",
        "refers to 'your father'"
    ]
}
```

## Phase 2: Iterative Processing Strategy (Week 2-3)

### 2.1 Video Processing Order
Process videos strategically to build knowledge:

1. **Start with recent videos** (2017-2020)
   - Clearer audio quality
   - Known living speakers
   - Establish baseline voices

2. **Work backwards chronologically**
   - Apply learned voice profiles
   - Identify aging voice changes
   - Track when new people appear/disappear

3. **Focus on high-value videos**
   - Christmas videos (16 identified)
   - Multi-generational gatherings
   - Videos with deceased family members

### 2.2 Progressive Enhancement Script
```python
class FamilyVoiceProcessor:
    def __init__(self):
        self.known_speakers = {}
        self.vocabulary = FAMILY_VOCABULARY
        self.processed_videos = []
    
    def process_video(self, video_path, hints=None):
        config = aai.TranscriptionConfig(
            speaker_labels=True,
            word_boost=self._get_word_boost(),
            boost_param="high",
            speakers_expected=hints.get('expected_speakers') if hints else None
        )
        
        # Process with Assembly AI
        transcript = self._transcribe(video_path, config)
        
        # Apply post-processing rules
        enhanced_transcript = self._apply_speaker_rules(transcript)
        
        # Update knowledge base
        self._update_speaker_profiles(enhanced_transcript)
        
        return enhanced_transcript
    
    def _apply_speaker_rules(self, transcript):
        # Rules like:
        # - If someone says "Stevie", they're likely a parent/grandparent
        # - If someone mentions "when I was in school", they're likely Stephen/David
        # - Christmas host is likely Mom
        pass
```

## Phase 3: Speaker Identification Workflow (Week 3-4)

### 3.1 Manual Review Process
For each video:

1. **Quick Listen** (5-10 segments per speaker)
   - Play 10-second clips at different timestamps
   - Make initial speaker guess
   - Note distinctive phrases

2. **Cross-Reference**
   - Compare with known family configuration that year
   - Check against other videos from same era
   - Use photo evidence (who was present)

3. **Confidence Scoring**
   ```
   HIGH: 90%+ certain (distinctive voice/phrases)
   MEDIUM: 70-90% certain (likely but needs verification)
   LOW: <70% certain (could be multiple people)
   ```

### 3.2 Voice Sample Extraction
```bash
# Extract high-confidence speaker samples
ffmpeg -i "video.mp4" -ss 00:01:23 -t 10 -vn "samples/Mom_1989_sample1.wav"
```

Build library structure:
```
voice_samples/
├── Mom/
│   ├── 1989_christmas_sample1.wav
│   ├── 1992_easter_sample1.wav
│   └── voice_profile.json
├── Dad/
├── Grandma_Dorothy/
└── Unknown/
    └── SPEAKER_X_samples/
```

## Phase 4: Advanced Techniques (Week 4-5)

### 4.1 Context-Based Speaker Resolution
```python
def resolve_speaker_by_context(utterance, video_metadata):
    # Example rules:
    if "let me get the camera" in utterance.text.lower():
        return "Dad"  # Dad usually filmed
    
    if video_metadata['year'] < 1990 and "stephen" in utterance.text.lower():
        return "Mom_or_Grandma"  # Limited set of adults
    
    if "when I was your age" in utterance.text.lower():
        return "Elder_Generation"
```

### 4.2 Multi-Pass Processing
1. **First Pass**: Basic transcription with speaker labels
2. **Second Pass**: Apply vocabulary boosts and speaker hints
3. **Third Pass**: Use learned profiles from other videos
4. **Final Pass**: Manual verification and correction

## Phase 5: Knowledge Preservation (Ongoing)

### 5.1 Master Speaker Database
```json
{
    "family_speakers": {
        "verified": {
            "Mom": {
                "full_name": "Mother's Name",
                "videos_appeared": 45,
                "years_active": "1989-2020",
                "voice_samples": 127,
                "common_phrases": [],
                "relationships": {}
            }
        },
        "deceased": {
            "Grandma_Dorothy": {
                "last_video": "1995-christmas.mp4",
                "voice_samples_extracted": 23,
                "quality_rating": "good"
            }
        },
        "uncertain": {
            "SPEAKER_X_1989": {
                "possible_identities": ["Aunt Mary", "Family Friend"],
                "appears_in": ["Xmas Eve & Xmas 1989.mp4"],
                "evidence": "Mentions living in Lawrence"
            }
        }
    }
}
```

### 5.2 Continuous Improvement Metrics
- Track identification accuracy over time
- Note which techniques work best
- Document voice aging patterns
- Build family-specific rules engine

## Implementation Checklist

### Week 1
- [x] Process Christmas 1989 video with Assembly AI (baseline)
- [ ] Test audio pre-processing optimization (gentle, moderate, aggressive)
- [ ] Run enhanced script with vocabulary boost on original audio
- [ ] Run enhanced script with vocabulary boost on optimized audio
- [ ] Compare all results: baseline vs enhanced vs optimized
- [ ] Create initial speaker mappings from best results
- [ ] Extract 3-5 voice samples per identified speaker
- [ ] Build custom vocabulary list from video collection

### Week 2
- [ ] Process 5 more Christmas videos (different years)
- [ ] Compare speaker identifications across years
- [ ] Refine vocabulary and boost parameters
- [ ] Create speaker profile database structure

### Week 3
- [ ] Implement post-processing rules
- [ ] Process videos with deceased family members
- [ ] Extract and archive voice samples
- [ ] Test speaker consistency across decades

### Week 4
- [ ] Build automated improvement pipeline
- [ ] Document speaker identification confidence
- [ ] Create family voice archive structure
- [ ] Prepare for full 174-video processing

### Week 5
- [ ] Evaluate pilot results
- [ ] Plan full video collection processing
- [ ] Share findings with family
- [ ] Refine process for production use

## Success Metrics

1. **Accuracy**: 80%+ speaker identification confidence
2. **Coverage**: Voice samples from all key family members
3. **Efficiency**: Process time reduced by 50% through automation
4. **Preservation**: Deceased family member voices extracted and archived
5. **Scalability**: System ready for all 174 videos

## Resources Needed

- Assembly AI credits (~$65 for all videos)
- Storage for voice samples (~10GB)
- Time investment: ~2 hours/day for 30 days
- Family cooperation for verification

This plan integrates with your Legacy Capture Pilot Program and builds the foundation for preserving family voices across generations!