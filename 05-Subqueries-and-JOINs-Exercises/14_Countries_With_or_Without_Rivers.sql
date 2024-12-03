SELECT TOP (5) c.[CountryName]
      ,r.[RiverName]
  FROM [Geography].[dbo].[Countries] AS c
  LEFT JOIN [Geography].[dbo].[CountriesRivers] AS cr ON cr.[CountryCode] = c.[CountryCode]
  LEFT JOIN [Geography].[dbo].[Rivers] AS r ON r.[Id] = cr.[RiverId]
  JOIN [Geography].[dbo].[Continents] AS con ON con.[ContinentCode] = c.[ContinentCode]
  WHERE con.[ContinentName] = 'Africa'
  ORDER BY c.[CountryName];
