-- 01.What are set operators?
--Ans.The set operators are 
--    UNION
--    UNION ALL
--    INTERSECT
--    MINUS

--RULES
--Number of column should be same
--Data types should be same
--We can add multiple columns in select
--Correct sequence matters!!




-- 01.What is Union operator?
--Ans.The Union operator combines the result of two or more select statements
--    removing duplicates
SELECT DEPARTMENT_ID ,JOB_ID FROM EMPLOYEES
UNION
SELECT DEPARTMENT_ID,JOB_ID FROM JOB_HISTORY;


SELECT DEPARTMENT_ID AS D,JOB_ID AS J FROM EMPLOYEES
UNION
SELECT DEPARTMENT_ID,JOB_ID FROM JOB_HISTORY;



--Here is querry we can add multiple columns
SELECT DEPARTMENT_ID,JOB_ID FROM EMPLOYEES
UNION
SELECT DEPARTMENT_ID,JOB_ID FROM JOB_HISTORY;



-- 02.What is Union All operator in sql?
--Ans.The Union All operator  combines the result of two or more select statements
--    including duplicates
--    It does not eliminate duplicate rows. 
SELECT DEPARTMENT_ID,JOB_ID FROM EMPLOYEES
UNION ALL
SELECT DEPARTMENT_ID ,JOB_ID FROM JOB_HISTORY;


-- 03.What is Intersect operator in sql?
--Ans.The INTERSECT operator returns the common rows between two SELECT statements.
--   It retrieves only the rows that appear in both result sets.
SELECT DEPARTMENT_ID FROM EMPLOYEES
INTERSECT
SELECT DEPARTMENT_ID FROM JOB_HISTORY;