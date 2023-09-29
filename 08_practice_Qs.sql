# For a given table, find the total payment according to each payment method

CREATE DATABASE STORE;
USE STORE;

CREATE TABLE PURCHASES(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO PURCHASES VALUES(101,"Olivia","Netbanking","Portland");
INSERT INTO PURCHASES VALUES(102,"Ethan","Credit Card","Miami");
INSERT INTO PURCHASES VALUES(103,"Mike","Credit Card","Seattle");
INSERT INTO PURCHASES VALUES(104,"Liam","Netbanking","Denver");
INSERT INTO PURCHASES VALUES(105,"Sophia","Credit Card","New Orleans");
INSERT INTO PURCHASES VALUES(106,"Caleb","Debit Card","Minneapolis");
INSERT INTO PURCHASES VALUES(107,"Ava","Debit Card","Phoenix");
INSERT INTO PURCHASES VALUES(108,"Lucas","Netbanking","Boston");
INSERT INTO PURCHASES VALUES(109,"Isabella","Netbanking","Nashville");
INSERT INTO PURCHASES VALUES(110,"Jackson","Credit Card","Boston");

SELECT mode, count(customer) FROM PURCHASES GROUP BY mode;