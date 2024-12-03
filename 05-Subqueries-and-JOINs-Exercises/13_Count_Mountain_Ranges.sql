SELECT c.[CountryCode]
      ,COUNT(*) AS [MountainRanges]
  FROM [Geography].[dbo].[Countries] AS c
  JOIN [Geography].[dbo].[MountainsCountries] AS cm ON cm.[CountryCode] = c.[CountryCode]
  WHERE c.[CountryName] IN ('United States', 'Russia ', 'Bulgaria')
  GROUP BY c.[CountryCode]
