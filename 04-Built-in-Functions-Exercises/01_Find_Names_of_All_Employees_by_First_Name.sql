SELECT [FirstName]
      ,[LastName]
  FROM [SoftUni].[dbo].[Employees]
  WHERE LEFT([FirstName], 2) = 'Sa';
