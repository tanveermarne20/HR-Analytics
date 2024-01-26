--1) Write a query to get all the details of the employee who joined the
--company between 17 june 2003 to 28st sept 2005.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE BETWEEN '17-06-03' AND '28-09-05';

--2) Write a query to get first_name, last_name and salary of the
--employee whose last_name is 'Kochhar','Weiss','Mallin'
SELECT 
FIRST_NAME,
LAST_NAME,
SALARY
FROM EMPLOYEES
WHERE LAST_NAME IN ('Kochhar','Weiss','Mallin');

--3) Write a query to display all the details of the employee whose salary
--is not between 40000 to 50000.
SELECT *
FROM EMPLOYEES
WHERE SALARY BETWEEN 5000 AND 17000;

--4) Write a query to get emp_no, first_name, salary and department of
--the employee whose department is not Marketing, HR and Finance.
--And the column name for department will be ‘other_department’.
SELECT 
E.EMPLOYEE_ID,
E.FIRST_NAME,
E.SALARY,
D.DEPARTMENT_NAME AS OTHER_DEPARTMENTS
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE D.DEPARTMENT_NAME NOT IN ('HR','Finance','Purchasing','Accounting','Shipping');

--5) Write a query to get all the details of the employee whose emp_no is
--more than 1020 and the first name of the employee is 'David','Pat','John;
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID >110
AND
FIRST_NAME IN ('David','Pat','John');



--6) Write a query to get all the details of the employee whose JOB_ID is
--SA_REP and HIRE_DATE is between 9 July 1997 to 9 July 1998.

SELECT *
FROM EMPLOYEES
WHERE UPPER(JOB_ID)='SA_REP'
AND
HIRE_DATE BETWEEN '17-06-03' AND '23-05-06';

