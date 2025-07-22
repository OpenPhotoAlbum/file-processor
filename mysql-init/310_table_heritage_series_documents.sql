-- Heritage Photo Integration - Series Relationships
-- Created: 2025-01-22
-- Purpose: Link individual photos to document series with page tracking

CREATE TABLE heritage_series_documents (
  file_id BIGINT UNSIGNED,
  series_id BIGINT UNSIGNED,
  document_number INT,
  page_number INT,

  -- Keys
  PRIMARY KEY (file_id, series_id),
  FOREIGN KEY (file_id) REFERENCES media_files(id) ON DELETE CASCADE,
  FOREIGN KEY (series_id) REFERENCES heritage_series(id) ON DELETE CASCADE,

  -- Indexes
  INDEX idx_series_document (series_id, document_number),
  INDEX idx_series_page (series_id, page_number)
);