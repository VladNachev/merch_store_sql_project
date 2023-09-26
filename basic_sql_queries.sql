-- Retrieve All Products
SELECT * FROM Products;

-- Retrieve User Who Have Placed Orders
SELECT DISTINCT Users.* FROM Users
JOIN Orders ON Users.UserID = Orders.UserID;

-- Retrieve Product Categories for a Specific Product
SELECT Categories.CategoryName FROM Categories
JOIN ProductCategories ON Categories.CategoryID = ProductCategories.CategoryID
WHERE ProductCategories.ProductID = 1; -- Replace 1 with the desired ProductID

-- Count the Number of Products in Each Category
SELECT Categories.CategoryName, COUNT(Products.ProductID) AS ProductCount
FROM Categories
LEFT JOIN ProductCategories ON Categories.CategoryID = ProductCategories.CategoryID
LEFT JOIN Products ON ProductCategories.ProductID = Products.ProductID
GROUP BY Categories.CategoryName;

-- Retrieve User Reviews and Ratings for a Specific Product
SELECT Users.Username, Reviews.Rating, Reviews.ReviewText
FROM Reviews
JOIN Users ON Reviews.UserID = Users.UserID
WHERE Reviews.ProductID = 1; -- Replace 1 with the desired ProductID

