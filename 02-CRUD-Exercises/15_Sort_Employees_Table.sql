USE Softuni;

SELECT 
	EmployeeID AS ID,
	FirstName AS 'First Name',
	LastName AS 'Last Name',
	MiddleName AS 'Middle Name',
	JobTitle AS 'Job Title',
	DepartmentID AS ' Dept ID',
	ManagerID AS 'Mngr ID',
	HireDate AS 'Hire Date',
	Salary,
	AddressID
FROM Employees
ORDER BY Salary DESC, FirstName, LastName DESC, MiddleName