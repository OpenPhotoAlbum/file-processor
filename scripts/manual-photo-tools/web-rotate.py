#!/usr/bin/env python3
"""
Web-based image rotation tool.
Opens in your browser with the same spacebar/enter workflow.
"""

import os
import sys
import argparse
from pathlib import Path
import base64
import json
from http.server import HTTPServer, BaseHTTPRequestHandler
import urllib.parse
import threading
import webbrowser
import time

try:
    from PIL import Image
except ImportError:
    print("Error: Pillow not installed.")
    print("Please run: pip install Pillow")
    sys.exit(1)

class ImageRotationHandler(BaseHTTPRequestHandler):
    image_files = []
    current_index = 0
    
    def do_GET(self):
        """Handle GET requests."""
        if self.path == '/':
            self.serve_main_page()
        elif self.path == '/api/current':
            self.serve_current_image()
        elif self.path == '/api/next':
            self.serve_next_image()
        elif self.path.startswith('/api/rotate'):
            self.rotate_current_image()
        elif self.path.startswith('/api/save'):
            self.save_current_rotation()
        else:
            self.send_error(404)
    
    def serve_main_page(self):
        """Serve the main HTML page."""
        html = """
<!DOCTYPE html>
<html>
<head>
    <title>Image Rotation Tool</title>
    <style>
        body {
            margin: 0;
            padding: 20px;
            background: #000;
            color: #fff;
            font-family: Arial, sans-serif;
            text-align: center;
        }
        .container {
            max-width: 1200px;
            margin: 0 auto;
        }
        .controls {
            margin-bottom: 20px;
            font-size: 18px;
        }
        .image-container {
            margin: 20px 0;
        }
        #currentImage {
            max-width: 100%;
            max-height: 70vh;
            border: 2px solid #444;
        }
        .info {
            margin: 20px 0;
            padding: 10px;
            background: #222;
            border-radius: 5px;
        }
        .filename {
            color: #4CAF50;
            font-size: 16px;
            margin: 10px 0;
        }
        .rotation {
            color: #FFD700;
            font-size: 20px;
            font-weight: bold;
        }
        .progress {
            color: #2196F3;
            font-size: 14px;
        }
        .instructions {
            background: #333;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
        }
        .status {
            color: #4CAF50;
            margin: 10px 0;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Image Rotation Tool</h1>
        
        <div class="instructions">
            <strong>Controls:</strong><br>
            SPACEBAR = Rotate 90° clockwise<br>
            ENTER = Save rotation and move to next image<br>
            ESC = Quit (close browser tab)
        </div>
        
        <div class="info">
            <div class="progress" id="progress">Loading...</div>
            <div class="rotation" id="rotation">Rotation: 0°</div>
            <div class="filename" id="filename"></div>
            <div class="status" id="status">Ready</div>
        </div>
        
        <div class="image-container">
            <img id="currentImage" src="" alt="Current image">
        </div>
    </div>

    <script>
        let currentRotation = 0;
        let currentIndex = 0;
        let totalImages = 0;
        
        // Load initial image
        loadCurrentImage();
        
        // Keyboard controls
        document.addEventListener('keydown', function(event) {
            if (event.code === 'Space') {
                event.preventDefault();
                rotateImage();
            } else if (event.code === 'Enter') {
                event.preventDefault();
                saveAndNext();
            } else if (event.code === 'Escape') {
                window.close();
            }
        });
        
        function loadCurrentImage() {
            fetch('/api/current')
                .then(response => response.json())
                .then(data => {
                    if (data.error) {
                        document.getElementById('status').textContent = 'Error: ' + data.error;
                        return;
                    }
                    
                    if (data.completed) {
                        showCompletion(data);
                        return;
                    }
                    
                    document.getElementById('currentImage').src = 'data:image/jpeg;base64,' + data.image;
                    document.getElementById('filename').textContent = data.filename;
                    document.getElementById('progress').textContent = `Image ${data.index + 1} of ${data.total}`;
                    
                    currentRotation = 0;
                    currentIndex = data.index;
                    totalImages = data.total;
                    
                    updateRotationDisplay();
                    document.getElementById('status').textContent = 'Ready - use SPACEBAR to rotate, ENTER to save';
                })
                .catch(error => {
                    document.getElementById('status').textContent = 'Error loading image: ' + error;
                });
        }
        
        function rotateImage() {
            currentRotation = (currentRotation + 90) % 360;
            
            const img = document.getElementById('currentImage');
            img.style.transform = `rotate(${currentRotation}deg)`;
            
            updateRotationDisplay();
            
            if (currentRotation === 0) {
                document.getElementById('status').textContent = 'Back to original orientation';
            } else {
                document.getElementById('status').textContent = `Rotated ${currentRotation}° from original`;
            }
        }
        
        function updateRotationDisplay() {
            document.getElementById('rotation').textContent = `Rotation: ${currentRotation}°`;
        }
        
        function saveAndNext() {
            if (currentRotation !== 0) {
                document.getElementById('status').textContent = 'Saving rotation...';
                
                fetch(`/api/save?rotation=${currentRotation}`)
                    .then(response => response.json())
                    .then(data => {
                        if (data.success) {
                            document.getElementById('status').textContent = `✓ Saved rotation: ${currentRotation}°`;
                        } else {
                            document.getElementById('status').textContent = '✗ Error saving rotation';
                        }
                        nextImage();
                    })
                    .catch(error => {
                        document.getElementById('status').textContent = 'Error saving: ' + error;
                        nextImage();
                    });
            } else {
                document.getElementById('status').textContent = '✓ No rotation needed';
                nextImage();
            }
        }
        
        function nextImage() {
            // Reset image rotation display
            document.getElementById('currentImage').style.transform = 'rotate(0deg)';
            
            setTimeout(() => {
                fetch('/api/next')
                    .then(response => response.json())
                    .then(data => {
                        loadCurrentImage();
                    });
            }, 500);
        }
        
        function showCompletion(data) {
            document.getElementById('currentImage').style.display = 'none';
            document.getElementById('status').innerHTML = `
                <h2>🎉 All Done!</h2>
                <p>Processed: ${data.processed} images</p>
                <p>Rotated: ${data.rotated} images</p>
                <p>You can close this tab now</p>
            `;
        }
    </script>
</body>
</html>
        """
        
        self.send_response(200)
        self.send_header('Content-type', 'text/html')
        self.end_headers()
        self.wfile.write(html.encode())
    
    def serve_current_image(self):
        """Serve current image data as JSON."""
        if ImageRotationHandler.current_index >= len(ImageRotationHandler.image_files):
            response = {
                'completed': True,
                'processed': ImageRotationHandler.current_index,
                'rotated': getattr(ImageRotationHandler, 'rotated_count', 0)
            }
        else:
            try:
                current_file = ImageRotationHandler.image_files[ImageRotationHandler.current_index]
                
                # Load and encode image
                with Image.open(current_file) as img:
                    # Resize for web display
                    img.thumbnail((1200, 800), Image.Resampling.LANCZOS)
                    
                    # Convert to RGB if needed
                    if img.mode in ('RGBA', 'P'):
                        img = img.convert('RGB')
                    
                    # Save to bytes
                    import io
                    img_bytes = io.BytesIO()
                    img.save(img_bytes, format='JPEG', quality=85)
                    img_bytes.seek(0)
                    
                    # Encode to base64
                    img_b64 = base64.b64encode(img_bytes.read()).decode()
                
                response = {
                    'image': img_b64,
                    'filename': os.path.basename(current_file),
                    'index': ImageRotationHandler.current_index,
                    'total': len(ImageRotationHandler.image_files),
                    'completed': False
                }
                
            except Exception as e:
                response = {'error': str(e)}
        
        self.send_response(200)
        self.send_header('Content-type', 'application/json')
        self.end_headers()
        self.wfile.write(json.dumps(response).encode())
    
    def serve_next_image(self):
        """Move to next image."""
        ImageRotationHandler.current_index += 1
        
        response = {'success': True, 'index': ImageRotationHandler.current_index}
        
        self.send_response(200)
        self.send_header('Content-type', 'application/json')
        self.end_headers()
        self.wfile.write(json.dumps(response).encode())
    
    def save_current_rotation(self):
        """Save rotation to current image."""
        try:
            # Parse rotation from query string
            query = urllib.parse.urlparse(self.path).query
            params = urllib.parse.parse_qs(query)
            rotation = int(params.get('rotation', [0])[0])
            
            if rotation != 0 and ImageRotationHandler.current_index < len(ImageRotationHandler.image_files):
                current_file = ImageRotationHandler.image_files[ImageRotationHandler.current_index]
                
                # Load and rotate image
                with Image.open(current_file) as img:
                    if rotation == 90:
                        rotated_img = img.rotate(-90, expand=True)
                    elif rotation == 180:
                        rotated_img = img.rotate(-180, expand=True)
                    elif rotation == 270:
                        rotated_img = img.rotate(-270, expand=True)
                    else:
                        rotated_img = img
                    
                    # Save back to file
                    rotated_img.save(current_file)
                
                # Track rotation count
                if not hasattr(ImageRotationHandler, 'rotated_count'):
                    ImageRotationHandler.rotated_count = 0
                ImageRotationHandler.rotated_count += 1
            
            response = {'success': True}
            
        except Exception as e:
            response = {'success': False, 'error': str(e)}
        
        self.send_response(200)
        self.send_header('Content-type', 'application/json')
        self.end_headers()
        self.wfile.write(json.dumps(response).encode())
    
    def log_message(self, format, *args):
        """Suppress HTTP log messages."""
        pass

