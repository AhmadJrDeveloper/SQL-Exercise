#################BASIC QUERIES################################
SELECT Name FROM students;
SELECT * FROM students WHERE Age > 30;
SELECT Name FROM students WHERE Age > 30 AND Gender = "F";
SELECT Points FROM students WHERE Name = "Alex";
UPDATE students SET Points = Points + 1 WHERE Name = "Basma";
UPDATE students SET Points = Points - 1 WHERE Name = "Alex";
#################BASIC QUERIES################################

#################CREATING TABLE################################
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
#################CREATING TABLE################################

#################JOINING TABLE################################
CREATE TABLE employee_company AS
SELECT employees.Name AS EmployeeName, 
companies.Name AS CompanyName,
companies.Date AS CompanyDate
FROM employees
INNER JOIN companies ON employees.Company = companies.Name;


SELECT EmployeeName FROM employee_company WHERE
CompanyDate < 2000;

SELECT companies.Name
FROM companies
INNER JOIN employees ON companies.ID = employees.Company
WHERE employees.Role = "Graphic Designer";
#################JOINING TABLE################################

#################Count & Filter################################
SELECT s.Name, s.Points
FROM students s
JOIN (
  SELECT MAX(Points) AS MaxPoints
  FROM students
) max_points
ON s.Points = max_points.MaxPoints;


SELECT AVG(Points) FROM students;

SELECT COUNT(Points) FROM students WHERE Points = 500;

SELECT Name FROM students 
WHERE Name LIKE "%s%";

SELECT * FROM students
ORDER BY Points DESC
#################Count & Filter################################

