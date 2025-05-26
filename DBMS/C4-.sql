-- Create the OrderDetails table
CREATE TABLE OrderDetails ( Order_Id INT, Product_Name VARCHAR(29),Order_Num INT,Order_Date DATE );

-- Insert initial records
INSERT INTO OrderDetails VALUES
(1, 'Laptop', 5544, '2020-01-02'),
(2, 'Mouse', 3322, '2020-02-11'),
(3, 'Desktop', 2135, '2020-01-05'),
(4, 'Mobile', 3432, '2020-02-22'),
(5, 'Anti-Virus', 5648, '2020-03-10');

-- Start transaction: insert two new records
START TRANSACTION;

INSERT INTO OrderDetails VALUES(6, 'FireWall', 1006, '2023-07-22'),(7, 'KeyBoard', 1007, '2023-07-22');

-- View current data
SELECT * FROM OrderDetails;

-- Rollback the last transaction (inserts)
ROLLBACK;

-- Start new transaction: delete specific orders
START TRANSACTION;

DELETE FROM OrderDetails WHERE Order_Id IN (4, 5);

SELECT * FROM OrderDetails;

-- Commit the delete
COMMIT;

-- Disable autocommit to control transactions manually
SET autocommit = 0;

-- Set savepoint before making updates
SAVEPOINT Check_Updates;

-- Update a product name
UPDATE OrderDetails SET Product_Name = 'ASUS-Laptop' WHERE Order_Num = 5544;

-- Insert two new records
INSERT INTO OrderDetails VALUES(6, 'FireWall', 1006, '2023-07-22'),(7, 'Laptop', 1007, '2023-07-22');

-- Set another savepoint
SAVEPOINT Check_Delete;

-- Delete product named 'Laptop'
DELETE FROM OrderDetails WHERE Product_Name = 'Laptop';

-- Rollback to second savepoint (undo delete only)
ROLLBACK TO SAVEPOINT Check_Delete;

-- Rollback to first savepoint (undo update and insert)
ROLLBACK TO SAVEPOINT Check_Updates;

-- Final commit
COMMIT;

-- Enable autocommit back
SET autocommit = 1;
