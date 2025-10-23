-- Initialization script to enable extensions
-- This script will be executed automatically when the container is created

-- Check PostgreSQL version
SELECT version();

-- Create PostGIS extensions (compiled manually)
CREATE EXTENSION IF NOT EXISTS postgis;
CREATE EXTENSION IF NOT EXISTS postgis_topology;
CREATE EXTENSION IF NOT EXISTS fuzzystrmatch;
CREATE EXTENSION IF NOT EXISTS postgis_tiger_geocoder;

-- Create pgvector extension
CREATE EXTENSION IF NOT EXISTS vector;

-- Check if the extensions were installed correctly
SELECT
    extname AS "Extension",
    extversion AS "Version",
    extrelocatable AS "Relocatable"
FROM pg_extension
WHERE extname IN ('postgis', 'vector', 'postgis_topology', 'fuzzystrmatch', 'postgis_tiger_geocoder')
ORDER BY extname;

-- Check specific versions of libraries
SELECT PostGIS_Full_Version();

-- Final information
\echo '✅ PostGIS and pgvector extensions installed and configured!'
\echo ' pgvector: Vector similarity search'
\echo ''
\echo '📍 PostGIS: Geospatial data'