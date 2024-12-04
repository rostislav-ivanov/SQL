SELECT
	dt.[DepartmentID]
	,MAX(dt.[Salary])
FROM(
	SELECT 
		  [DepartmentID]
		  ,[Salary]
		  ,DENSE_RANK() OVER (PARTITION BY [DepartmentID] ORDER BY [Salary] DESC) AS [SalaryRank]
	  FROM [SoftUni].[dbo].[Employees]) AS dt
WHERE [SalaryRank] = 3
GROUP BY dt.[DepartmentID]