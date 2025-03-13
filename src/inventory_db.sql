---- 📂 src/inventory_db.sql - Inventario de bases de datos en SQL Server

-- Obtener todas las bases de datos
SELECT name AS DatabaseName FROM sys.databases;

-- Obtener esquemas y tablas por base de datos
SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES;

-- Obtener columnas por tabla
SELECT TABLE_CATALOG, TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME, DATA_TYPE FROM INFORMATION_SCHEMA.COLUMNS;