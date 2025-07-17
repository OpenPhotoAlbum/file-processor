# TODO - Future Improvements

## Immediate Tasks
- [ ] **Test complete installation** - Run `./install.sh` and verify all three commands work
- [ ] **Test date setting integration** - Verify `-date` flag works end-to-end in scan workflow
- [ ] **Validate all background shortcuts** - Ensure `-r red` and `-r white` work correctly
- [ ] **Documentation review** - Check all help messages are accurate and complete

## Enhancement Ideas

### User Experience Improvements
- [ ] **Interactive mode** - Prompt for missing required arguments instead of erroring
- [ ] **Preview mode** - Show what would be processed without actually doing it (`--dry-run`)
- [ ] **Configuration file** - Save common settings (device, background preference, etc.)
- [ ] **Progress bars** - Show processing progress for large batch operations
- [ ] **Undo functionality** - Keep backups and allow reverting operations

### Scanner Integration
- [ ] **Multiple scanner support** - Auto-detect and choose from available scanners
- [ ] **Scanner presets** - Save device-specific settings (resolution, format, etc.)
- [ ] **Preview scans** - Quick preview before full scan
- [ ] **Automatic document detection** - Auto-crop to document boundaries
- [ ] **Multi-page scanning** - Handle document feeders and multiple page scans

### Date and Metadata Features
- [ ] **EXIF data preservation** - Keep original camera metadata when available
- [ ] **Timezone support** - Handle different timezones in date setting
- [ ] **Date range validation** - Warn about unrealistic dates (future, too old)
- [ ] **GPS data support** - Add location metadata to scanned photos
- [ ] **Custom metadata** - Add keywords, descriptions, copyright info

### Processing Enhancements
- [ ] **Quality presets** - High/medium/low quality processing modes
- [ ] **Batch optimization** - Automatically determine best settings for photo sets
- [ ] **Format options** - Support PNG, TIFF output formats
- [ ] **Compression control** - JPEG quality settings
- [ ] **Color correction** - Auto-adjust brightness, contrast, color balance
- [ ] **Noise reduction** - Clean up scanner artifacts and dust spots

### Advanced Features
- [ ] **OCR integration** - Extract text from document scans
- [ ] **Face detection** - Auto-identify and name people in photos
- [ ] **Duplicate detection** - Find and handle duplicate scans
- [ ] **Auto-organization** - Sort photos by date, people, events
- [ ] **Cloud backup** - Integrate with Google Photos, iCloud, etc.
- [ ] **Database integration** - Store metadata in SQLite for searching

### Developer Experience
- [ ] **Unit tests** - Test individual functions and error cases
- [ ] **Integration tests** - Test full workflows end-to-end
- [ ] **Performance profiling** - Optimize slow operations
- [ ] **Docker support** - Containerized version for consistent environments
- [ ] **Plugin system** - Allow custom processing steps
- [ ] **API interface** - Programmatic access to functionality

### Documentation
- [ ] **User manual** - Comprehensive guide with examples and troubleshooting
- [ ] **Video tutorials** - Step-by-step workflow demonstrations  
- [ ] **FAQ section** - Common issues and solutions
- [ ] **Best practices guide** - Tips for optimal scanning and processing
- [ ] **Developer guide** - How to extend and modify the tools

### Platform Support
- [ ] **Windows compatibility** - Test and fix Windows-specific issues
- [ ] **macOS testing** - Verify scanner detection works on macOS
- [ ] **ARM support** - Test on Raspberry Pi and M1 Macs
- [ ] **Package managers** - Submit to apt, brew, AUR repositories
- [ ] **Snap/Flatpak** - Universal Linux packages

### Quality of Life
- [ ] **Auto-updates** - Check for and install updates automatically
- [ ] **Usage statistics** - Track most-used features for UX improvements
- [ ] **Crash reporting** - Automatic error reporting with user consent
- [ ] **Backup/restore** - Save and restore user settings and preferences
- [ ] **Multi-language** - Internationalization support

## Known Issues
- [ ] **Large file handling** - May be slow with very high resolution scans
- [ ] **Memory usage** - Could optimize for batch processing of many files
- [ ] **Error recovery** - Better handling of partial failures in batch operations
- [ ] **Scanner timeout** - Handle scanner going to sleep during long operations

## Architecture Improvements
- [ ] **Async processing** - Process multiple files in parallel
- [ ] **Plugin architecture** - Modular processing pipeline
- [ ] **Event system** - Hooks for custom scripts at various stages
- [ ] **Resource management** - Better cleanup of temporary files
- [ ] **Logging system** - Structured logging for debugging

## Community Features
- [ ] **Preset sharing** - Share processing presets with other users
- [ ] **Background library** - Community-contributed background references
- [ ] **Example gallery** - Showcase of processed results
- [ ] **User forums** - Help and discussion platform
- [ ] **Contribution guide** - How others can help improve the project

---

## Priority Levels
- **High**: Core functionality and reliability
- **Medium**: User experience and workflow improvements  
- **Low**: Advanced features and nice-to-haves

Most items above are **Low** priority - the current system is fully functional for its intended purpose. Focus should be on testing and reliability first, then user experience improvements.