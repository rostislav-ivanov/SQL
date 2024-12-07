SELECT b.[Id]
      ,b.[Name]
      ,[YearPublished]
	  ,c.[Name]
  FROM [Boardgames] AS b
  JOIN [Categories] AS c ON c.Id = b.CategoryId
  WHERE c.[Name] IN ('Strategy Games', 'Wargames')
  ORDER BY [YearPublished] DESC