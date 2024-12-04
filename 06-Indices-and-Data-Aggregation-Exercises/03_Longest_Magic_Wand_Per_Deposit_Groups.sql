SELECT 
      [DepositGroup]
      ,MAX([MagicWandSize]) AS [LongestMagicWand]
  FROM [Gringotts].[dbo].[WizzardDeposits]
  GROUP BY [DepositGroup]
