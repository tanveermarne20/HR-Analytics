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
