SELECT [EmployeeID]
      ,[FirstName]
      ,[LastName]
      ,d.[Name] AS [DepartmentName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Departments] AS d ON d.[DepartmentID] = e.[DepartmentID]
  WHERE d.[Name] = 'Sales'
  ORDER BY e.[EmployeeID]
