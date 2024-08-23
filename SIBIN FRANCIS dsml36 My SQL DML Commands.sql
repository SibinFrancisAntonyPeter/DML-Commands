CREATE TABLE Managers(
Manager_Id INT PRIMARY KEY,
First_name VARCHAR(30),
Last_Name VARCHAR(30),
DOB DATE,
Age INTEGER CHECK(Age>=18),
Last_update DATE,
Gender CHAR(1),
Department VARCHAR(50) NOT NULL,
Salary DECIMAL(10,2) NOT NULL
);

# 1) Insert 10 rows. 
INSERT INTO Managers values 
(1, 'Edd', 'Cullen', '1980-05-15', 44, '2024-08-23', 'M', 'IT', 30000.00),
(2, 'Aaliya', 'Smith', '1978-11-22', 45, '2024-08-23', 'F', 'HR', 25000.00),
(3, 'Ariana', 'Grande', '1990-07-10', 34, '2024-08-23', 'F', 'Finance', 28000.00),
(4, 'Kevin', 'Brown', '1985-03-05', 39,'2024-08-23', 'M', 'Marketing', 32000.00),
(5, 'Harry', 'Potter', '1992-09-15', 31, '2024-08-23', 'M', 'IT', 27000.00),
(6, 'Vinu', 'Wilson', '1983-01-19', 41, '2024-08-23', 'M', 'Sales', 30000.00),
(7, 'June', 'Lee', '1988-02-22', 36, '2024-08-23', 'F', 'HR', 26000.00),
(8, 'David', 'Abraham', '1995-05-07', 29, '2024-08-23', 'M', 'IT', 31000.00),
(9, 'Emma','Watson', '1975-12-30', 48, '2024-08-23', 'F', 'Finance', 24000.00),
(10, 'Taylor','Swift', '1987-10-12', 36, '2024-08-23', 'M', 'Marketing', 33000.00);

SELECT * FROM Managers;

# 2) Write a query that retrieves the name and date of birth of the manager with Manager_Id 1
SELECT First_name, Last_Name, DOB
FROM Managers
WHERE Manager_Id = 1;

# 3) write a query to display the annual income of all managers.
SELECT Manager_Id, First_name, Last_Name, 
(Salary * 12) AS Annual_Income
FROM Managers;

# 4) Write a query to display records of all managers except ‘Aaliya’.
SELECT * FROM Managers 
WHERE First_name <> 'Aaliya';

# 5) Write a query to display details of managers whose department is IT and earns more than 25000 per month.
SELECT * FROM Managers
WHERE Department = 'IT' AND Salary > 25000;

# 6) Write a query to display details of managers whose salary is between 10000 and 35000.
SELECT * FROM Managers 
WHERE Salary BETWEEN 10000 AND 35000;