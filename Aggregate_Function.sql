SELECT *
FROM EMPLOYEES;

SELECT *
FROM DEPARTMENTS;
SELECT *
FROM LOCATIONS;
--1) Find the number of ST_CLERK employee as total_ST_CLERK from "employee"
--table.
SELECT JOB_ID,COUNT(EMPLOYEE_ID) AS TOTAL_ST_CLERK
FROM EMPLOYEES
WHERE JOB_ID='ST_CLERK'
GROUP BY JOB_ID;


--1) Find the number of IT_PROG employee as total_IT_PROG from "employee"
--table.
SELECT JOB_ID,COUNT(EMPLOYEE_ID) AS TOTAL_IT_PROG
FROM EMPLOYEES
WHERE UPPER(JOB_ID)='IT_PROG'
GROUP BY JOB_ID;

--2) Write a SQL query to find the number of employees whose first name
--starts with the letter ‘J’ from "employee" table.
SELECT COUNT(EMPLOYEE_ID) AS Total_emp
from employees
where first_name like 'J%';




--3) Find the total salary of employees whose employee numbers
--(emp_no) are between 1010 and 1020 from "employee" table..
SELECT EMPLOYEE_ID,SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
WHERE EMPLOYEE_ID BETWEEN 110 AND 115
GROUP BY EMPLOYEE_ID;

--Important question
--4) Write a SQL query to calculate the total annual salary of all
--employees as annual_salary in the SALES department from "employee"
--table.
SELECT  
E.EMPLOYEE_ID,
E.FIRST_NAME,
E.LAST_NAME,
E.SALARY,
(E.SALARY*12)AS ANNUAL_SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON(E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE UPPER(D.DEPARTMENT_NAME)='SALES';


--5) Find the average salary of all employees as avg_salary from
--"employee" table.
SELECT 
ROUND(AVG(SALARY),2) AS AVG_SALARY
FROM EMPLOYEES;

--6) Find the average salary of employees working in the IT department
--from "employee" table.
SELECT 
AVG(E.SALARY) AS AVG_SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE UPPER(D.DEPARTMENT_NAME)='IT'
GROUP BY D.DEPARTMENT_NAME;


--7) Write a SQL query to find the earliest joining date as
--min_joining_date among all employees in the "employee" table.
SELECT *
FROM EMPLOYEES
WHERE HIRE_DATE=(SELECT MAX(HIRE_DATE)
                 FROM EMPLOYEES);
                 

--8) Find the minimum salary of employees working in the Finance
--department as min_salary from "employee" table.
                 
SELECT 
D.DEPARTMENT_NAME,
MIN(E.SALARY) AS MIN_SALARY
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE UPPER(D.DEPARTMENT_NAME)='FINANCE'
GROUP BY D.DEPARTMENT_NAME;



--9) Find the maximum HIRE date among all employees from "employee"
--table as max_HIRE_DATE.

SELECT 
MAX(HIRE_DATE) AS MAX_HIRE_DATE
FROM EMPLOYEES;




--10) What is the highest employee number (emp_no) in the "employee"
--table

SELECT MAX(EMPLOYEE_ID)
FROM EMPLOYEES;

SELECT COUNT(NVL(COMMISSION_PCT,0))
FROM EMPLOYEES;

--WHO IS THE EMPLOYEE FROM SEATTLE
SELECT 
E.FIRST_NAME,
E.LAST_NAME,
L.CITY
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
JOIN LOCATIONS L ON (L.location_id=D.LOCATION_ID)
WHERE UPPER(L.CITY)='SEATTLE';



--Find department name where maximum employees are working
--This through Rownum
SELECT * FROM(
SELECT 
D.DEPARTMENT_NAME,
COUNT(E.EMPLOYEE_ID)
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
GROUP BY D.DEPARTMENT_NAME
ORDER BY COUNT(E.EMPLOYEE_ID) DESC
)WHERE ROWNUM<=1;





--This is through Rankorder
SELECT DEPARTMENT_NAME, EMPLOYEE_COUNT
FROM (
  SELECT 
    D.DEPARTMENT_NAME,
    COUNT(E.EMPLOYEE_ID) AS EMPLOYEE_COUNT,
    RANK() OVER (ORDER BY COUNT(E.EMPLOYEE_ID) DESC) AS RANK_ORDER
  FROM EMPLOYEES E
  JOIN DEPARTMENTS D ON (E.DEPARTMENT_ID = D.DEPARTMENT_ID)
  GROUP BY D.DEPARTMENT_NAME
)
WHERE RANK_ORDER = 1;


