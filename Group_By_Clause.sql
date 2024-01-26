SELECT *
FROM EMPLOYEES;

SELECT FIRST_NAME,LAST_NAME,SALARY,MIN(SALARY)
FROM EMPLOYEES
GROUP BY FIRST_NAME,LAST_NAME,SALARY
ORDER BY FIRST_NAME;




--Max() is applicable for characters
SELECT MAX(FIRST_NAME) AS FULL_name
FROM EMPLOYEES;

--Min() is applicable for characters
SELECT MIN(FIRST_NAME) AS FULL_NAME
FROM EMPLOYEES;


SELECT  DISTINCT DEPARTMENT_ID,(SALARY)
FROM EMPLOYEES;

--Count function does not take NUll values
SELECT COUNT(DEPARTMENT_ID) AS CNT
FROM EMPLOYEES;



--WAQD-Find full name,Total_experience,whos got hired in month of 03
--AND SALARY>100
SELECT 
CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME) AS FULL_NAME,HIRE_DATE,
ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE),1) AS TOTAL_EXP
FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'MM')=03 AND SALARY>100;

SELECT 
UPPER(CONCAT(SUBSTR(FIRST_NAME,1,5),'UAE')) AS FULL_NAME,DEPARTMENT_ID,
ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE),2) AS TOTAL_EXP,
LAST_DAY(HIRE_DATE) AS LAST_DATE_OF_MONTH,
SALARY,
SALARY+SALARY*NVL(COMMISSION_PCT,0) AS TOTAL_SALARY,
HIRE_DATE
FROM EMPLOYEES
WHERE TO_CHAR(HIRE_DATE,'MM')=03;

--WAQD- full_name,total_experience and last day of hired month
--from employees and hired in the year 2002
SELECT 
  UPPER(CONCAT(SUBSTR(FIRST_NAME, 1, 5), 'UAE')) AS FULL_NAME,
  MAX(SALARY) AS MAXIMUM_SALARY,
  ROUND(MONTHS_BETWEEN(SYSDATE, HIRE_DATE), 2) AS TOTAL_EXP,
  LAST_DAY(HIRE_DATE) AS LAST_DATE_OF_MONTH
FROM 
  EMPLOYEES
WHERE 
  EXTRACT(YEAR FROM HIRE_DATE) = 2002
GROUP BY
  UPPER(CONCAT(SUBSTR(FIRST_NAME, 1, 5), 'UAE')),
  ROUND(MONTHS_BETWEEN(SYSDATE, HIRE_DATE), 2),
  LAST_DAY(HIRE_DATE);
  
  
  
  
  
  
SELECT *
FROM EMPLOYEES
WHERE 
  TO_CHAR(HIRE_DATE,'DD')=03 
  AND
  TO_CHAR(HIRE_DATE,'YY')=06;
 
 
 
 
 
 
 
--WAQD-Those employees who got hired in the year of 2003  
  SELECT *
  FROM EMPLOYEES
  WHERE 
  EXTRACT(YEAR FROM HIRE_DATE)=2003;


SELECT 
  COUNT(FIRST_NAME) AS TITLE,
  SUM(SALARY) AS TOTAL_SUM,
  MIN(SALARY) AS MIN_SAL,
  CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME) AS FULL_NAME
FROM EMPLOYEES
GROUP BY CONCAT(CONCAT(FIRST_NAME, ' '), LAST_NAME)
ORDER BY full_name;


SELECT 
DEPARTMENT_ID,
 COUNT(FIRST_NAME) AS CNT,
 MIN(SALARY) MIN_SAL,
 MAX(COMMISSION_PCT) MAX_COMMI_PCT,
 AVG(SALARY),
 CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME) AS FULL_NAME,
 ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE),2) AS TOTAL_EXP
 FROM EMPLOYEES
  GROUP BY 
      DEPARTMENT_ID,
      CONCAT(CONCAT(FIRST_NAME,' '),LAST_NAME),
      ROUND(MONTHS_BETWEEN(SYSDATE,HIRE_DATE),2);





--WAQD-distinct department max salary
SELECT DISTINCT DEPARTMENT_ID ,MAX(SALARY) AS HIGHEST_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY DEPARTMENT_ID;





SELECT MIN(HIRE_DATE) AS MINIM,MAX(HIRE_DATE)AS MAXIMUM
FROM EMPLOYEES;


SELECT MIN(FIRST_NAME) AS MI ,MAX(FIRST_NAME) AS MA
FROM EMPLOYEES;


SELECT COUNT(MANAGER_ID)
FROM EMPLOYEES;

SELECT COUNT(DISTINCT DEPARTMENT_ID)
FROM EMPLOYEES;

SELECT COUNT(NVL(MANAGER_ID,0))
FROM EMPLOYEES;

SELECT
FIRST_NAME,JOB_ID,DEPARTMENT_ID,ROUND(MAX(SALARY),2) AS AVG_SAL
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID,JOB_ID
ORDER BY DEPARTMENT_ID;


SELECT COUNT(NVL(COMMISSION_PCT,0))
FROM EMPLOYEES;



--WAQD find full name,Total_experience of those employees 
--who got hired in 2002 and last day of hired month
SELECT 
CONCAT(CONCAT(FIRST_NAME, ' '),LAST_NAME) AS FULL_NAME,
CEIL(MONTHS_BETWEEN(SYSDATE,HIRE_DATE)) AS TOTAL_EXPERIENCE,HIRE_DATE,
SALARY,
LAST_DAY(HIRE_DATE) AS LAST_DATE_OF_HIRE_MONTH
FROM EMPLOYEES
 WHERE EXTRACT (YEAR FROM HIRE_DATE)=2002;
 
 
 
 --1) Write a SQL query to count the number of duplicate first name as
--duplicate_count in the employee table.
SELECT FIRST_NAME,COUNT(FIRST_NAME) AS DUPLICATE_COUNT
FROM EMPLOYEES
GROUP BY FIRST_NAME
HAVING COUNT(FIRST_NAME)>1;

 
--2) Find the departments with more than 5 employees as
--total_employees from the employee table.



