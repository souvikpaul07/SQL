# FOREIGN KEY :

CREATE DATABASE College_info_01;
USE College_info_01;

CREATE TABLE Department_01(  # Parent Table
	id INT PRIMARY KEY,
    name varchar(50)
);

CREATE TABLE Teachers_01(  # child Table
	id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department_01(id)
    ON UPDATE CASCADE  # if incase we update or delete anything in the parent table (i.e. Department_01), the same changes will reflect in the child Table as well
    ON DELETE CASCADE	# without these two commands we can't make changes in the Parent Table
);

INSERT INTO Department_01 VALUES
(101, "Maths"),
(102, "Physics"),
(103, "Chemistry");

INSERT INTO Teachers_01 VALUES
(101,"TKD",101),
(102,"SM",102),
(103,"MMP",103),
(104,"RSP",101);
SELECT * FROM Teachers_01;
UPDATE Department_01 SET id=105 WHERE id=102;
SELECT * FROM Teachers_01;