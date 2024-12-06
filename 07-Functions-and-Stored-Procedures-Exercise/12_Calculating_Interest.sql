CREATE OR ALTER PROCEDURE usp_CalculateFutureValueForAccount 
(
	@accountId INT,
	@rate FLOAT
)
AS
BEGIN
	DECLARE @years INT = 5;
	SELECT 
		   a.[Id] AS [Accoun Id]
		  ,ah.[FirstName] AS [First Name]
		  ,ah.[LastName] AS [Last Name]
		  ,a.[Balance] AS [Current Balance]
		  ,dbo.ufn_CalculateFutureValue(a.[Balance], @rate, @years) AS [Balance in 5 years]
	  FROM [Bank].[dbo].[AccountHolders] AS ah
	  JOIN [Bank].[dbo].[Accounts] AS a ON a.[AccountHolderId] = ah.[Id]
	  WHERE ah.Id = @accountId
END;

GO

EXEC usp_CalculateFutureValueForAccount @accountId=1, @rate=0.1;