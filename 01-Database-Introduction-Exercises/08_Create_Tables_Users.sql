CREATE DATABASE UsersDb;

GO

USE UsersDb;

CREATE TABLE Users(
	Id BIGINT IDENTITY(1,1) PRIMARY KEY,
	Username VARCHAR(30) UNIQUE NOT NULL,
	[Password] VARCHAR(26) NOT NULL,
	ProfilePicture VARBINARY(MAX) NULL,
	CONSTRAINT My CHECK (DATALENGTH(ProfilePicture) <= 921600),
	LastLoginTime DATETIME2 NULL,
	IsDeleted BIT   --default 1
);

INSERT INTO Users(Username, [Password])
VALUES
	('Pesho1', 'Password1'),
	('Pesho2', 'Password2'),
	('Pesho3', 'Password3'),
	('Pesho4', 'Password4'),
	('Pesho5', 'Password5');

GO