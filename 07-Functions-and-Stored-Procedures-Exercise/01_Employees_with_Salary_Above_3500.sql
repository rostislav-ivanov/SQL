CREATE OR ALTER PROCEDURE usp_GetEmployeesSalaryAbove35000 
	@SalaryAbove MONEY = 35000
AS
BEGIN
	SELECT 
       [FirstName]
      ,[LastName]
  FROM [SoftUni].[dbo].[Employees]
  WHERE [Salary] > @SalaryAbove
END;

EXEC usp_GetEmployeesSalaryAbove35000;
EXEC usp_GetEmployeesSalaryAbove35000 @SalaryAbove = 55000;