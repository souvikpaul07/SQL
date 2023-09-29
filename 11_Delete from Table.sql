
# DELETE data from Table :

CREATE DATABASE School_info_01;
USE School_info_01;

CREATE TABLE Students_grade_01(
	Student_ID INT PRIMARY KEY,
    Student_NAME VARCHAR(50),
    PERCENTAGE INT NOT NULL,
    GRADE VARCHAR(3),
    CITY VARCHAR(15)
);

INSERT INTO Students_grade_01 VALUES
(1,"SOUVIK",77,"B","KOLKATA"),
(2,"VIDHI",98,"AA","BANGALORE"),
(3,"RAHUL",85,"A","PUNE"),
(4,"AMAN",61,"C","Hyderabad"),
(5,"MIKE",65,"C","Noida"),
(6,"ADA",91,"AA","Mumbai");

DELETE FROM Students_grade_01 WHERE  PERCENTAGE<70;
SELECT * FROM Students_grade_01;
