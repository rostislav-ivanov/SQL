CREATE DATABASE OnlineStoreDB;

GO

USE OnlineStoreDB;

CREATE TABLE ItemTypes(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL
);

CREATE TABLE Items(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL,
	ItemTypeID INT FOREIGN KEY REFERENCES ItemTypes(Id) NULL
);

CREATE TABLE Cities(
	Id INT IDENTITY PRIMARY KEY,
	[Name] NVARCHAR(50) NOT NULL
);

CREATE TABLE Customers(
	Id UNIQUEIDENTIFIER PRIMARY KEY DEFAULT NEWID(),
	[Name] NVARCHAR(50) NOT NULL,
	Birthday DATE NULL,
	CitiID INT FOREIGN KEY REFERENCES Cities(Id) NULL
);

CREATE TABLE Orders(
	Id INT IDENTITY PRIMARY KEY,
	CustumerID UNIQUEIDENTIFIER FOREIGN KEY REFERENCES Customers(Id) NOT NULL
);

CREATE TABLE OrdersItems(
	OrderID INT FOREIGN KEY REFERENCES Orders(Id) NOT NULL,
	ItemID INT FOREIGN KEY REFERENCES Items(Id) NOT NULL,
	PRIMARY KEY (OrderID, ItemID)
);