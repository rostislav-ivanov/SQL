SELECT e.[EmployeeID]
      ,[FirstName]
      ,CASE
		WHEN DATEPART(YEAR, p.[StartDate]) >= 2005 THEN NULL
		ELSE p.[Name]
	  END AS [ProjectName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[EmployeesProjects] AS ep ON ep.[EmployeeID] = e.[EmployeeID]
  JOIN [SoftUni].[dbo].[Projects] AS p ON p.[ProjectID] = ep.[ProjectID]
  WHERE e.[EmployeeID] = 24;