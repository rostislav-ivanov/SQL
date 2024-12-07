SELECT 
      c.[LastName]
	  ,CEILING(AVG(b.[Rating])) AS AverageRating
	  ,p.[Name] AS PublisherName
  FROM [Creators] AS c
  JOIN [CreatorsBoardgames] AS cb ON cb.[CreatorId] = c.[Id]
  JOIN [Boardgames] AS b ON b.[Id] = cb.[BoardgameId]
  JOIN [Publishers] as p ON p.Id = b.[PublisherId]
  GROUP BY c.[Id], c.[LastName], p.[Name]
  HAVING p.[Name] = 'Stonemaier Games'
  ORDER BY AVG(b.[Rating]) DESC;