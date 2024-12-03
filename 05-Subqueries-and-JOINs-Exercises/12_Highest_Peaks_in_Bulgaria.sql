SELECT 
      c.[CountryCode]
      ,m.[MountainRange]
      ,p.[PeakName]
      ,p.[Elevation]
  FROM [Geography].[dbo].[Countries] AS c
  JOIN [Geography].[dbo].[MountainsCountries] AS mc ON mc.[CountryCode] = c.[CountryCode]
  JOIN [Geography].[dbo].[Mountains] AS m ON m.[Id] = mc.[MountainId]
  JOIN [Geography].[dbo].[Peaks] AS p ON p.MountainId = m.[Id]
  WHERE c.[CountryName] = 'Bulgaria' AND p.[Elevation] > 2835
  ORDER BY p.[Elevation] DESC