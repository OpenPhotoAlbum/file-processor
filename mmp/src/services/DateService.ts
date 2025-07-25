export type DateFormat = 'ISO' | 'US' | 'YEAR_ONLY' | 'YEAR_MONTH';

export interface DateValidationResult {
  isValid: boolean;
  error?: string;
  date?: Date;
  format?: DateFormat;
}

/**
 * Service for parsing and validating heritage photo dates
 * Supports multiple input formats and validates for heritage photo date ranges
 */
export class DateService {
  private static readonly HERITAGE_DATE_MIN = new Date('1950-01-01');
  private static readonly HERITAGE_DATE_MAX = new Date('2025-12-31');
  
  private static readonly ISO_PATTERN = /^\d{4}-\d{2}-\d{2}$/;
  private static readonly US_PATTERN = /^\d{2}-\d{2}-\d{4}$/;
  private static readonly YEAR_ONLY_PATTERN = /^\d{4}$/;
  private static readonly YEAR_MONTH_PATTERN = /^\d{4}-\d{2}$/;

  /**
   * Parse date string into Date object with format detection
   */
  parseDate(input: string): DateValidationResult {
    const trimmedInput = input.trim();
    
    try {
      const format = this.detectDateFormat(trimmedInput);
      let date: Date;

      switch (format) {
        case 'ISO':
          date = this.parseISODate(trimmedInput);
          break;
        case 'US':
          date = this.parseUSDate(trimmedInput);
          break;
        case 'YEAR_ONLY':
          date = this.parseYearOnly(trimmedInput);
          break;
        case 'YEAR_MONTH':
          date = this.parseYearMonth(trimmedInput);
          break;
        default:
          return {
            isValid: false,
            error: `Unsupported date format: ${trimmedInput}. Supported formats: YYYY-MM-DD, MM-DD-YYYY, YYYY, YYYY-MM`
          };
      }

      // Validate heritage date range
      const validation = this.validateHeritageDate(date);
      if (!validation.isValid) {
        return validation;
      }

      return {
        isValid: true,
        date,
        format
      };

    } catch (error) {
      const errorMessage = error instanceof Error ? error.message : 'Unknown parsing error';

      return {
        isValid: false,
        error: `Invalid date: ${trimmedInput}. ${errorMessage}`
      };
    }
  }

  /**
   * Detect the format of the input date string
   */
  detectDateFormat(input: string): DateFormat {
    if (DateService.ISO_PATTERN.test(input)) return 'ISO';
    if (DateService.US_PATTERN.test(input)) return 'US';
    if (DateService.YEAR_ONLY_PATTERN.test(input)) return 'YEAR_ONLY';
    if (DateService.YEAR_MONTH_PATTERN.test(input)) return 'YEAR_MONTH';
    
    throw new Error(`Unrecognized date format: ${input}`);
  }

  /**
   * Validate that date falls within heritage photo range (1950-2025)
   */
  validateHeritageDate(date: Date): DateValidationResult {
    if (date < DateService.HERITAGE_DATE_MIN) {
      return {
        isValid: false,
        error: `Date ${date.toISOString().split('T')[0]} is before heritage photo range (1950-2025)`
      };
    }

    if (date > DateService.HERITAGE_DATE_MAX) {
      return {
        isValid: false,
        error: `Date ${date.toISOString().split('T')[0]} is after heritage photo range (1950-2025)`
      };
    }

    return { isValid: true, date };
  }

  /**
   * Format date for EXIF writing (YYYY:MM:DD HH:MM:SS)
   */
  formatForEXIF(date: Date): string {
    const year = date.getFullYear();
    const month = String(date.getMonth() + 1).padStart(2, '0');
    const day = String(date.getDate()).padStart(2, '0');
    const hours = String(date.getHours()).padStart(2, '0');
    const minutes = String(date.getMinutes()).padStart(2, '0');
    const seconds = String(date.getSeconds()).padStart(2, '0');

    return `${year}:${month}:${day} ${hours}:${minutes}:${seconds}`;
  }

  /**
   * Generate default time (12:00:00) for heritage photos where exact time is unknown
   */
  generateDefaultTime(date: Date): Date {
    const result = new Date(date);
    result.setHours(12, 0, 0, 0);
    return result;
  }

  private parseISODate(input: string): Date {
    const parts = input.split('-').map(Number);
    if (parts.length !== 3) {
      throw new Error(`Invalid ISO date format: ${input}`);
    }
    
    const [year, month, day] = parts;
    
    if (!year || !month || !day) {
      throw new Error(`Invalid date parts: ${input}`);
    }
    
    if (month < 1 || month > 12) {
      throw new Error(`Invalid month: ${month}`);
    }
    
    if (day < 1 || day > 31) {
      throw new Error(`Invalid day: ${day}`);
    }

    const date = new Date(year, month - 1, day);
    return this.generateDefaultTime(date);
  }

  private parseUSDate(input: string): Date {
    const parts = input.split('-').map(Number);
    if (parts.length !== 3) {
      throw new Error(`Invalid US date format: ${input}`);
    }
    
    const [month, day, year] = parts;
    
    if (!year || !month || !day) {
      throw new Error(`Invalid date parts: ${input}`);
    }
    
    if (month < 1 || month > 12) {
      throw new Error(`Invalid month: ${month}`);
    }
    
    if (day < 1 || day > 31) {
      throw new Error(`Invalid day: ${day}`);
    }

    const date = new Date(year, month - 1, day);
    return this.generateDefaultTime(date);
  }

  private parseYearOnly(input: string): Date {
    const year = Number(input);
    const date = new Date(year, 0, 1); // January 1st
    return this.generateDefaultTime(date);
  }

  private parseYearMonth(input: string): Date {
    const parts = input.split('-').map(Number);
    if (parts.length !== 2) {
      throw new Error(`Invalid year-month format: ${input}`);
    }
    
    const [year, month] = parts;
    
    if (!year || !month) {
      throw new Error(`Invalid year-month parts: ${input}`);
    }
    
    if (month < 1 || month > 12) {
      throw new Error(`Invalid month: ${month}`);
    }

    const date = new Date(year, month - 1, 15); // 15th of the month
    return this.generateDefaultTime(date);
  }
}