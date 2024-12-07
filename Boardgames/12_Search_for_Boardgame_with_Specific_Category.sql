CREATE PROCEDURE usp_SearchByCategory
(
	@category VARCHAR(50)
)
AS
BEGIN
	SELECT b.[Name]
		  ,[YearPublished]
		  ,[Rating]
		  ,c.[Name] AS [CategoryName]
		  ,p.[Name] AS [PublisherName]
		  ,CONCAT_WS(' ', r.[PlayersMin], 'people') AS [MinPlayers]
		  ,CONCAT_WS(' ', r.[PlayersMax], 'people') AS [MaxPlayers]
	  FROM [Boardgames] AS b
	  JOIN [Categories] AS c ON c.[Id] = b.[CategoryId]
	  JOIN [Publishers] AS p ON p.[Id] = b.[PublisherId]
	  JOIN [PlayersRanges] AS r ON r.[Id] = b.[PlayersRangeId]
	  WHERE c.[Name] = @category
	  ORDER BY [PublisherName], [YearPublished] DESC;
END;

GO

EXEC dbo.usp_SearchByCategory 'Wargames'