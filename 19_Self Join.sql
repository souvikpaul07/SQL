CREATE DATABASE office_data;
USE office_data;

CREATE TABLE employees(
	Id INT PRIMARY KEY,
    Name VARCHAR(30),
    Manager_ID INT
);

INSERT INTO employees 
(Id, Name, Manager_ID) VALUES
(101,"Adam",103),
(102,"Bob",104),
(103,"Mike",NULL),
(104,"Nickolas",103);


SELECT * 
FROM employees as a
JOIN employees as b
ON a.Id = b.Manager_ID;

SELECT a.Name as Manager_name, b.Name
FROM employees as a
JOIN employees as b
ON a.Id = b.Manager_ID;