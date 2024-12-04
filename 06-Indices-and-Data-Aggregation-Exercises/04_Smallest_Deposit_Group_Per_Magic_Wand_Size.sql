SELECT TOP(2)
      [DepositGroup]
  FROM [Gringotts].[dbo].[WizzardDeposits]
  GROUP BY [DepositGroup]
  ORDER BY AVG([MagicWandSize]) 