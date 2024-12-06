CREATE OR ALTER PROCEDURE usp_GetHoldersWithBalanceHigherThan 
(
	@targetMoney MONEY
)
AS
BEGIN
	SELECT
		   [FirstName]
		  ,[LastName]
	  FROM [Bank].[dbo].[AccountHolders] AS ah
	  JOIN [Bank].[dbo].[Accounts] AS a ON a.[AccountHolderId] = ah.[Id]
	  GROUP BY [FirstName], [LastName]
	  HAVING SUM(a.[Balance]) > @targetMoney
	  ORDER BY [FirstName], [LastName]
END;

GO

EXEC usp_GetHoldersWithBalanceHigherThan 50000