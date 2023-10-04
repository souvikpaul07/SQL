# Sub Query : A Sub query or Inner query or a Nested Query is a Query within another SQL query.
# It involves 2 select statements : 1. SELECT,   2. FROM,    3. WHERE (most used)

CREATE DATABASE STUDENTS_PERFORMANCE_06;
USE STUDENTS_PERFORMANCE_06;

CREATE TABLE Student(
	ROLL_NO INT PRIMARY KEY,
	NAME VARCHAR(50),
    MARKS INT NOT NULL,
    GRADES VARCHAR(2)
);
INSERT INTO Student VALUES
(101,"SOUVIK",77,"B"),
(102,"VIDHI",98,"AA"),
(103,"RAHUL",79,"B"),
(104,"AMAN",51,"D"),
(105,"ABHI",65,"C"),
(106,"SID",89,"A"),
(107,"HARRY",79,"B");

# QUESTION 1 : Find the Names & Marks of all students who scored more than class Average.
SELECT AVG(MARKS) FROM Student;  # returns the Average marks

SELECT NAME, MARKS FROM Student WHERE MARKS > (SELECT AVG(MARKS) FROM Student);


# QUESTION 2 : Find the Names of all students with Even roll numbers using IN statement.
SELECT ROLL_NO FROM Student WHERE ROLL_NO%2 = 0;

SELECT ROLL_NO FROM Student 
WHERE ROLL_NO IN (SELECT ROLL_NO FROM Student WHERE ROLL_NO%2 = 0);


# QUESTION 3 : Find the maximum marks from the students having grade "B" using FROM statement :
SELECT * FROM Student WHERE GRADES = "B";

SELECT MAX(MARKS) 
FROM (SELECT * FROM Student WHERE GRADES = "B") AS temp;   # We must use ALIAS while using sub queries in FROM statement.


