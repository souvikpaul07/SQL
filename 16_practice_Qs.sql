# in the Student table : 
			# Change the name of column "NAME" to "FULL_NAME"
            # Delete all the students who scored less than 80
            # Delete the column for grades
CREATE DATABASE STUDENTS_PERFORMANCE_05;
USE STUDENTS_PERFORMANCE_05;

CREATE TABLE Student(
	ROLL_NO INT PRIMARY KEY,
	NAME VARCHAR(50),
    MARKS INT NOT NULL,
    GRADES VARCHAR(2)
);

INSERT INTO Student VALUES(101,"SOUVIK",77,"B");
INSERT INTO Student VALUES(102,"VIDHI",98,"AA");
INSERT INTO Student VALUES(103,"RAHUL",79,"B");
INSERT INTO Student VALUES(104,"AMAN",51,"D");
INSERT INTO Student VALUES(105,"ABHI",65,"C");
INSERT INTO Student VALUES(106,"SID",89,"A");
INSERT INTO Student VALUES(107,"HARRY",79,"B");
SELECT * FROM Student;

#  Changing the name of column "NAME" to "FULL_NAME" :
ALTER TABLE Student CHANGE COLUMN NAME FULL_NAME VARCHAR(50);

# Deleting all the students who scored less than 80 :
DELETE FROM Student WHERE MARKS<80;

# Deleting the column for grades :
ALTER TABLE Student DROP COLUMN GRADES;
