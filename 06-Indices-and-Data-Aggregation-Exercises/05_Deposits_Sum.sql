SELECT 
      [DepositGroup]
	  ,SUM([DepositAmount]) AS [TotalSum]
  FROM [Gringotts].[dbo].[WizzardDeposits]
  GROUP BY [DepositGroup]