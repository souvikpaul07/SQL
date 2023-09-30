# TRUNCATE : deletes the data of Table (the Table itself exist)
# DROP command deletes the whole Table.

CREATE DATABASE BRANDS;
USE BRANDS;

CREATE TABLE BAGS(
	Brand_name VARCHAR(20),
    Color VARCHAR(30),
    Capacity INT
);

TRUNCATE TABLE BAGS;

CREATE TABLE IF NOT EXISTS BAGS(   # this will show a warning as TRUNCATE only deletes the tablse data & not the Table.
	name VARCHAR(50)
);
