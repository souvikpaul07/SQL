# MySQL Views : A view is a virtual table based on the result-set of an SQL statement.
CREATE DATABASE University;
USE University;

CREATE TABLE Student(
	ROLL_NO INT PRIMARY KEY,
	NAME VARCHAR(50),
    MARKS INT NOT NULL,
    GRADES VARCHAR(2),
    CITY VARCHAR(20)
);
INSERT INTO Student VALUES
(101,"SOUVIK",77,"B","KOLKATA"),
(102,"VIDHI",98,"AA","BANGALORE"),
(103,"RAHUL",79,"B","ASANSOL"),
(104,"AKASH",51,"D","JAIPUR"),
(105,"ABHI",65,"C","PUNE"),
(106,"SID",89,"A","MUMBAI"),
(107,"HARRY",79,"B","NOIDA");

# VIEWs are Virtual tables & not Real tables...If we delete VIEW or create VIEW, this won't affect anything on overall database.

CREATE VIEW view1 AS
SELECT ROLL_NO, NAME, GRADES FROM Student;
SELECT * FROM view1;

CREATE VIEW view2 AS
SELECT ROLL_NO, NAME, MARKS FROM Student;
SELECT * FROM view2 WHERE MARKS>85;

DROP VIEW view1;