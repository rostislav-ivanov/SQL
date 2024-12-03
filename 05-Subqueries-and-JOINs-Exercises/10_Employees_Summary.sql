SELECT e.[EmployeeID]
      ,CONCAT_WS(' ', e.[FirstName], e.[MiddleName], e.[LastName]) AS [EmployeeName]
	  ,CONCAT_WS(' ', m.[FirstName], m.[MiddleName], m.[LastName]) AS [ManagerName]
      ,d.[Name] AS [DepartmentName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Employees] AS m ON m.[EmployeeID] = e.[ManagerID]
  JOIN [SoftUni].[dbo].[Departments] AS d ON d.[DepartmentID] = e.[DepartmentID]
  ORDER BY e.[EmployeeID];
