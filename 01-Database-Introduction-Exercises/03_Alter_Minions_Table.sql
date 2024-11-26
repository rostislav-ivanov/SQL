USE Minions;

ALTER TABLE dbo.Minions
ADD TownId INT FOREIGN KEY REFERENCES dbo.Towns (Id);