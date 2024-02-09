-- view
-- virtul image
--What is view?
--Ans.Its a Virtual image/
--    Temporary storage/
--    DDL stores permanently
--    View has query that actually runs

--   What is the use of view?
--Ans. To provide the required data
--     Security Implementation
--     We can reuse the data-
--     To hide the logic
--     Making complex query
--     Fast speed retrival,
--     View gives latest data
--     Keeps data in Ram.


--   What is syntax of view?
--Ans. CREATE OR REPLACE VIEW  VIEW_NAME
--     AS
--     DML   


--- types of views
-- simple view
-- complex ====
-- step 1.. create 1 simple view ( table A ( 10) --- View 5 
-- step 2.. create view on top of view
-- step 3.. join table A & view 
-- DML

-- STEP1 INSERT DATA INTO VIEW

-- UPDATE VIEW
SELECT * FROM EMPLOYEE;
-- DELETE 

--Homework 1 .Create a view
CREATE OR REPLACE VIEW EMP_USER_VIEW1
AS
SELECT EMPLOYEE_ID,EMPLOYEE_NAME,SALARY,DEPARTMENT_ID FROM EMPLOYEE;

SELECT *
FROM EMP_USER_VIEW1;

--Homework 2---CREATE a view from first view
CREATE OR REPLACE VIEW EMP_USER_VIEW2
AS
SELECT EMPLOYEE_ID,SALARY
FROM EMP_USER_VIEW1;

--Homework3----Join first view with any table in Hr
SELECT 
E.EMPLOYEE_ID,E.EMPLOYEE_NAME,E.SALARY,E.DEPARTMENT_ID,
D.DEPARTMENT_NAME
FROM EMP_USER_VIEW1 E JOIN DEPARTMENT D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID);
---YES ,VIEW IS JOINED WITH TABLE.

--HOMEWORK4.INSERT INTO VIEW.

INSERT INTO EMP_USER_VIEW1(EMP_ID,EMP_NAME,SALARY,DEPT_ID,MANAGER_ID)
VALUES(6,'Sunil',89000,105,'M110');

SELECT *
FROM EMPLOYEE;

--WHEN WE INSERT INTO VIEW
--It get insert into table also.

COMMIT;
SELECT *FROM EMPLOYEE;
SELECT *FROM DEPARTMENT;





--====================================================================================================
-- 01.What is view?
--Ans.View is a database object which is created over an SQL query
--      View just represent data that is just return by sql querry
--      View does not stores data,but every time you execute querry
--      it just execute the sql querry
--      View is like a viirtual table     
--      The difference between Table and View is 
--        The table can store data but view does not






--How sql process view?
--Create and modify view
--Why use view?
--Rules for updatable view





CREATE USER OFFICE IDENTIFIED BY root;

GRANT ALL PRIVILEGES TO OFFICE;




