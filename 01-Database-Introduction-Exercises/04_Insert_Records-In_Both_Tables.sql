USE Minions;

INSERT INTO Towns([Name])
VALUES 
	('Sofia'),
	('Plovdiv'),
	('Varna');

GO

INSERT INTO Minions([Name], Age, TownId)
VALUES 
	('Kevin', 22, 1),
	('Bob', 15, 2),
	('Steward', NULL, 3);

GO
