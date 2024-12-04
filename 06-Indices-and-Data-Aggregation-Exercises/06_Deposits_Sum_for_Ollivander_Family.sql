SELECT 
      [DepositGroup]
	  ,SUM([DepositAmount]) AS [TotalSum]
  FROM [Gringotts].[dbo].[WizzardDeposits]
  WHERE [MagicWandCreator] = 'Ollivander family'
  GROUP BY [DepositGroup]