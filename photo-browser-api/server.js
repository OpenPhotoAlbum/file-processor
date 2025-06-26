const express = require('express');
const { engine } = require('express-handlebars');

const app = express();
const PORT = 3000;

// Setup Handlebars
app.engine('hbs', engine({ 
  extname: '.hbs',
  defaultLayout: false 
}));
app.set('view engine', 'hbs');
app.set('views', './templates');

// Routes
app.get('/', (req, res) => {
  res.render('hello', { 
    message: 'Hello World from Photo Browser!',
    photoId: 'none' 
  });
});

app.get('/metadata/:photoId', (req, res) => {
  const photoId = req.params.photoId;
  
  // Import our new modules
  const { findPhotoById } = require('./lib/photo-finder');
  const { readMetadata, extractBasicInfo } = require('./lib/metadata-reader');
  
  // Find the photo
  const photoResult = findPhotoById(photoId);
  
  if (!photoResult.found) {
    return res.render('hello', {
      photoId,
      message: 'Photo Not Found',
      error: photoResult.error
    });
  }
  
  // Read metadata
  const metadataResult = readMetadata(photoResult.jsonPath);
  
  if (!metadataResult.success) {
    return res.render('hello', {
      photoId,
      message: 'Metadata Error',
      error: metadataResult.error
    });
  }
  
  // Extract data for template
  const templateData = extractBasicInfo(metadataResult.metadata);
  templateData.photoId = photoId;
  
  res.render('hello', templateData);
});

app.listen(PORT, () => {
  console.log(`Photo Browser API running at http://localhost:${PORT}`);
  console.log(`Try: http://localhost:${PORT}/metadata/2022-01-01_00-00-00_008`);
});