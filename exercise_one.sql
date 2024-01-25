CREATE TABLE Customers (
  CustomerID INT,
  Name TEXT,
  Email TEXT
);

INSERT INTO Customers (CustomerID, Name, Email)
VALUES
  (1, 'Alice Johnson', 'alice.johnson@email.com'),
  (2, 'Bob Smith', 'bob.smith@email.com'),
  (3, 'Charlie Brown', 'charlie.brown@email.com');

-- exercise two --
UPDATE Customers
SET Email = 'bob.smith@newdomain.com'
WHERE CustomerID = 2;

-- exercise three --
DELETE FROM Customers
WHERE CustomerID = 3;

SELECT * FROM Customers;