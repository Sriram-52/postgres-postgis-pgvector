# PostgreSQL with PostGIS and pgvector

A Docker-based PostgreSQL setup with PostGIS (geospatial data) and pgvector (vector similarity search) extensions compiled from source.

## Features

- **PostgreSQL 15**: Latest stable version
- **PostGIS 3.4.2**: Full geospatial database capabilities
- **pgvector 0.7.4**: Vector similarity search for AI/ML applications
- **Multi-stage Docker build**: Optimized image size
- **Health checks**: Automatic container health monitoring
- **Persistent storage**: Data persistence with Docker volumes

## Quick Start

1. **Clone and start the database:**
   ```bash
   docker-compose up -d
   ```

2. **Connect to the database:**
   ```bash
   docker-compose exec db psql -U postgres -d postgres
   ```


