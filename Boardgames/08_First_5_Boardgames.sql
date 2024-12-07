SELECT TOP (5)
       b.[Name]
      ,[Rating]
      ,c.[Name] AS [CategoryName]
  FROM [Boardgames] AS b
  JOIN [Categories] AS c ON c.[Id] = b.[CategoryId]
  JOIN [PlayersRanges] AS r ON r.Id = b.PlayersRangeId
  WHERE 
	(b.[Rating] > 7 AND CHARINDEX('a', b.[Name]) > 0)
	OR (b.[Rating] > 7.5 AND r.PlayersMin = 2 AND r.PlayersMax = 5)
  ORDER BY b.[Name], b.[Rating] DESC