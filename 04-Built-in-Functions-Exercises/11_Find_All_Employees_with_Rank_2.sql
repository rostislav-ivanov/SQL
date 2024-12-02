SELECT * FROM
(
	SELECT [EmployeeID]
		  ,[FirstName]
		  ,[LastName]
		  ,[Salary]
		  ,DENSE_RANK() OVER (PARTITION BY [Salary] ORDER BY [EmployeeID]) AS [Rank]
	  FROM [SoftUni].[dbo].[Employees]
) AS [Ranking]
WHERE [Ranking].[Rank] = 2
ORDER BY [Ranking].[Salary] DESC
