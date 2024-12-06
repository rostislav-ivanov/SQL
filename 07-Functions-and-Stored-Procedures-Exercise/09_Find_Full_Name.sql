CREATE OR ALTER PROCEDURE usp_GetHoldersFullName 
AS
BEGIN
	SELECT
		  CONCAT_WS(' ', [FirstName], [LastName]) AS 'Full Name'
	  FROM [Bank].[dbo].[AccountHolders]
END;

GO

EXEC usp_GetHoldersFullName;
