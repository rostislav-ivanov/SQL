SELECT e.[EmployeeID]
      ,e.[FirstName]
	  ,m.[EmployeeID]
      ,m.[FirstName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Employees] AS m ON m.[EmployeeID] = e.[ManagerID]
  WHERE m.[EmployeeID] IN (3, 7)
  ORDER BY e.[EmployeeID];
