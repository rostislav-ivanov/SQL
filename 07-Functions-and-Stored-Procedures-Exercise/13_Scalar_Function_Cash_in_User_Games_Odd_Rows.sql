CREATE OR ALTER FUNCTION ufn_CashInUsersGames(@gameName NVARCHAR(50))
RETURNS TABLE 
AS
RETURN (SELECT
			SUM(s.[Cash]) AS 'SumCash'
		FROM(
			SELECT 
				[GameId]
				,[Cash]
				,ROW_NUMBER() OVER (PARTITION BY[GameId] ORDER BY [Cash] DESC) AS [RowNumber]
			FROM [Diablo].[dbo].[UsersGames] AS ug
			JOIN [Diablo].[dbo].[Games] AS g ON g.[Id] = ug.[GameId]
			WHERE g.[Name] = @gameName) AS s
		WHERE s.[RowNumber] % 2 <> 0
);
		


GO

SELECT * FROM dbo.ufn_CashInUsersGames('Love in a mist');