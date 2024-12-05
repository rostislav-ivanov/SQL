SELECT
      [DepartmentID]
	  ,AVG([Salary]) AS [AverageSalary]
INTO [DepartmantAverageSalary]
FROM [SoftUni].[dbo].[Employees]
GROUP BY [DepartmentID];


SELECT TOP(10)
	e.[FirstName]
	,e.[LastName]
	,das.[DepartmentID]
FROM [SoftUni].[dbo].[Employees] AS e
JOIN [DepartmantAverageSalary] AS das ON das.[DepartmentID] = e.[DepartmentID]
WHERE e.[Salary] > das.AverageSalary
ORDER BY DepartmentID;

DROP TABLE [DepartmantAverageSalary];

--------------------------------------------------------------------------

SELECT TOP 10
	e.FirstName,
	e.LastName,
	e.DepartmentID
	--e.Salary,
	--a.AvgSalary
FROM Employees AS e
	JOIN (
		SELECT
			DepartmentID,
			AVG(Salary) AS AvgSalary
		FROM Employees
		GROUP BY DepartmentID) AS a ON a.DepartmentID = e.DepartmentID
WHERE e.Salary > a.AvgSalary
ORDER BY e.DepartmentID

-----------------------------------------------------------------------------------------
SELECT TOP (10) E.FirstName, E.LastName, E.DepartmentID
FROM Employees AS E
WHERE E.Salary >
      (
          SELECT AVG(Salary) AS AverageSalary
          FROM Employees AS eAverageSalary
          WHERE eAverageSalary.DepartmentID = E.DepartmentID
          GROUP BY DepartmentID)
ORDER BY DepartmentID
