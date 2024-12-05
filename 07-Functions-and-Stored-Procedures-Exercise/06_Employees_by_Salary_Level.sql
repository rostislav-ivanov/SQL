

CREATE OR ALTER PROCEDURE usp_EmployeesBySalaryLevel 
	@salaryLevel NVARCHAR(10)
AS
BEGIN
	SELECT 
       [FirstName]
      ,[LastName]
  FROM [SoftUni].[dbo].[Employees]
  WHERE dbo.ufn_GetSalaryLevel([Salary]) = @salaryLevel
  
END;

GO

EXEC usp_EmployeesBySalaryLevel 'High';

