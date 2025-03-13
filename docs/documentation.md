# 📂 docs/README.md - Documentación del Proyecto
"""
# 📊 Scaneo y Documentación de Paquetes SSIS y Bases de Datos

## 📌 Descripción del Proyecto

Este proyecto implementa una solución para el **análisis y documentación de paquetes SSIS en XML** y el **inventario de bases de datos en SQL Server**. Se obtiene información detallada sobre:

- **Orígenes y destinos de datos en SSIS**, incluyendo servidores, bases de datos, esquemas y tablas.
- **Usuarios de conectividad en los paquetes SSIS**.
- **Inventario de bases de datos**, con esquemas, tablas y columnas.
- **Bitácora de ejecución de Jobs en SQL Server**, detallando ejecuciones, pasos y resultados.

## 📂 Estructura del Proyecto
```
📁 SSIS_Inventory
│── 📂 src/
│   │── scan_ssis_xml.py  # Extracción de información desde XML de SSIS
│   │── inventory_db.sql  # Inventario de bases de datos y objetos en SQL Server
│   │── job_log.sql  # Bitácora de ejecuciones y pasos de Jobs en SQL Server
│── 📂 tests/
│   │── test_scan_ssis.py  # Pruebas de extracción de XML de SSIS
│   │── test_inventory_db.sql  # Pruebas de validación de bases de datos
│── 📂 docs/
│   │── README.md  # Documentación del proyecto
```

## 🚀 Instalación y Ejecución

1. **Clona este repositorio:**
   ```sh
   git clone https://github.com/emmacm20-lab/SSIS_Inventory.git
   ```
2. **Ejecuta el script para escaneo de paquetes SSIS en XML:**
   ```sh
   python src/scan_ssis_xml.py
   ```
3. **Ejecuta los scripts SQL para generar inventario de bases de datos:**
   ```sh
   sqlcmd -S servidor -d base_de_datos -i src/inventory_db.sql
   ```
4. **Obtiene la bitácora de Jobs ejecutados en SQL Server:**
   ```sh
   sqlcmd -S servidor -d base_de_datos -i src/job_log.sql
   ```

## 📩 Flujo de Trabajo
1. **Extracción de información desde los XML de SSIS**: Se identifican orígenes, destinos y configuraciones de conectividad.
2. **Inventario de Bases de Datos**: Se documentan servidores, esquemas, tablas y columnas.
3. **Registro de Ejecuciones**: Se almacena la bitácora de los Jobs de SQL Server y sus resultados.
4. **Generación de Reportes**: Se estructuran los datos obtenidos en tablas SQL para auditoría y análisis.

## 🛠 Tecnologías Utilizadas
- **Python**: Extracción de datos desde XML de paquetes SSIS.
- **SQL Server (T-SQL)**: Generación de inventario y bitácora de Jobs.
- **SQL Server Agent**: Manejo de ejecución de Jobs y automatización.
- **PowerShell (opcional)**: Automatización de ejecución de scripts.

## 📈 Resultados Esperados
- 📌 **Documentación detallada de la configuración de paquetes SSIS.**
- 📌 **Inventario actualizado de bases de datos, esquemas y objetos.**
- 📌 **Registro de ejecuciones y auditoría de Jobs en SQL Server.**
- 📌 **Facilitación de la administración y monitoreo de entornos SQL.**

## 🧪 Pruebas
El proyecto incluye pruebas en SQL y Python para validar la extracción y el inventario.
1. **Ejecución de pruebas en XML:**
   ```sh
   python -m unittest discover tests/
   ```
2. **Validación de estructura de bases de datos:**
   ```sh
   sqlcmd -S servidor -d base_de_datos -i tests/test_inventory_db.sql
   ```

## 📬 Contacto
Para consultas o sugerencias, contáctame en [emmanuel.cmora20@gmail.com](mailto:emmanuel.cmora20@gmail.com).
"""
