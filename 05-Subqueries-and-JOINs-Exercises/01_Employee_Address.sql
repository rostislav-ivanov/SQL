SELECT TOP (5) [EmployeeID]
      ,[JobTitle]
      ,a.[AddressID]
	  ,a.[AddressText]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Addresses] AS a ON e.AddressID = a.AddressID
  ORDER BY a.[AddressID];