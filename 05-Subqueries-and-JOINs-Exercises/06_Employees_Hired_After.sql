SELECT [FirstName]
      ,[LastName]
      ,[HireDate]
      ,d.[Name] AS [DeptName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Departments] AS d ON d.DepartmentID = e.DepartmentID
  WHERE [HireDate] >= '1999-01-01' AND d.[Name] IN ('Sales', 'Finance')
  ORDER BY [HireDate]
