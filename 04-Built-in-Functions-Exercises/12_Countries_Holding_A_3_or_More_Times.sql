SELECT [CountryName] AS [Country Name]
      ,[IsoCode] AS [Iso Code]
  FROM [Geography].[dbo].[Countries]
  WHERE LEN([CountryName]) - LEN(REPLACE(UPPER([CountryName]), 'A', '')) >= 3
  ORDER BY [IsoCode]; 