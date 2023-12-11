USE ShopDB;

GO

--The "Customers" table stores information about individual customers. Each customer is identified by a unique `CustomerID`,
--and additional details such as their first name, last name, and email address are recorded. The `Email` field serves as
--a unique identifier for each customer.
CREATE TABLE Customers
(
	CustomerID INT PRIMARY KEY,
	FirstName NVARCHAR(50),
	LastName NVARCHAR(50),
	Email NVARCHAR(80) UNIQUE,
);

GO

--The "Products" table contains information about different products available for sale. Each product is identified by a unique
--ProductID`,and details such as the product name and price are recorded.
CREATE TABLE Products
(
	ProductID INT PRIMARY KEY,
	ProductName NVARCHAR(100),
	Price DECIMAL(10,2)
);

GO

--The "Orders" table tracks information about each customer order. Each order is identified by a unique `OrderID`, 
--and it includes details such as the `CustomerID` (which references the "Customers" table) and the date when 
--the order was placed (`OrderDate`).
CREATE TABLE Orders
(
	OrderID INT PRIMARY KEY,
	OrderDate DATE,
	CustomerID INT FOREIGN KEY REFERENCES Customers(CustomerID),
)

GO

--The "OrderDetails" table provides details about the products included in each order. It includes a unique identifier for 
--each detail (`OrderDetailID`) and references to the associated order (`OrderID`) and product (`ProductID`). The `Quantity` 
--field represents the number of units of the product included in the order.
CREATE TABLE OrderDetails
(
	OrderDetailsID INT PRIMARY KEY,
	OrderID INT FOREIGN KEY REFERENCES Orders(OrderID),
	ProductID INT FOREIGN KEY REFERENCES Products(ProductID),
	Quantity INT,
)