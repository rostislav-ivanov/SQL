SELECT TOP (5) [EmployeeID]
      ,[FirstName]
      ,[Salary]
      ,d.[Name] AS [DepartmentName]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Departments] AS d ON d.DepartmentID = e.DepartmentID
  WHERE e.[Salary] > 15000
  ORDER BY d.DepartmentID
