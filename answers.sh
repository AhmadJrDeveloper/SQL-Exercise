#################BASIC QUERIES################################
SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Age > 30 AND Gender = "F";
SELECT Points FROM students WHERE Name = "Alex";
UPDATE students SET Points = Points + 1 WHERE Name = "Basma";
UPDATE students SET Points = Points - 1 WHERE Name = "Alex";
#################BASIC QUERIES################################
