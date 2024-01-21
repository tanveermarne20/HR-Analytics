SELECT *
FROM EMPLOYEES;

-- THIS IS INNER JOIN ,WE ARE WRITING INNER JOIN AND EXPLICITLY MENTIONING CONDITION IN ON CLAUSE
--THAT MATCH THE ROWS BASED ON E.DEPARTMENT_ID AND D.DEPARTMENT_ID ONLY
SELECT 
E.FIRST_NAME,
E.LAST_NAME,
E.JOB_ID,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E INNER JOIN DEPARTMENTS D
ON(E.DEPARTMENT_ID=D.DEPARTMENT_ID);
===================================================================================================


--THIS IS NATURAL JOIN 
SELECT 
E.FIRST_NAME,
E.LAST_NAME,
E.JOB_ID,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E
NATURAL JOIN DEPARTMENTS D;




SELECT ROUND(56.782,1)
FROM DUAL;



SELECT 
E.FIRST_NAME,
E.LAST_NAME,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E JOIN DEPARTMENTS D
USING(DEPARTMENT_ID,MANAGER_ID);



SELECT *
FROM EMPLOYEES
CROSS JOIN DEPARTMENTS;


SELECT COUNT(*)
FROM EMPLOYEES
CROSS JOIN DEPARTMENTS;



SELECT 
E.FIRST_NAME,
E.LAST_NAME,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E FULL OUTER JOIN DEPARTMENTS D
USING (DEPARTMENT_ID);


SELECT 
E.FIRST_NAME,
E.LAST_NAME,
E.SALARY,
D.DEPARTMENT_NAME
FROM EMPLOYEES E RIGHT OUTER JOIN DEPARTMENTS D
USING (DEPARTMENT_ID);

SELECT DISTINCT (DEPARTMENT_ID)
FROM EMPLOYEES;

SELECT COUNT(*)
FROM DEPARTMENTS;


SELECT ROUND(15.678,2)
FROM DUAL;

SELECT TRUNC(12154.326,1)
FROM DUAL;


