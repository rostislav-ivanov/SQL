SELECT *
INTO [TempEmployees]
FROM [Employees]
WHERE [Salary] > 30000;

DELETE FROM [TempEmployees]
WHERE [ManagerID] = 42;

UPDATE [TempEmployees]
SET [Salary] = [Salary] + 5000
WHERE [DepartmentID] = 1;

SELECT
	[DepartmentID]
	,AVG([Salary]) AS [AverageSalary]
FROM [TempEmployees]
GROUP BY [DepartmentID]

