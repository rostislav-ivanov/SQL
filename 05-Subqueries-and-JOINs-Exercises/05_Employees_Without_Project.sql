SELECT TOP (3) e.[EmployeeID]
      ,[FirstName]
  FROM [SoftUni].[dbo].[Employees] AS e
  LEFT JOIN [SoftUni].[dbo].[EmployeesProjects] AS ep ON ep.[EmployeeID] = e.[EmployeeID]
  WHERE ep.ProjectID IS NULL
