SELECT [Id]
      ,CONCAT_WS(' ', [FirstName], [LastName]) AS CreatorName
      ,[Email]
	  ,cb.BoardgameId
  FROM [Creators] AS c
  LEFT JOIN [CreatorsBoardgames] AS cb ON cb.CreatorId = c.Id
  WHERE cb.[BoardgameId] IS NULL
  ORDER BY CreatorName;