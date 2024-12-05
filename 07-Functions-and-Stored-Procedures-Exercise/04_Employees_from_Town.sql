CREATE OR ALTER PROCEDURE usp_GetEmployeesFromTown 
	@townName VARCHAR(50) = ''
AS
BEGIN
	SELECT 
		   [FirstName]
		  ,[LastName]
		  ,t.Name
	  FROM [SoftUni].[dbo].[Employees] AS e
	  JOIN [SoftUni].[dbo].[Addresses] AS a ON a.[AddressID] = e.[AddressID]
	  JOIN [SoftUni].[dbo].[Towns] AS t ON t.[TownID] = a.[TownID]
	  WHERE t.[Name] = @townName
END;

GO

EXEC usp_GetEmployeesFromTown 'Sofia'