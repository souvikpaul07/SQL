USE office_data;

CREATE TABLE employees_01(
	Id INT PRIMARY KEY,
    Name VARCHAR(30),
    Manager_ID INT
);

INSERT INTO employees_01 
(Id, Name, Manager_ID) VALUES
(201,"Max",103),
(202,"David",204),
(203,"Mike",NULL),
(204,"Nickolas",203);

SELECT Name FROM employees
UNION                          # UNION Only returns the UNIQUE Values
SELECT Name FROM employees_01;


SELECT Name FROM employees
UNION ALL						# # UNION ALL returns all Values including Duplicates
SELECT Name FROM employees_01;