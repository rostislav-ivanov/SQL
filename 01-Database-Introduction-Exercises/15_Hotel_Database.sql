CREATE DATABASE HotelDb;

GO

USE HotelDb;

CREATE TABLE Employees(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	Title NVARCHAR(50) NOT NULL,
	Notes NVARCHAR(MAX) NULL
);

CREATE TABLE Customers(
	AccountNumber INT IDENTITY(1,1) PRIMARY  KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL,
	PhoneNumber VARCHAR(30),
	EmergencyName NVARCHAR(50) NULL,
	EmergencyNumber VARCHAR(30) NULL,
	Notes NVARCHAR(MAX) NULL,
);

CREATE TABLE RoomStatus(
	RoomStatus NVARCHAR(30) PRIMARY KEY,
	Notes NVARCHAR(MAX) NULL
);

CREATE TABLE RoomTypes(
	RoomType NVARCHAR(30) PRIMARY KEY,
	Notes NVARCHAR(MAX) NULL
);

CREATE TABLE BedTypes(
	BedType NVARCHAR(30) PRIMARY KEY,
	Notes NVARCHAR(MAX) NULL
);

CREATE TABLE Rooms(
	Roomnumber NVARCHAR(5) PRIMARY KEY,
	RoomType NVARCHAR(30) FOREIGN KEY REFERENCES RoomTypes(RoomType) NOT NULL,
	BedType NVARCHAR(30) FOREIGN KEY REFERENCES BedTypes(BedType) NOT NULL,
	Rate DECIMAL(18,2) NOT NULL,
	RoomStatus NVARCHAR(30) FOREIGN KEY REFERENCES RoomStatus(RoomStatus) NOT NULL,
	Notes NVARCHAR(MAX) NULL
);

CREATE TABLE Payments(
	Id INT IDENTITY(1,1) PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NOT NULL,
	PaymentDate DATE NOT NULL,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
	FirstDateOccupied DATE NOT NULL,
	LastDateOccupied DATE NOT NULL,
	TotalDays TINYINT NULL,
	AmountCharged DECIMAL(18,2) NULL,
	TaxRate DECIMAL(18,2) NULL,
	TaxAmount DECIMAL(18,2) NULL,
	PaymentTotal DECIMAL(18,2) NOT NULL,
	Notes NVARCHAR(MAX) NULL
);

CREATE TABLE Occupancies (
	Id INT IDENTITY(1,1) PRIMARY KEY,
	EmployeeId INT FOREIGN KEY REFERENCES Employees(Id) NULL,
	DateOccupied TINYINT NOT NULL,
	AccountNumber INT FOREIGN KEY REFERENCES Customers(AccountNumber) NOT NULL,
	RoomNumber NVARCHAR(5) FOREIGN KEY REFERENCES Rooms(RoomNumber) NOT NULL,
	RateApplied DECIMAL(18,2) NULL,
	PhoneCharge DECIMAL(18,2) NULL,
	Notes NVARCHAR(MAX) NULL
);

INSERT dbo.RoomStatus (RoomStatus)
VALUES
	('RoomStatus1'),
	('RoomStatus2'),
	('RoomStatus3')

INSERT dbo.RoomTypes (RoomType)
VALUES
	('RoomType1'),
	('RoomType2'),
	('RoomType3')

INSERT dbo.BedTypes (BedType)
VALUES
	('BedType1'),
	('BedType2'),
	('BedType3')

INSERT dbo.Rooms (RoomNumber, RoomType, BedType, RoomStatus, Rate)
VALUES
	('1A', 'RoomType1', 'BedType1', 'RoomStatus1', 20.53),
	('2A', 'RoomType2', 'BedType2', 'RoomStatus2', 20.54),
	('3A', 'RoomType3', 'BedType3', 'RoomStatus3', 20.55);

INSERT dbo.Employees (FirstName, LastName, Title)
VALUES
	('FirstName1', 'LastName1', 'Title1'),	
	('FirstName2', 'LastName2', 'Title2'),	
	('FirstName3', 'LastName3', 'Title3');	

INSERT dbo.Customers (FirstName, LastName)
VALUES
	('FirstName1', 'LastName1'),	
	('FirstName2', 'LastName2'),		
	('FirstName3', 'LastName3');	

INSERT dbo.Payments (EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, PaymentTotal)
VALUES
	(1, '2023-01-01', 1, '2023-02-01', '2023-03-01', 200.23),
	(2, '2023-01-02', 2, '2023-02-02', '2023-03-02', 200.24),
	(3, '2023-01-03', 3, '2023-02-03', '2023-03-03', 200.25)

insert dbo.Occupancies (DateOccupied, AccountNumber, RoomNumber)
values
	(5, 1, '1A'),
	(6, 2, '2A'),
	(7, 3, '3A')
