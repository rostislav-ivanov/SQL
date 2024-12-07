SELECT 
      CONCAT_WS(' ', c.[FirstName], c.[LastName]) AS [FullName]
      ,c.[Email]
	  ,MAX(b.[Rating]) AS [Rating]
  FROM [Creators] AS c
  JOIN [CreatorsBoardgames] AS cb ON cb.[CreatorId] = c.[Id]
  JOIN [Boardgames] AS b ON b.[Id] = cb.[BoardgameId]
  WHERE RIGHT(c.[Email], 4) = '.com'
  GROUP BY c.[Id], c.[FirstName], c.[LastName], c.[Email]
  ORDER BY [FullName]