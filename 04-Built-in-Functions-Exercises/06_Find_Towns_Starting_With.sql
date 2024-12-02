SELECT [TownID]
      ,[Name]
  FROM [SoftUni].[dbo].[Towns]
  WHERE LEFT([Name], 1) IN ('M', 'K', 'B' ,'E')
  ORDER BY [Name];