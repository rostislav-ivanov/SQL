SELECT TOP (50) 
       [FirstName]
      ,[LastName]
      ,t.[Name] AS [Town]
      ,a.[AddressText]
  FROM [SoftUni].[dbo].[Employees] AS e
  JOIN [SoftUni].[dbo].[Addresses] AS a ON e.[AddressID] = a.[AddressID]
  JOIN [SoftUni].[dbo].[Towns] AS t ON a.[TownID] = t.[TownID]
  ORDER BY e.[FirstName];

