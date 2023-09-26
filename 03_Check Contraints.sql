CREATE DATABASE Student_info;
USE Student_info;

CREATE TABLE Students_Eligibility(
	Name VARCHAR(50) NOT NULL,
    PERCENTAGE INT,
    BACKLOGS INT,
    CONSTRAINT checking_the_eligibility CHECK (PERCENTAGE>=60  AND BACKLOGS<=2)   #eligible if aggregated percentage is above 60% with not more than 2 backlogs
);

INSERT INTO Students_Eligibility VALUES("Souvik",61,0);
INSERT INTO Students_Eligibility VALUES("Vidhi",96,0);

SELECT * FROM Students_Eligibility;