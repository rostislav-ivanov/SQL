SELECT
	con.[ContinentCode],
	con.[CurrencyCode],
	con.[CurrencyUsage]
FROM
	(SELECT [ContinentCode] 
		  ,[CurrencyCode]
		  ,COUNT(CurrencyCode) AS CurrencyUsage
		  ,DENSE_RANK() OVER(PARTITION BY ContinentCode ORDER BY COUNT(CurrencyCode) DESC) AS [Rank]
	  FROM [Geography].[dbo].[Countries]
	  GROUP BY [ContinentCode], [CurrencyCode] 
	  HAVING COUNT(CurrencyCode) > 1) AS con
WHERE con.[Rank] = 1
ORDER BY con.ContinentCode



