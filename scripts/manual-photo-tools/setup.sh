#!/bin/bash

# Setup virtual environment and install dependencies for duplicate detection

echo "Setting up virtual environment for duplicate detection..."

# Create virtual environment
python3 -m venv venv

# Activate virtual environment
source venv/bin/activate

# Install required packages
pip install -r requirements.txt

echo "Setup complete!"
echo "To activate the environment, run: source venv/bin/activate"