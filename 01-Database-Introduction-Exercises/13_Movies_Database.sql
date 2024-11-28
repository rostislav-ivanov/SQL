CREATE DATABASE MoviesDb;

GO

CREATE TABLE Directors(
	Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	DirectorName NVARCHAR(200) NOT NULL,
	Notes NVARCHAR(1500) NULL);

CREATE TABLE Genres(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	GanreName NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(1500) NULL);

CREATE TABLE Categories(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	CategoryName NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(1500) NULL);

CREATE TABLE Movies(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	Title NVARCHAR(200) NOT NULL,
	DirectorId UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Directors(Id) NOT NULL,
	CopyrightYear INT NOT NULL,
	[Length] TIME NOT NULL,
	GenreId INT FOREIGN KEY REFERENCES Genres(Id) NOT NULL,
	CategoryId INT FOREIGN KEY REFERENCES Categories(Id) NULL,
	Rating NUMERIC(3,2) NULL,
	Notes NVARCHAR(1500) NULL);

INSERT INTO Directors(DirectorName)
VALUES
	('DirectorName1'),
	('DirectorName2'),
	('DirectorName3'),
	('DirectorName4'),
	('DirectorName5');

INSERT INTO Genres(GanreName)
VALUES
	('GanreName1'),
	('GanreName2'),
	('GanreName3'),
	('GanreName4'),
	('GanreName5');

INSERT INTO Categories(CategoryName)
VALUES
	('CategoryName1'),
	('CategoryName2'),
	('CategoryName3'),
	('CategoryName4'),
	('CategoryName5');


INSERT INTO Movies(Title, DirectorId, CopyrightYear, [Length], GenreId, CategoryId)
VALUES
	('Title1', '280D7DA6-BFEB-4FC4-8139-46EBAEFC3FCC', 2001, '02:00:01', 2, 3),
	('Title2', 'F48A6FD7-E97E-47BD-8203-62221CFE2582', 2002, '02:00:01', 3, 4),
	('Title3', 'BD5CA3D8-0B47-43A1-82E4-6ECF2A07A009', 2003, '02:00:01', 4, 5),
	('Title4', 'C25F05BA-829E-4303-B1DC-C75EC96C94DC', 2004, '02:00:01', 5, 2),
	('Title5', '62AEC036-6385-491F-A336-EE5365909524', 2005, '02:00:01', 1, 1);
