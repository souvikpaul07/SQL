# Write the query to find avg. marks in each city in ascending order.
CREATE DATABASE STUDENTS_PERFORMANCE_02;
USE STUDENTS_PERFORMANCE_02;

CREATE TABLE EXAM_02(
	ROLL_NO INT PRIMARY KEY,
	NAME VARCHAR(50),
    MARKS INT NOT NULL,
    CITY VARCHAR(50)
);

INSERT INTO EXAM_02 VALUES(101,"SOUVIK",77,"ASANSOL");
INSERT INTO EXAM_02 VALUES(102,"VIDHI",98,"KOLKATA");
INSERT INTO EXAM_02 VALUES(103,"RAHUL",79,"ASANSOL");
INSERT INTO EXAM_02 VALUES(104,"AMAN",51,"MUMBAI");
INSERT INTO EXAM_02 VALUES(105,"ABHI",65,"DELHI");
INSERT INTO EXAM_02 VALUES(106,"SID",89,"HYDERABAD");
INSERT INTO EXAM_02 VALUES(107,"HARRY",79,"MUMBAI");

SELECT CITY, AVG(MARKS) FROM EXAM_02 GROUP BY CITY ORDER BY AVG(MARKS) ASC;
SELECT CITY, AVG(MARKS) FROM EXAM_02 GROUP BY CITY ORDER BY CITY ASC;