SELECT 
      [DepositGroup]
	  ,[MagicWandCreator]
	  ,MIN([DepositCharge]) AS [MinDepositCharge]
  FROM [Gringotts].[dbo].[WizzardDeposits]
  GROUP BY [DepositGroup], [MagicWandCreator]
