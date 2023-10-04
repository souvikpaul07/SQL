CREATE DATABASE school_01;
USE school_01;

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

# LEFT EXCLUSIVE JOIN
SELECT *
FROM students
LEFT JOIN subjects
ON students.student_ID = subjects.subject_ID
WHERE subjects.subject_ID IS NULL;


# RIGHT EXCLUSIVE JOIN 
SELECT *
FROM students
RIGHT JOIN subjects
ON students.student_ID = subjects.subject_ID
WHERE students.student_ID IS NULL;