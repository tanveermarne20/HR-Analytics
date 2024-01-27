--1) Write a SQL query to count the number of duplicate first name as
--duplicate_count in the employee table.
SELECT FIRST_NAME,COUNT(FIRST_NAME)
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(FIRST_NAME)>1;


--2) Find the departments with more than 5 employees as
--total_employees from the employee table.

SELECT 
D.DEPARTMENT_NAME,
COUNT(E.EMPLOYEE_ID)
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
GROUP BY D.DEPARTMENT_NAME
HAVING COUNT(E.EMPLOYEE_ID)>1;

--3) Determine the department with an average salary greater than
--5000 as average_salary from the employee table.
SELECT 
DEPARTMENT_NAME,
TRUNC(AVG(E.SALARY)) AS AVG_SALARY
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
GROUP BY DEPARTMENT_NAME
HAVING AVG(E.SALARY)>5000;



--4) Find the department where the highest salary (as highest_salary) is
--at least twice the lowest salary (as lowest_salary) in the employee
--table.





