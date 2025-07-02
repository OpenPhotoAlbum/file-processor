#!/bin/bash
exec ./build/bin/whisper-cli -m "/home/stephen/Documents/initial-media-processing/whisper.cpp/models/ggml-base.en.bin" -f "/home/stephen/Documents/initial-media-processing/stevie-first-bday-haverhill_temp.wav" -otxt -t 8 > "/home/stephen/Documents/initial-media-processing/stevie-first-bday-haverhill_transcript.txt" 2>&1
