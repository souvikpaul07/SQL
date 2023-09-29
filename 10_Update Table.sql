
# UPDATE table data :

CREATE DATABASE School_info;
USE School_info;

CREATE TABLE Students_grade(
	Student_ID INT PRIMARY KEY,
    Student_NAME VARCHAR(50),
    PERCENTAGE INT NOT NULL,
    GRADE VARCHAR(3),
    CITY VARCHAR(15)
);

INSERT INTO Students_grade VALUES
(1,"SOUVIK",77,"B","KOLKATA"),
(2,"VIDHI",98,"AA","BANGALORE"),
(3,"RAHUL",85,"A","PUNE"),
(4,"AMAN",61,"C","Hyderabad"),
(5,"MIKE",65,"C","Noida"),
(6,"ADA",91,"AA","Mumbai");
SELECT * FROM Students_grade;

UPDATE Students_grade SET GRADE = "O" WHERE GRADE = "AA"; # this will change the grade to "O" from "AA"
SELECT * FROM Students_grade;

# we can change the student's percentage & grade too :
UPDATE Students_grade
SET PERCENTAGE = 75, GRADE = "B"
WHERE Student_ID = 5;

# updating all student's grade : 
UPDATE Students_grade SET GRADE = "E" WHERE PERCENTAGE BETWEEN 80 AND 90;

# adding 1 to all student's percentage : 
UPDATE Students_grade SET PERCENTAGE = PERCENTAGE + 1;
