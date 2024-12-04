SELECT 
	SUM(g.[DepositAmount] - h.[DepositAmount]) AS [SumDifference]
  FROM [Gringotts].[dbo].[WizzardDeposits] AS h
  JOIN [Gringotts].[dbo].[WizzardDeposits] AS g ON g.[Id] + 1 = h.[Id]
