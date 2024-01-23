--Important note (WAQD) means--------->Write a querry to display

--01.Retrive names and salary of employees who are working in department
--(10,20,30) and having salary more than 10000 OR having 
--commission_pct>0.30
SELECT FIRST_NAME,LAST_NAME,SALARY,COMMISSION_PCT
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (10,20,30) AND
SALARY>10000
OR COMMISSION_PCT>0.30;

--02.WAQD-who sepend longest tenure in a company
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE=(SELECT MIN(HIRE_DATE)
                 FROM EMPLOYEES);

--03.WAQD-those employees who joined company in 2005 december month
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE IN (SELECT HIRE_DATE
                 FROM EMPLOYEES
                 WHERE
                 TO_CHAR(HIRE_DATE,'YYYY')=2005
                 AND
                 TO_CHAR(HIRE_DATE,'MM')=12
                );


--4.WAQD-those employees whose records are present in job_history table
SELECT *
FROM EMPLOYEES INNER JOIN JOB_HISTORY
ON (EMPLOYEES.JOB_ID=JOB_HISTORY.JOB_ID);


--05.WAQD-details of those department where more than 15 employees are working
SELECT  COUNT(EMPLOYEE_ID) AS CNT,department_id
FROM EMPLOYEES
GROUP BY department_id
HAVING COUNT(EMPLOYEE_ID) >15;

--06.WAQD-WHO joined company at last(recently)
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE=(SELECT MAX(HIRE_DATE)
                 FROM EMPLOYEES);

--07.WAQD-who are belong to city Oxfordand working in department IT_PROG
SELECT *
FROM EMPLOYEES INNER JOIN DEPARTMENTS
ON(EMPLOYEES.DEPARTMENT_ID=DEPARTMENTS.DEPARTMENT_ID)
JOIN LOCATIONS ON(LOCATIONS.LOCATION_ID=DEPARTMENTS.LOCATION_ID)
WHERE UPPER(LOCATIONS.CITY)='OXFORD'
AND  UPPER(EMPLOYEES.JOB_ID)='IT_PROG';

--08.WAQD-those employees who has 6 digit salary and first_name
--contains letter p at 5th position and joined company before
-- year 2006
--===============================================================================


--09.Write a query to list out manager names.(two different solutions)
--This is one way
SELECT 
m.EMPLOYEE_ID,
m.FIRST_NAME AS EMPLOYEE_NAME,
e.FIRST_NAME AS MANAGER_NAME
FROM EMPLOYEES m JOIN EMPLOYEES e
ON(e.EMPLOYEE_ID=m.MANAGER_ID);

--This is another way
SELECT 
e.EMPLOYEE_ID,
e.FIRST_NAME AS EMPLOYEE_NAME,
m.FIRST_NAME AS MANAGER_NAME
FROM EMPLOYEES e INNER JOIN EMPLOYEES m
ON(e.MANAGER_ID=m.EMPLOYEE_ID);


