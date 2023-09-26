-- Find Products with Low Stock
SELECT ProductName, StockQuantity
FROM Products
WHERE StockQuantity < 10;

-- Calculate Total Sales and Revenue
SELECT SUM(Quantity) AS TotalItemsSold, SUM(Subtotal) AS TotalRevenue
FROM OrderDetails;

-- Find Users with the Most Orders
SELECT Users.UserID, Users.Username, COUNT(Orders.OrderID) AS OrderCount
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID
GROUP BY Users.UserID, Users.Username
ORDER BY OrderCount DESC
LIMIT 5; -- Limit to the top 5 users

-- Retrieve Average Rating for Each Product
SELECT Products.ProductName, AVG(Reviews.Rating) AS AverageRating
FROM Products
LEFT JOIN Reviews ON Products.ProductID = Reviews.ProductID
GROUP BY Products.ProductName;

-- Identify Users with Multiple Shipping Addresses
SELECT Users.UserID, Users.Username, COUNT(ShippingAddresses.AddressID) AS AddressCount
FROM Users
LEFT JOIN ShippingAddresses ON Users.UserID = ShippingAddresses.UserID
GROUP BY Users.UserID, Users.Username
HAVING AddressCount > 1;
