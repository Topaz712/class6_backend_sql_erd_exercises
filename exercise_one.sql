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

  SELECT * FROM Customers;