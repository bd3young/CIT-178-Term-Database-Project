CREATE DATABASE myFictionalBuisness

GO
USE myFictionalBuisness;
CREATE TABLE Inventory
(
	GameID int  NOT NULL,
	Description varchar (200) NOT NULL,
	Medium varchar (100) NOT NULL,
	Console varchar (50),
	Cost money,
	Price money,
	PRIMARY KEY(GameID)
);
GO
CREATE TABLE Customers
(
	ID int  NOT NULL,
	FName varchar (20) NOT NULL,
	LName varchar (30) NOT NULL,
	Zipcode varchar (10),
	Email varchar (30),
	PhoneNumber varchar (15),
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Locations
(
	ID int  NOT NULL,
	Zipcode varchar (10) NOT NULL,
	Address varchar (50) NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE Zipcode
(
	Zipcode varchar (10)  NOT NULL,
	City varchar (30) NOT NULL,
	State varchar (2) NOT NULL,
	PRIMARY KEY(Zipcode)
);
GO
CREATE TABLE Orders
(
	ID int  NOT NULL,
	OrderDate datetime,
	LocationID int NOT NULL,
	CustomerID int NOT NULL,
	PRIMARY KEY(ID)
);
GO
CREATE TABLE OrderDetails
(
	ID int  NOT NULL,
	OrderID int,
	InventoryNumber int NOT NULL,
	Quantity int,
	PRIMARY KEY(ID)
);
GO