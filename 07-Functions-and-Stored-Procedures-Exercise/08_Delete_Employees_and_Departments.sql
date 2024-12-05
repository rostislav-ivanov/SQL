CREATE OR ALTER PROCEDURE usp_DeleteEmployeesFromDepartment 
(
	@departmentId INT
) 
AS
BEGIN
	DECLARE @EmployeeIDs TABLE (EmployeeID INT);

    INSERT INTO @EmployeeIDs (EmployeeID)
    SELECT [EmployeeID]
    FROM [Employees]
    WHERE [DepartmentID] = @departmentId;

	DELETE FROM [EmployeesProjects]
	WHERE [EmployeeID] IN (SELECT EmployeeID FROM @EmployeeIDs);

	UPDATE [Employees]
	SET [ManagerID] = NULL
	WHERE [ManagerID] IN (SELECT EmployeeID FROM @EmployeeIDs);		

	ALTER TABLE Departments
	ALTER COLUMN ManagerID INT NULL;

	UPDATE [Departments]
	SET [ManagerID] = NULL
	WHERE [ManagerID] IN (SELECT EmployeeID FROM @EmployeeIDs);	

	DELETE FROM [Employees]
	WHERE [DepartmentID] = @departmentId;	

	DELETE FROM [Departments]
	WHERE [DepartmentID] = @departmentId;	

	SELECT 
		[DepartmentID]
		,COUNT(*) AS 'CountOfEmployees'
	FROM [Employees]
	GROUP BY [DepartmentID]

END;

GO


BEGIN TRANSACTION
EXEC usp_DeleteEmployeesFromDepartment 1
ROLLBACK TRANSACTION
