CREATE DATABASE [PeopleDB2]
GO


CREATE TABLE [PeopleDB2].dbo.[People](
	Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	[Name] VARCHAR(50) NOT NULL,
	[Birtdate] DATE NOT NULL
);

INSERT INTO [PeopleDB2].[dbo].[People] ([Name], [Birtdate])
VALUES
	('Victor', '2000-12-07'),
	('Steven', '1992-09-10'),
	('Stephen', '1910-09-19'),
	('John', '2010-01-06');

SELECT [Name]
	,DATEDIFF(YEAR, [Birtdate], GETDATE()) AS [Age in Years]
	,DATEDIFF(MONTH, [Birtdate], GETDATE()) AS [Age in Months]
	,DATEDIFF(DAY, [Birtdate], GETDATE()) AS [Age in Days]
	,DATEDIFF(MINUTE, [Birtdate], GETDATE()) AS [Age in Minutes]
FROM [PeopleDB2].[dbo].[People]