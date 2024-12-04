SELECT 
	CASE
		WHEN [Age] BETWEEN 0 AND 10 THEN '[0-10]'
		WHEN [Age] BETWEEN 11 AND 20 THEN '[11-20]'
		WHEN [Age] BETWEEN 21 AND 30 THEN '[21-30]'
		WHEN [Age] BETWEEN 31 AND 40 THEN '[31-40]'
		WHEN [Age] BETWEEN 41 AND 50 THEN '[41-50]'
		WHEN [Age] BETWEEN 51 AND 60 THEN '[51-60]'
		WHEN [Age] > 60 THEN '[60+]'
	END AS [AgeGroup]
	,COUNT([Age]) AS [WizardCount]
FROM [Gringotts].[dbo].[WizzardDeposits]
GROUP BY 
	CASE
		WHEN [Age] BETWEEN 0 AND 10 THEN '[0-10]'
		WHEN [Age] BETWEEN 11 AND 20 THEN '[11-20]'
		WHEN [Age] BETWEEN 21 AND 30 THEN '[21-30]'
		WHEN [Age] BETWEEN 31 AND 40 THEN '[31-40]'
		WHEN [Age] BETWEEN 41 AND 50 THEN '[41-50]'
		WHEN [Age] BETWEEN 51 AND 60 THEN '[51-60]'
		WHEN [Age] > 60 THEN '[60+]'
	END
