# FOREIGN KEY :

CREATE DATABASE College_info;
USE College_info;

CREATE TABLE Department(  # Parent Table
	id INT PRIMARY KEY,
    name varchar(50)
);

CREATE TABLE Teachers(  # child Tabsle
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(id)
);

INSERT INTO Department VALUES
(101, "Maths"),
(102, "Physics"),
(103, "Chemistry");

INSERT INTO Teachers VALUES
(101,"TKD",101),
(102,"SM",102),
(103,"MMP",103),
(104,"RSP",101);

SELECT * FROM Teachers;