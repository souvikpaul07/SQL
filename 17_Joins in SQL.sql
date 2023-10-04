# Joins in SQL : used to combine rows from two or more tables, based on a related column between them.
# Types of Joins : INNER JOIN , LEFT JOIN , RIGHT JOIN , FULL JOIN
CREATE DATABASE school;
USE school;

CREATE TABLE students(
	student_ID INT PRIMARY KEY,
    name VARCHAR(30)
);
INSERT INTO students (student_ID, name)
values
(101,"Souvik"),
(102,"Vidhi"),
(103,"Rahul");

CREATE TABLE subjects(
	subject_ID INT PRIMARY KEY,
    subject VARCHAR(50)
);

INSERT INTO subjects (subject_ID, subject)
values
(102,"English"),
(105,"Maths"),
(103,"Physics"),
(107,"Computer sc.");


# INNER JOIN : Returns records that have matching values in both tables
SELECT *
FROM students
INNER JOIN subjects
ON students.student_ID = subjects.subject_ID;


# LEFT JOIN : Returns all records from the left table, and the matched records from the right table
SELECT * 
FROM students
LEFT JOIN subjects
ON students.student_ID = subjects.subject_ID;


# RIGHT JOIN : Returns all records from the right table, and the matched records from the left table
SELECT *
FROM students
RIGHT JOIN subjects
ON students.student_ID = subjects.subject_ID;


# FULL JOIN : Returns all records when there is a match in left or right table
# There is no command as FULL JOIN in MYSQL. Other databases like oracle & etc have FULL JOIN.
# But there is way to use the full join in MYSQL  : 
SELECT *
FROM students
LEFT JOIN subjects
ON students.student_ID = subjects.subject_ID
UNION
SELECT *
FROM students
RIGHT JOIN subjects
ON students.student_ID = subjects.subject_ID;

# here UNION returns all the data from LEFT JOIN & RIGHT JOIN and returns only unique value from the OVERLAPPED part.

