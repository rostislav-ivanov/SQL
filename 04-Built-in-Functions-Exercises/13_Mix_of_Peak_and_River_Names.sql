SELECT 
      [PeakName]
      ,[RiverName]
      ,LEFT(LOWER([PeakName]), LEN(LOWER([PeakName])) - 1) + LOWER([RiverName]) AS [Mix]
  FROM [Geography].[dbo].[Peaks], [Geography].[dbo].[Rivers]
  WHERE RIGHT([PeakName], 1) = LEFT(LOWER([RiverName]), 1)
