USE SoftUniDb;

BACKUP DATABASE SoftUniDb
TO DISK = 'D:\BackUpDatabases2\SoftUniDb.bak'
WITH INIT, FORMAT, NAME = 'SoftUniDb2';

GO

USE master
DROP DATABASE SoftUniDb;

GO

RESTORE DATABASE SoftUniDb2
FROM DISK = 'D:\BackUpDatabases\SoftUniDb.bak';