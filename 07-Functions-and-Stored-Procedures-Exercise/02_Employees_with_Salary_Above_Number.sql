CREATE OR ALTER PROCEDURE usp_GetEmployeesSalaryAboveNumber 
	@TargetSalary DECIMAL(18,4)
AS
BEGIN
	SELECT 
		   [FirstName]
		  ,[LastName]
	  FROM [SoftUni].[dbo].[Employees]
	  WHERE [Salary] >= @TargetSalary
END;

GO

EXEC usp_GetEmployeesSalaryAboveNumber @TargetSalary = 10000;


