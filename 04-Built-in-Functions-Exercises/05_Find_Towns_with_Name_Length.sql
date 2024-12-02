SELECT [Name]
  FROM [SoftUni].[dbo].[Towns]
  WHERE LEN([Name]) IN (5, 6)
  ORDER BY [Name];
