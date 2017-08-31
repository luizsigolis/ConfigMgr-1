
USE ReportServer
GO
ALTER DATABASE ReportServer
SET RECOVERY SIMPLE;
GO
-- shrink to 1 TB
DBCC SHRINKFILE ('ReportServer_log', 1048576, TRUNCATEONLY)
GO
-- optional
ALTER DATABASE ReportServer  
SET RECOVERY FULL;  
GO  