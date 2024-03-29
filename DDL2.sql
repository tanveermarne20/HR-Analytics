-- DDL -Data definition language
-- CREATE :- TO CREATE TABLE 
-- ALTER :- CHANGES IN TABLE STRUCTURE ( ADD , DROP , MODIFY , RENAME)
--TRUNCATE :- MAKE TABLE EMPTY
-- DROP :- DELETE TABLE FROM SCHEMA

-- DML-Data Manipulation langauge 
-- INSERT :- to INSERT RECORD
-- UPDATE :- UPDATE the record 
-- DELETE :- delete the record

-- TCL :-Transaction control language
-- commit :- to save changes
-- Rollback :- to undo the changes
-- savepoint :- it act like a pointer which is pointing to particular step


SELECT *
FROM STUDENT;

--For adding column
ALTER TABLE STUDENT
ADD  DIVISION VARCHAR2(5);

--For dropping column
ALTER TABLE STUDENT
DROP COLUMN DIVISION;

--For describing table
DESC STUDENT;


--For modifying column datatype
ALTER TABLE STUDENT
MODIFY SNAME VARCHAR(30); 


--For renameing column name
ALTER TABLE STUDENT
RENAME COLUMN SNAME TO STUD_NAME;

--ALTER----------------->(ADD,DROP,MODIFY,RENAME)




--- TCL 
-- HOMEWORK 1
--step 1 . CREATE 1 TABLE.
CREATE TABLE CADET(
    CADET_ID NUMBER PRIMARY KEY,
    CADET_NAME VARCHAR2(50),
    CITY VARCHAR2(10),
    GENDER VARCHAR2(1) CHECK (GENDER IN ('M', 'F'))
);

-- STEP 2. INSERT 5 RECORDS
INSERT INTO CADET (CADET_ID,CADET_NAME,CITY,GENDER)
VALUES(1,'Rahul','Noida','M');
INSERT INTO CADET (CADET_ID,CADET_NAME,CITY,GENDER)
VALUES(2,'Vijay','Bangalore','M');
INSERT INTO CADET (CADET_ID,CADET_NAME,CITY,GENDER)
VALUES(3,'Kedar','Mumbai','M');
INSERT INTO CADET (CADET_ID,CADET_NAME,CITY,GENDER)
VALUES(4,'Ashvin','Sarjapur','M');
INSERT INTO CADET (CADET_ID,CADET_NAME,CITY,GENDER)
VALUES(5,'SAGAR','RAJASTHAN','M');
SAVEPOINT A;


-- STEP 3. UPDATE 2 RECORDS
UPDATE CADET SET 
CADET_NAME='Raj'
WHERE CADET_ID=5;

UPDATE CADET SET
CITY='Chennai'
WHERE CADET_ID=4;

SAVEPOINT B;

-- STEP 4. DELETE 1 RECORD
DELETE FROM CADET
WHERE CADET_ID=3;

SAVEPOINT C;


ROLLBACK TO SAVEPOINT A ;

SELECT *
FROM CADET;




--------------------------///////////////////////////////////////----------


----- TCL 
---- HOMEWORK 1
----step 1 . CREATE 1 TABLE.
CREATE TABLE BOOK(
 BOOK_ID NUMBER PRIMARY KEY,
 BOOK_NAME VARCHAR(2),
 BOOK_PRICE NUMBER(3),
 BOOK_PAGES NUMBER(3)
);

SELECT *
FROM BOOK;

---- STEP 2. INSERT 5 RECORDS

INSERT INTO BOOK(BOOK_ID,BOOK_NAME,BOOK_PRICE,BOOK_PAGES)
VALUES(1,'Classmate',75,200);
INSERT INTO BOOK(BOOK_ID,BOOK_NAME,BOOK_PRICE,BOOK_PAGES)
VALUES(2,'Aclass',95,200);
INSERT INTO BOOK(BOOK_ID,BOOK_NAME,BOOK_PRICE,BOOK_PAGES)
VALUES(3,'Roughbook',45,200);
INSERT INTO BOOK(BOOK_ID,BOOK_NAME,BOOK_PRICE,BOOK_PAGES)
VALUES(4,'Fairbook',85,200);
INSERT INTO BOOK(BOOK_ID,BOOK_NAME,BOOK_PRICE,BOOK_PAGES)
VALUES(5,'Sundaram',65,200);
INSERT INTO BOOK(BOOK_ID,BOOK_NAME,BOOK_PRICE,BOOK_PAGES)
VALUES(6,'Navneet',55,200);
SAVEPOINT ABC;
--
---- STEP 3. UPDATE 2 RECORDS
UPDATE BOOK SET
BOOK_PRICE=700
WHERE BOOK_ID=2;

UPDATE BOOK SET
BOOK_NAME='Apple Notebook'
WHERE BOOK_ID=1;

commit;
SAVEPOINT XYZ;
--
---- STEP 4. DELETE 1 RECORD
 DELETE FROM 
 BOOK
 WHERE BOOK_ID=5;
 
 SAVEPOINT PLM;

ROLLBACK TO SAVEPOINT ABC ;

--How to rename the table name;
SELECT *
FROM BOOK_DETAILS;

 RENAME BOOK TO BOOK_DETAILS;


--======================================================================
--- homework 3
--
--DESC STUDENT_DETAILS ;-- EMPTY
---- 1,0   1-M 0-F
--
--???? ALTER & MODIFY

DESC STUDENT;

--=====================================================
--  homework 4 

-- table present along with data

-- varchar --> number ???


ALTER TABLE STUDENT
MODIFY MARKS VARCHAR2(10);

DESC STUDENT;

SELECT *
FROM STUDENT;

SELECT COUNT(*) AS total_columns
FROM USER_TAB_COLUMNS
WHERE TABLE_NAME = 'STUDENT';











