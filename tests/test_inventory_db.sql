--- 📂 tests/test_inventory_db.sql - Pruebas para validación de bases de datos

-- Verifica que existen bases de datos registradas
SELECT COUNT(*) AS TotalDatabases FROM sys.databases;

-- Verifica que hay al menos una tabla en el inventario
SELECT COUNT(*) AS TotalTables FROM INFORMATION_SCHEMA.TABLES;