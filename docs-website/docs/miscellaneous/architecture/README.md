---
title: "Architecture Documentation"
description: Auto-generated from README.md
---

# Architecture Documentation

**Last Updated:** 2025-07-23  
**Status:** Core architecture complete and documented

## System Architecture Overview

The Media Processing Pipeline uses a modular, service-oriented architecture designed for processing 150,000+ photos with zero data loss and production-grade reliability.

## Core System Components

### Error Handling & Logging
- **[Error System](error-system.md)** - Structured MPP-* error codes with semantic methods
- **[Logging System](logging-system.md)** - Component-scoped colored logging
- **[Path System](path-system.md)** - Security-first path resolution and sanitization

### File & Data Management
- **[Filesystem Service](filesystem-service.md)** - Centralized file operations
- **[Metadata Merge Strategy](metadata-merge-strategy.md)** - Intelligent merging with processing history
- **[Metadata Storage Architecture](metadata-storage-architecture.md)** - JSON sidecar vs database storage

### Database Architecture
- **[Database Schema Design](database-schema-design.md)** - Normalized relational design
- **[Database Migration Strategy](database-migration-strategy.md)** - Schema evolution approach
- **[Normalized Location Architecture](normalized-location-architecture.md)** - Geographic foreign key relationships

### Processing Pipeline
- **[Enrichment Flow](enrichment-flow.md)** - GPS and landmark enrichment pipeline
- **[Live Photo Detection](live-photo-detection.md)** - Apple Live Photo identification

### Geographic & Location Services
- **[Geolocation System](geolocation-system.md)** - Location services and caching
- **[Recreation.gov ETL](recreation-gov-etl.md)** - Facility data integration
- **[Timezone Handling](timezone-handling.md)** - Temporal data processing

## Design Principles

### Production-Grade Quality
- **Zero data loss** - Comprehensive validation and rollback capabilities
- **Security first** - Path sanitization, structured logging without sensitive data
- **Type safety** - Semantic aliases instead of `any` types
- **Error resilience** - Structured error handling with recovery mechanisms

### Scalability & Performance
- **Modular processors** - Extensible image/video processing architecture
- **Service layer separation** - Clean boundaries between components
- **Database optimization** - Normalized schema with appropriate indexing
- **Parallel processing** - Multi-core utilization for batch operations

### Maintainability
- **Component isolation** - Each processor has dedicated logger and error factory
- **Comprehensive documentation** - Architecture decisions documented with rationale
- **Test coverage** - Critical paths covered with comprehensive mocking
- **Code quality gates** - ESLint, TypeScript, testing requirements

## Key Architectural Decisions

### Database-First Approach
- **Relational storage** over file-based JSON for complex queries
- **Foreign key relationships** for geographic data normalization
- **Migration system** for schema evolution
- **Backup/restore** capabilities for data protection

### Service-Oriented Design
- **LocationService** - Geographic data management
- **LandmarkService** - Recreation facilities and points of interest
- **MediaFileService** - Photo/video metadata operations
- **EquipmentService** - Camera and device information

### Processing Architecture
- **Router-based dispatch** - MIME type detection for processor selection
- **Pre/post processing** - Validation and enrichment phases
- **Extensible processors** - ImageProcessor, VideoProcessor, HeritageProcessor
- **Pipeline orchestration** - Coordinated processing flow

## Integration Architecture

### External Service Integration
- **Recreation.gov API** - Facility data enrichment
- **GNIS Database** - Geographic feature lookups
- **Geolocation Services** - Reverse geocoding
- **National Parks Service** - Park facility information

### File Format Support
- **Image formats:** JPEG, HEIC, PNG, GIF
- **Video formats:** MOV, MP4 (with GPS corruption fix)
- **Metadata formats:** EXIF, XMP, JSON sidecars
- **Apple formats:** Live Photos, HEIC with orientation

## Security Architecture

### Path Security
- **Sanitization** for all logged paths
- **Absolute path validation** 
- **Directory traversal prevention**
- **Sensitive data protection** in error messages

### Data Protection
- **Read-only processing** - Original files never modified
- **Sidecar storage** - Metadata stored separately
- **Database isolation** - Media data separated from reference data
- **Backup requirements** - Critical data protection protocols

## Performance Architecture

### Optimization Strategies
- **Parallel processing** - Multi-worker photo processing
- **Efficient queries** - Optimized database operations
- **Caching strategies** - Geographic data caching
- **Resource management** - Memory and CPU utilization monitoring

### Scalability Considerations
- **Horizontal scaling** potential for processor workers
- **Database partitioning** strategies for large collections
- **Storage optimization** - Deduplication and compression
- **Network efficiency** - Batch API operations

For detailed technical specifications, refer to individual architecture documents in this directory.