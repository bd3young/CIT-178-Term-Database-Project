/*USE myFictionalBuisness
GO
CREATE INDEX idx_CustZipcode ON Customers(CustZipcode);
GO
CREATE INDEX idx_LocZipcode ON Locations(LocZipcode);
GO 
CREATE INDEX idx_Location ON Orders(LocationID);
GO
CREATE INDEX idx_Customer ON Orders(CustomerID);
GO 
CREATE INDEX idx_OrderID ON OrderDetails(OrderID);
GO
CREATE INDEX idx_invNumber ON OrderDetails(InventoryNumber);*/