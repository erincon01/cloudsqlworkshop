USE MASTER;
GO
DROP DATABASE IF EXISTS AdventureWorks2019;
GO
RESTORE FILELISTONLY FROM DISK = 'C:\Users\adminsqlvm\Desktop\files\AdventureWorks2019.bak';
GO
RESTORE DATABASE AdventureWorks2019 FROM DISK = 'C:\Users\adminsqlvm\Desktop\files\AdventureWorks2019.bak'
WITH MOVE 'AdventureWorks2019' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorks2019.mdf',
MOVE 'AdventureWorks2019_log' TO 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\AdventureWorks2019.ldf';
GO

-- https://learn.microsoft.com/es-es/sql/samples/adventureworks-install-configure?view=sql-server-ver16&tabs=ssms
-- icacls "C:\Users\adminsqlvm\Desktop\files" /grant "NT Service\MSSQLSERVER":(OI)(CI)R /T
