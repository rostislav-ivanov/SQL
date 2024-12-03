SELECT TOP (5) e.[EmployeeID]
      ,[FirstName]
      ,p.[Name] AS [ProjectName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[EmployeesProjects] AS ep ON ep.[EmployeeID] = e.[EmployeeID]
  JOIN [SoftUni].[dbo].[Projects] AS p ON p.[ProjectID] = ep.[ProjectID]
  WHERE p.[StartDate] > '2002-08-13' AND p.[EndDate] IS NULL
  ORDER BY e.[EmployeeID];