SELECT
      [DepartmentID]
	  ,SUM([Salary]) AS [TotalSalary]
  FROM [SoftUni].[dbo].[Employees]
  GROUP BY [DepartmentID]
  ORDER BY [DepartmentID]
