SELECT [TownID]
      ,[Name]
  FROM [SoftUni].[dbo].[Towns]
  WHERE LEFT([Name], 1) NOT IN ('R', 'D', 'B')
  ORDER BY [Name];