CREATE TABLE Students(
  StudentID INT PRIMARY KEY,
  Name TEXT
);

CREATE TABLE Grades(
  StudentID INT PRIMARY KEY,
  Subject TEXT,
  Grade INT,
  FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
);

INSERT INTO Students (StudentID, Name)
VALUES
  (1, 'Stuart Little'),
  (2, 'Lilo Stitch'),
  (3, 'Fiona Shrek');

INSERT INTO Grades (StudentID, Subject, Grade)
VALUES
  (1, 'Math', 90),
  (2, 'Dancing', 85),
  (3, 'Social Studies', 100);

SELECT * FROM Students;
SELECT * FROM Grades;