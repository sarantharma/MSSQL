USE ShopDB;

--Data Query Language 
SELECT * FROM Products ORDER BY Price ASC;

SELECT * FROM Products ORDER BY Price DESC;

SELECT FirstName + ' ' + LastName AS FullName FROM Customers

SELECT * FROM Orders WHERE OrderDate BETWEEN '2022-1-1' AND '2022-3-2'

SELECT * FROM Products WHERE ProductID IN (2,3,4);

SELECT * FROM Customers WHERE LastName LIKE 'A%'

