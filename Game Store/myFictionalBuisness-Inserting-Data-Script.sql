/*USE myFictionalBuisness
GO
INSERT INTO Inventory VALUES ('1', 'Super Mario Odyssey', 'Physical', 'Nintendo Switch', 39.99, 59.99);
INSERT INTO Inventory VALUES ('2', 'Dead Cells', 'Digital', 'Nintendo Switch', 14.99, 24.99);
INSERT INTO Inventory VALUES ('3', 'Destiny 2', 'Digital', 'PC', 39.99, 59.99);
INSERT INTO Inventory VALUES ('4', 'TitanFall 2', 'Physical', 'Xbox One', 39.99, 59.99);
INSERT INTO Inventory VALUES ('5', 'Spiderman', 'Physical', 'Playstation 4', 39.99, 59.99);
INSERT INTO Inventory VALUES ('6', 'Overcooked 2', 'Digital', 'Nintendo Switch', 14.99, 24.99);
INSERT INTO Inventory VALUES ('7', 'Diablo 3', 'Digital', 'PC', 39.99, 59.99);
INSERT INTO Inventory VALUES ('8', 'God of War 3', 'Physical', 'Playstation 4', 39.99, 59.99);
INSERT INTO Inventory VALUES ('9', 'Halo 5', 'Physical', 'XboxOne', 39.99, 59.99);
INSERT INTO Inventory VALUES ('10', 'Snake Pass', 'Digital', 'Nintendo Switch', 14.99, 24.99);

GO
INSERT INTO Zipcode VALUES ('50890', 'New York City', 'NY');
INSERT INTO Zipcode VALUES ('49684', 'Traverse City', 'MI');
INSERT INTO Zipcode VALUES ('76680', 'San Diego', 'CA');
INSERT INTO Zipcode VALUES ('40206', 'Jacksonville', 'FL');
INSERT INTO Zipcode VALUES ('50295', 'Chicago', 'IL');
INSERT INTO Zipcode VALUES ('70803', 'Austin', 'TX');
INSERT INTO Zipcode VALUES ('49686', 'Traverse City', 'MI');
INSERT INTO Zipcode VALUES ('49770', 'Petosky', 'MI');
INSERT INTO Zipcode VALUES ('49735', 'Gaylord', 'MI');
INSERT INTO Zipcode VALUES ('49501', 'Grand Rapids', 'MI');
INSERT INTO Zipcode VALUES ('48127', 'Detroit', 'MI');
INSERT INTO Zipcode VALUES ('48864', 'Lansing', 'MI');

GO 
INSERT INTO Locations VALUES (1, '49686', '5020 Hoch Rd');
INSERT INTO Locations VALUES (2, '49770', '300 Seseme St');
INSERT INTO Locations VALUES (3, '49735', '80 Train Ln');
INSERT INTO Locations VALUES (4, '49501', '4060 Captain Rd');
INSERT INTO Locations VALUES (5, '48127', '70 Welch Rd');
INSERT INTO Locations VALUES (6, '48864', '20 Kelp St');

GO
INSERT INTO Customers VALUES (1, 'Henry Lotso', '1665 Mary Ln', '50890', 'henrylotso@gmail.com', '555-555-2342');
INSERT INTO Customers VALUES (2, 'George Wilson', '2435 Rooster Dr', '49684', 'georgewilson@gmail.com', '231-608-3085');
INSERT INTO Customers VALUES (3, 'Theodore Williams', '60 Big Boy Ln', '76680', 'theodorewilliams@gmail.com', '555-555-8979');
INSERT INTO Customers VALUES (4, 'Gregory Thompson', '3060 Happy Trl', '40206', 'GregoryThompson@gmail.com', '555-555-6723');
INSERT INTO Customers VALUES (5, 'Robert Smith', '4030 Buttercup Rd', '50295', 'robertsmith@gmail.com', '555-555-8888');
INSERT INTO Customers VALUES (6, 'Jane Doe', '504 Sand Dune Ln', '70803', 'janedoe@gmail.com', '555-555-1111');

GO
INSERT INTO Orders VALUES (1, '10/20/2016', 1, 4);
INSERT INTO Orders VALUES (2, '4/30/2017', 2, 3);
INSERT INTO Orders VALUES (3, '5/12/2016', 3, 6);
INSERT INTO Orders VALUES (4, '9/18/2016', 4, 4);
INSERT INTO Orders VALUES (5, '6/16/2016', 5, 2);
INSERT INTO Orders VALUES (6, '2/26/2017', 6, 3);

GO
INSERT INTO OrderDetails VALUES (1, 1, 1, 3);
INSERT INTO OrderDetails VALUES (2, 1, 4, 2);
INSERT INTO OrderDetails VALUES (3, 2, 5, 2);
INSERT INTO OrderDetails VALUES (4, 3, 6, 1);
INSERT INTO OrderDetails VALUES (5, 3, 7, 3);
INSERT INTO OrderDetails VALUES (6, 4, 2, 1);
INSERT INTO OrderDetails VALUES (7, 4, 10, 1);
INSERT INTO OrderDetails VALUES (8, 5, 10, 1);
INSERT INTO OrderDetails VALUES (9, 6, 8, 3);
INSERT INTO OrderDetails VALUES (10, 6, 9, 2);*/

