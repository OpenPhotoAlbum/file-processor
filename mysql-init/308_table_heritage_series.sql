-- Heritage Photo Integration - Series Management
-- Created: 2025-01-22
-- Purpose: Track document series (baby books, journals, photo collections)

CREATE TABLE heritage_series (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  series_name VARCHAR(255) NOT NULL,
  series_type ENUM('baby_book', 'journal', 'documents', 'photos', 'certificates') NOT NULL,
  total_documents INT,
  description TEXT,
  date_range_start DATE,
  date_range_end DATE,

  -- Indexes
  INDEX idx_series_name (series_name),
  INDEX idx_series_type (series_type),
  INDEX idx_date_range (date_range_start, date_range_end)
);