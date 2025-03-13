--- 📂 src/job_log.sql - Bitácora de ejecuciones de Jobs en SQL Server

-- Obtener Jobs y última ejecución
SELECT j.name AS JobName, h.run_date, h.run_time, h.run_status
FROM msdb.dbo.sysjobs j
JOIN msdb.dbo.sysjobhistory h ON j.job_id = h.job_id
WHERE h.step_id = 0;