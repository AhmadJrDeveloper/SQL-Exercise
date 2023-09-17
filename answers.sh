#################BASIC QUERIES################################
SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Age > 30 AND Gender = "F";
SELECT Points FROM students WHERE Name = "Alex";
UPDATE students SET Points = Points + 1 WHERE Name = "Basma";
UPDATE students SET Points = Points - 1 WHERE Name = "Alex";
#################BASIC QUERIES################################


CREATE TABLE graduates (
ID int NOT NULL PRIMARY KEY ,
Name text NOT NULL UNIQUE,
Age int,
Gender text,
Points int,
Graduation date
);


INSERT INTO graduates(ID,Name,Age,Gender,Points)
SELECT ID,Name,Age,Gender,Points FROM students
WHERE Name = "Layal";


UPDATE graduates SET ID = 1 WHERE Name = "Layal";

UPDATE graduates SET Graduation = 08-09-2018 WHERE Name = "Layal";


DELETE FROM students WHERE Name = "Layal";
