SELECT TOP(1)
	  AVG([Salary]) AS [MinAverageSalary]
  FROM [SoftUni].[dbo].[Employees] 
  GROUP BY [DepartmentID]
  ORDER BY [MinAverageSalary]
