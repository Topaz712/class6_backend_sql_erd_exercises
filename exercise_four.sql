CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  Name TEXT,
  Email TEXT
);

CREATE TABLE Books (
  BookID INT PRIMARY KEY,
  Title TEXT,
  Author TEXT
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  CustomerID INT,
  BookID INT,
  Quantity INT,
  FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
  FOREIGN KEY (BookID) REFERENCES Books(BookID)
);

INSERT INTO Books (BookID, Title, Author)
VALUES 
  (1, 'Fahrenheit 451', 'Ray Bradbury'),
  (2, 'Animal Farm', 'George Orwell'),
  (3, 'The Giver', 'Lois Lowry');

INSERT INTO Customers (CustomerID, Name, Email)
VALUES
  (1, 'Vlad', 'vlad@email.com'),
  (2, 'Barthalomew', 'bart@email.com'),
  (3, 'Xavier', 'xav@email.com');

INSERT INTO Orders (OrderID, CustomerID, BookID, Quantity)
VALUES
  (1, 1, 1, 3),
  (2, 2, 2, 2),
  (3, 3, 3, 1);

SELECT
  C.Name AS CustomerName,
  B.Title AS BookTitle,
  O.Quantity
FROM
  Customers C
  JOIN Orders O ON C.CustomerID = O.CustomerID
  JOIN Books B ON O.BookID = B.BookID;
