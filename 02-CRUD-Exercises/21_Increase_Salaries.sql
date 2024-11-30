USE SoftUni;

-- save data
SELECT * INTO #Temp FROM Employees;

-- change data
UPDATE Employees
SET Salary = Salary * 1.12
FROM Departments AS d
JOIN Employees AS e
ON e.DepartmentID = d.DepartmentID
WHERE d.Name IN ('Engineering','Tool Design','Marketing','Information Services');

SELECT Salary FROM Employees;


-- restore data
UPDATE Employees
SET Salary = t.Salary
FROM Employees AS e
JOIN #Temp AS t
ON e.EmployeeID = t.EmployeeID;

DROP TABLE #Temp;