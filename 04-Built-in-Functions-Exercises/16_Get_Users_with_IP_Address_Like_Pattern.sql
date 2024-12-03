SELECT [Username]
      ,[IpAddress]
  FROM [Diablo].[dbo].[Users]
  WHERE [IpAddress] LIKE '___.1%.%.___'
  ORDER BY [Username]