def main():
    parser = argparse.ArgumentParser(description='Web-based image rotation tool')
    parser.add_argument('source_dir', help='Directory containing images to process')
    parser.add_argument('--port', type=int, default=8080, help='Port to run web server on')
    
    args = parser.parse_args()
    
    if not os.path.isdir(args.source_dir):
        print(f"Error: Source directory {args.source_dir} not found")
        sys.exit(1)
    
    # Find image files
    image_extensions = {'.jpg', '.jpeg', '.png', '.gif', '.bmp', '.tiff', '.tif'}
    image_files = []
    
    for root, dirs, files in os.walk(args.source_dir):
        for file in files:
            if Path(file).suffix.lower() in image_extensions:
                image_files.append(os.path.join(root, file))
    
    image_files.sort()
    
    if not image_files:
        print("No image files found")
        sys.exit(1)
    
    # Set up the handler with image files
    ImageRotationHandler.image_files = image_files
    ImageRotationHandler.current_index = 0
    
    print(f"Found {len(image_files)} images to process")
    print(f"Starting web server on port {args.port}")
    print(f"Opening browser to http://localhost:{args.port}")
    
    # Start server
    server = HTTPServer(('localhost', args.port), ImageRotationHandler)
    
    # Open browser after a short delay
    def open_browser():
        time.sleep(1)
        webbrowser.open(f'http://localhost:{args.port}')
    
    threading.Thread(target=open_browser, daemon=True).start()
    
    try:
        print("\nControls in browser:")
        print("  SPACEBAR = Rotate 90° clockwise")
        print("  ENTER = Save rotation and move to next image")
        print("  ESC = Quit (close browser tab)")
        print("\nPress Ctrl+C to stop the server")
        
        server.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped")
        server.shutdown()

if __name__ == '__main__':
    main()