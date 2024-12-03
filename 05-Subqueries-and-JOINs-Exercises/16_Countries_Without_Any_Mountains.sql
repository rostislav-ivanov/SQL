SELECT 
      COUNT(*) AS 'Count'
  FROM [Geography].[dbo].[Countries] AS c
  LEFT JOIN [Geography].[dbo].[MountainsCountries] AS mc ON mc.[CountryCode] = c.[CountryCode]
  WHERE mc.[MountainId] IS NULL
