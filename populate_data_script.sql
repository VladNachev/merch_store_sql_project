-- Insert sample data into Users table
INSERT INTO Users (Username, Email, Password, FirstName, LastName, Address, Phone)
VALUES
    ('user1', 'user1@email.com', 'password1', 'John', 'Doe', '123 Main St', '555-123-4567'),
    ('user2', 'user2@email.com', 'password2', 'Jane', 'Smith', '456 Elm St', '555-987-6543');
    -- Add more user data as needed

-- Insert sample data into Categories table
INSERT INTO Categories (CategoryName)
VALUES
    ('Clothing'),
    ('Electronics'),
    ('Home Decor');
    -- Add more category data as needed

-- Insert sample data into Products table
INSERT INTO Products (ProductName, Description, Price, StockQuantity)
VALUES
    ('T-Shirt', 'Comfortable cotton T-shirt', 15.99, 100),
    ('Smartphone', 'High-end smartphone with advanced features', 499.99, 50),
    ('Throw Pillow', 'Decorative throw pillow for your home', 19.99, 200);
    -- Add more product data as needed

-- Insert sample data into ProductCategories table (associating products with categories)
INSERT INTO ProductCategories (ProductID, CategoryID)
VALUES
    (1, 1), -- T-Shirt belongs to Clothing category
    (2, 2), -- Smartphone belongs to Electronics category
    (3, 3); -- Throw Pillow belongs to Home Decor category

-- Insert sample data into Orders table
INSERT INTO Orders (UserID, TotalAmount)
VALUES
    (1, 35.98), -- User 1's order
    (2, 499.99); -- User 2's order
    -- Add more order data as needed

-- Insert sample data into OrderDetails table (associating products with orders)
INSERT INTO OrderDetails (OrderID, ProductID, Quantity, Subtotal)
VALUES
    (1, 1, 2, 31.98), -- User 1's order details
    (2, 2, 1, 499.99); -- User 2's order details
    -- Add more order detail data as needed

-- Insert sample data into Reviews table
INSERT INTO Reviews (UserID, ProductID, Rating, ReviewText)
VALUES
    (1, 1, 5, 'Great T-shirt!'),
    (2, 2, 4, 'Excellent smartphone');
    -- Add more review data as needed

-- Insert sample data into Payments table
INSERT INTO Payments (OrderID, Amount, PaymentMethod)
VALUES
    (1, 35.98, 'Credit Card'),
    (2, 499.99, 'PayPal');
    -- Add more payment data as needed

-- Insert sample data into ShippingAddresses table (associating addresses with users)
INSERT INTO ShippingAddresses (UserID, RecipientName, StreetAddress, City, State, ZipCode, Country)
VALUES
    (1, 'John Doe', '123 Main St', 'Anytown', 'CA', '12345', 'USA'),
    (2, 'Jane Smith', '456 Elm St', 'Another Town', 'NY', '54321', 'USA');
    -- Add more shipping address data as needed
