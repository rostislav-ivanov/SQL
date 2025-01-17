USE SoftUni;

GO

CREATE VIEW V_EmployeeNameJobTitle
AS
SELECT
	CONCAT_WS(' ', FirstName, MiddleName, LastName) AS 'Full Name',
	JobTitle AS 'JobTitle'
FROM Employees

GO

SELECT * FROM V_EmployeeNameJobTitle;