--1) Write a SQL query to retrieve all the records with joining_date sorted
--in descending order.

SELECT *
FROM EMPLOEEES
ORDER BY HIRE_DATE DESC;


--2) Write an SQL query to retrieve all records from employee table and
--sort them by last name in ascending order.
SELECT *
FROM EMPLOYEES
ORDER BY LAST_NAME ASC;



--3) Retrieve emp_no, first_name, JOB_ID and salary from the employee
--table whose salary is not NULL and sort them by JOB_ID in ascending
--order, then by first name in ascending order.

SELECT 
EMPLOYEE_ID,
FIRST_NAME,
JOB_ID,
SALARY
FROM EMPLOYEES
WHERE SALARY IS NOT NULL
ORDER BY JOB_ID ASC,FIRST_NAME ASC;


--4) Get all those employee from the employee table whose emp_no is
--between 110 and 180 and sort them by emp_no in descending
--order.
SELECT *
FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 110 AND 180
ORDER BY EMPLOYEE_ID DESC;


--5) Write a SQL query to retrieve unique First name and sort First Name
--in ascending order.
SELECT DISTINCT FIRST_NAME
FROM EMPLOYEES
ORDER BY FIRST_NAME ASC;




--6) Retrieve emp_no, first_name, department and HIRE_DATE from the
--employee table whose department contains only two character and
--sort them by department in ascending order then by birth_date in
--descending order
SELECT 
E.EMPLOYEE_ID,
E.FIRST_NAME,
E.HIRE_DATE,
D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON(E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE D.DEPARTMENT_NAME LIKE '__'
ORDER BY D.DEPARTMENT_NAME ASC, E.HIRE_DATE DESC;
































