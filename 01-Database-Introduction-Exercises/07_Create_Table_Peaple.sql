CREATE DATABASE PeopleDb;

GO

USE PeopleDb;

CREATE TABLE People(
	Id INT IDENTITY (1,1) PRIMARY KEY,
	[Name] NVARCHAR(200) NOT NULL,
	Picture VARBINARY(MAX) NULL,
	CONSTRAINT PictureSize CHECK (DATALENGTH(Picture) <= 2097152),
	Height NUMERIC(3,2) NULL,
	Weigth NUMERIC(5,2) NULL,
	Gender CHAR CHECK(Gender IN ('m', 'f')) NOT NULL,
	Birtdate DATE NOT NULL,
	Biography NVARCHAR(MAX) NULL
);

INSERT INTO People ([Name], Gender, Birtdate)
VALUES
	('Pesho1', 'm', '1997-09-20'),
	('Pesho2', 'm', '1997-09-21'),
	('Pesho3', 'm', '1997-09-23'),
	('Ana1', 'f', '1997-09-24'),
	('Ana2', 'f', '1997-09-25');

GO