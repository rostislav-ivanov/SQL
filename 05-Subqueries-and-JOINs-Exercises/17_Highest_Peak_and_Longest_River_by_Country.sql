SELECT TOP (5) c.[CountryName]
      ,MAX(p.[Elevation]) AS [HighestPeakElevation]
	  ,MAX(r.[Length]) AS [LongestRiverLength]
  FROM [Geography].[dbo].[Countries] AS c
  LEFT JOIN [Geography].[dbo].[MountainsCountries] AS mc ON mc.[CountryCode] = c.[CountryCode]
  LEFT JOIN [Geography].[dbo].[Peaks] AS p ON p.[MountainId] = mc.[MountainId]
  LEFT JOIN [Geography].[dbo].[CountriesRivers] AS cr ON cr.[CountryCode] = c.[CountryCode]
  LEFT JOIN [Geography].[dbo].[Rivers] AS r ON r.[Id] = cr.[RiverId]
  GROUP BY c.[CountryCode], c.[CountryName] 
  ORDER BY [HighestPeakElevation] DESC, [LongestRiverLength] DESC