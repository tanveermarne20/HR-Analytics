SELECT *
FROM EMPLOYEES;

--1) Display all the details of the employees whose emp_no is more than
--1020 and salary is not available.
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID>110
AND SALARY IS NULL;

--2) Retrieve those employee whose COMMISSION_PCT is null.
SELECT *
FROM EMPLOYEES
WHERE COMMISSION_PCT IS NULL;


--3) Retrieve emp_id, first_name, salary and department of those
--employees who works in any department.

SELECT 
E.EMPLOYEE_ID,
E.FIRST_NAME,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN  DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE D.DEPARTMENT_NAME IS NOT NULL;



--4) Get emp_ID, first_name , salary and the annual salary of the employees
--as column name “annual salary”. If salary is not available, then display
--“0” in result set.
SELECT 
EMPLOYEE_ID,
FIRST_NAME,
SALARY,
--NVL2(SALARY,SALARY*12,0) AS ANNUAL_SALARY 
(SALARY*12) AS ANNUAL_SALARY
FROM EMPLOYEES;


--5) Write a query to retrieve those employees whoS  JOB_ID IS AD_PRE and who
--doesn’t belong to any department

SELECT *
FROM EMPLOYEES
WHERE UPPER(JOB_ID) ='SA_REP'
AND 
DEPARTMENT_ID IS NULL;




