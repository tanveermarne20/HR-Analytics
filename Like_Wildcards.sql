--1) Select all employees whose first name ends with 'y’.
SELECT *
FROM EMPLOYEES
WHERE FIRST_NAME LIKE '%y';

--2) Select all employees whose date of HIRE_DATE is in April
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%-04-%';

--3) Select emp_id , first name and department_name of the employees whose
--department does not contains the word ‘ing’.


SELECT 
E.EMPLOYEE_ID,
E.FIRST_NAME,
E.LAST_NAME,
D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE E.FIRST_NAME NOT LIKE '%ing%';

--4) Select all employees whose last name starts with ‘w’ and has
--emp_ID more than 101.

SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE 'W%'
AND 
EMPLOYEE_ID>101;

--5) Select first_name and last_name of the employee with a first_name
--that start with “j” and are at least 4 characters in length.
SELECT 
FIRST_NAME,
LAST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME LIKE 'J___';


--6) Select all employees whose last name contains ‘ill’ and has salary
--between 3000 and 16000.
SELECT *
FROM EMPLOYEES
WHERE LAST_NAME LIKE '%ill%'
AND
SALARY BETWEEN 3000 AND 24000;


--7) Select emp_no, first_name and last_name of the employee whose
--first name starts with 'S' and whose last name contains at least two 'l'
--characters.
SELECT 
EMPLOYEE_ID,
FIRST_NAME,
LAST_NAME
FROM EMPLOYEES WHERE FIRST_NAME LIKE 'S%'
AND LAST_NAME LIKE '%l%l%';

--8) Select all employees whose joining date is either June 2023 or June 2021
-- and emp_no is not between 1011 and 1020
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE LIKE '%-06-2007' OR HIRE_DATE LIKE '%-06-2003'
AND
EMPLOYEE_ID NOT BETWEEN 101 AND 110;




