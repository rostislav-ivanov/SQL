SELECT [FirstName]
      ,[LastName]
  FROM [SoftUni].[dbo].[Employees]
  WHERE [JobTitle] NOT LIKE '%engineer%';