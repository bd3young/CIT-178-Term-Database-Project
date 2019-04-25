/*#1
USE myFictionalBuisness;
SELECT Zipcode.State, COUNT(DISTINCT Customers.ID) AS [Customers Per State]
FROM Customers JOIN Zipcode ON Customers.CustZipcode = Zipcode.Zipcode
GROUP BY Zipcode.State
ORDER BY Zipcode.State ASC;

#2
USE myFictionalBuisness;
SELECT COUNT(OrderDetails.InventoryNumber) AS [Total Items Ordered], Inventory.Description,
SUM(OrderDetails.Quantity)* Inventory.Price AS [Total Price]
FROM OrderDetails JOIN Inventory ON OrderDetails.InventoryNumber = Inventory.GameID
GROUP BY Inventory.Description, Inventory.Price, OrderDetails.InventoryNumber
ORDER BY OrderDetails.InventoryNumber;

#3
USE myFictionalBuisness;
SELECT COUNT(OrderDetails.InventoryNumber) AS [Total Items Ordered],
AVG(Inventory.Price) AS [Average Per Item]
FROM OrderDetails JOIN Inventory ON OrderDetails.InventoryNumber = Inventory.GameID;

#4
USE myFictionalBuisness;
SELECT MIN(Inventory.Price) AS [Minimum Price],
MAX(Inventory.Price) AS [Maximum Price],
AVG(Inventory.Price) AS [Average Price]
FROM Inventory;

#5
USE myFictionalBuisness;
SELECT Zipcode.City, COUNT(Orders.ID) AS [Number of Orders]
FROM Customers JOIN Zipcode ON Zipcode.Zipcode = Customers.CustZipcode
JOIN Orders ON Customers.ID = Orders.CustomerID
GROUP BY Zipcode.City
ORDER BY Zipcode.City;*/