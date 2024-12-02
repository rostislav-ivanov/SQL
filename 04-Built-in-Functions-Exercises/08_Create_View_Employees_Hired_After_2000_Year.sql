CREATE VIEW V_EmployeesHiredAfter2000 AS
(
	SELECT TOP (1000) [EmployeeID]
		  ,[FirstName]
		  ,[LastName]
		  ,[MiddleName]
		  ,[JobTitle]
		  ,[DepartmentID]
		  ,[ManagerID]
		  ,[HireDate]
		  ,[Salary]
		  ,[AddressID]
	  FROM [SoftUni].[dbo].[Employees]
	  WHERE DATEPART(YEAR, [HireDate]) > 2000
);
