SELECT 
	rs.[Country] 
	,ISNULL(rs.[PeakName], '(no highest peak)') AS [Highest Peak Name]
	,ISNULL(rs.[Elevation], 0) AS [Highest Peak Elevation]
	,ISNULL(rs.[MountainRange], '(no mountain)') AS [Mountain]
FROM (SELECT 
		  c.[CountryName] AS [Country]
		  ,DENSE_RANK() OVER (PARTITION BY c.[CountryName] ORDER BY p.[Elevation] DESC) AS [RankElevation]
		  ,p.[PeakName] 
		  ,p.[Elevation] 
		  ,m.[MountainRange] 
	  FROM [Geography].[dbo].[Countries] AS c
	  LEFT JOIN [Geography].[dbo].[MountainsCountries] AS mc ON mc.[CountryCode] = c.[CountryCode]
	  LEFT JOIN [Geography].[dbo].[Mountains] AS m ON m.[Id] = mc.[MountainId]
	  LEFT JOIN [Geography].[dbo].Peaks AS p ON p.[MountainId] = m.[Id]) AS rs
WHERE rs.[RankElevation] = 1
ORDER BY rs.[Country], rs.[PeakName]
