/* Final Project Procedures

-- Retrieves and displays data 
USE myFictionalBuisness;
GO
CREATE PROC spCustomers
AS
SELECT * FROM Customers
ORDER BY FName;
GO

EXEC spCustomers;

-- Takes an input parameter
USE myFictionalBuisness;
GO
CREATE PROC spGetCustomer
	@CustID int
AS
BEGIN
	SELECT * FROM Customers
	WHERE ID = @CustID;
END
GO
EXEC spGETCustomer 3

-- Takes one input parameter and returns two output parameters
USE myFictionalBuisness;
GO
CREATE PROC spCustomerName
	@CustomerID int,
	@FirstName nvarchar(30) OUTPUT,
	@LastName nvarchar(50) OUTPUT
AS
SELECT @FirstName = FName, @LastName = LName
FROM Customers 
WHERE ID = @CustomerID;
GO
-- Run the procedure
DECLARE @FirstName nvarchar(30);
DECLARE @LastName nvarchar(50);
EXEC spCustomerName 4, @FirstName OUTPUT, @LastName OUTPUT;
SELECT @FirstName AS 'First Name', @LastName AS 'Last Name';

-- Stored procedure that has a return value
USE myFictionalBuisness;
GO
CREATE PROC spGameCount
AS
DECLARE @GameCount int;
SELECT @GameCount = COUNT(*)
FROM Inventory
RETURN @GameCount;
GO

DECLARE @GameCount int;
EXEC @GameCount = spGameCount;
PRINT 'There are ' + CONVERT(varchar, @GameCount) + ' products in your database';
GO

-- Final Project User Defined Functions 

-- creates the scalar function
USE myFictionalBuisness;
GO
CREATE FUNCTION fnGetCustomerId
    (@CustomerName nvarchar(50) = '%')
    RETURNS int
BEGIN
    RETURN (SELECT ID FROM Customers WHERE FName Like @CustomerName);
END; 

-- uses the function
GO
SELECT ID, LName, PhoneNumber FROM Customers 
WHERE ID = dbo.fnGetCustomerId('Greg%');

-- creates the table function
USE myFictionalBuisness;
GO
CREATE FUNCTION fnGames
	(@GameName varchar(200) = '%')
	RETURNS table
RETURN
	(SELECT * FROM Inventory WHERE Medium LIKE @GameName);
GO
SELECT * FROM dbo.fnGames('Dig%');

-- Final Project Triggers

 -- create archive table by copying customer table without any rows
 USE myFictionalBuisness;
 GO
 SELECT * INTO CustomerArchive
 FROM Customers
 WHERE 1=0;

 -- update customerarchive table and add activity column for status
 ALTER TABLE CustomerArchive
 ADD Activity varchar(50);
 GO

  -- create insert trigger
 CREATE TRIGGER CustomerArchive_INSERT ON Customers
    AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName varchar(20)
	DECLARE @LastName varchar(30)
	DECLARE @Zip varchar(10)
	DECLARE @Email varchar (30)
	DECLARE @PhoneNumber varchar(30)

SELECT @CustomerID =INSERTED.ID, @FirstName = INSERTED.FName, @LastName = INSERTED.LName,
	@Zip = INSERTED.CustZipcode, @Email = INSERTED.Email, @PhoneNumber = INSERTED.PhoneNumber
	FROM INSERTED

    INSERT INTO CustomerArchive VALUES(@CustomerID,@FirstName, @LastName, @Zip, @Email, @PhoneNumber, 'Inserted' )
END
GO

-- add row into customer to test insert trigger
INSERT INTO Zipcode VALUES('49696', 'Traverse City','MI');
GO
INSERT INTO Customers VALUES(7,'Sabrina','Galagar','49696', 'sabrinagalagar@gmail.com','(231)-123-4567');
GO

-- view data in customer archive
SELECT * FROM CustomerArchive;
GO

-- create delete trigger
 CREATE TRIGGER CustomerArchive_DELETE ON Customers
    AFTER DELETE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName varchar(20)
	DECLARE @LastName varchar(30)
	DECLARE @Zip varchar(10)
	DECLARE @Email varchar (30)
	DECLARE @PhoneNumber varchar(30)

SELECT @CustomerID =DELETED.ID, @FirstName = DELETED.FName, @LastName = DELETED.LName,
	@Zip = DELETED.CustZipcode, @Email = DELETED.Email, @PhoneNumber = DELETED.PhoneNumber
	FROM DELETED

    INSERT INTO CustomerArchive VALUES(@CustomerID,@FirstName, @LastName, @Zip, @Email, @PhoneNumber, 'Deleted' )
END
GO

-- delete row from customer to test delete trigger
DELETE FROM Customers WHERE ID = 7;
GO

-- view data in customer archive
SELECT * FROM CustomerArchive;

-- create update trigger
CREATE TRIGGER CustomerArchive_UPDATE ON Customers
    AFTER UPDATE
AS
BEGIN
    SET NOCOUNT ON;
    DECLARE @CustomerID int
	DECLARE @FirstName varchar(20)
	DECLARE @LastName varchar(30)
	DECLARE @Zip varchar(10)
	DECLARE @Email varchar (30)
	DECLARE @PhoneNumber varchar(30)

SELECT @CustomerID =INSERTED.ID, @FirstName = INSERTED.FName, @LastName = INSERTED.LName,
	@Zip = INSERTED.CustZipcode, @Email = INSERTED.Email, @PhoneNumber = INSERTED.PhoneNumber
	FROM INSERTED

INSERT INTO CustomerArchive VALUES(@CustomerID,@FirstName, @LastName, @Zip, @Email, @PhoneNumber, 'Updated' )
END
GO

-- insert a new row and then update the row (this will test the insert and update triggers)
INSERT INTO Customers VALUES(7,'Sabrina','Galagar','49696', 'sabrinagalagar@gmail.com','(231)-123-4567');
GO
UPDATE Customers 
SET FName = 'Tim'
WHERE ID = 7;
GO

-- view data in customer archive
SELECT * FROM CustomerArchive;*/