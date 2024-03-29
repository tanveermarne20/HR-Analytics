-- 01.What is subquerry?
--Ans.The querry which is nested inside main query is known as subquerry
--    There are two types of subquerry
--    Single Row subquerry ---------->(Only comparision operators)
--    Multi Row subsquerry----------->(In,Any,All)
--The Inner querry will execute first than that output get compared with outer querry
--The output of outer querry depends on inner querry

--WAQD.those employees whose salary is greater than Adams salary.
--02.What is Single Row subquerry?
--Ans.The Inner querry which  returns single output,and that output get compared with outer querry
--    that is known as Single row Subquerry.
--In below mention querry,
--Inner querry will execute first and it give single output i.e (8200)
--and that 8200 get compared with the help of (>) symbol with outer querry.
SELECT *
FROM EMPLOYEES
WHERE SALARY>(SELECT SALARY
              FROM EMPLOYEES
              WHERE UPPER(FIRST_NAME)='ADAM');

--Using less than
SELECT FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY<(SELECT SALARY
            FROM EMPLOYEES
            WHERE UPPER(FIRST_NAME)='ADAM');

--Using =
SELECT FIRST_NAME,SALARY,COMMISSION_PCT
FROM EMPLOYEES
WHERE SALARY=(SELECT SALARY
                      FROM EMPLOYEES
                      WHERE SALARY=24000);

--WAQD-those employees whose department_id is same as Neena's department_id
--In below mention querry ,Inner querry will gives a single output i.e(90),and that single output
--get compared with outer querry with the help of Comparison operator i.e (=).
SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID=(SELECT DEPARTMENT_ID
                     FROM EMPLOYEES
                     WHERE UPPER(FIRST_NAME)='NEENA');


--WAQD--those employees whose  job_id is similar to Steven's job_id
--and join company after lex joining date
-- 03.What is Multi Row Subquerry?
--Ans.The Inner querry which is returning multiple outputs is known a
--    Multi row subquerry.
--    There are different operators with multi row sub querry
--    They are  (In,Any,All)

--In below mention querry ,Inner querry for job_id returning two outputs
--means it is a multi row subquerry
--Hence we have used (In) Operator here
--In operator will take all that 2outputs and compares with outer querry
--Than compiler will go to check And Condition
--here we are combining MultiRow Subquerry and SingleRow Subquerry 
--in a single whole querry


SELECT *
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_ID 
             FROM EMPLOYEES 
              WHERE UPPER(FIRST_NAME)='STEVEN')
AND HIRE_DATE >(SELECT HIRE_DATE
                FROM EMPLOYEES
                WHERE UPPER(FIRST_NAME)='LEX');            

--Here I have used In operator for knowing the work.
SELECT FIRST_NAME,SALARY,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN(30,40,80)
ORDER BY DEPARTMENT_ID DESC;



SELECT FIRST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY >ANY(SELECT SALARY
                  FROM EMPLOYEES
                  WHERE UPPER(FIRST_NAME)='STEVEN');
                  




--WAQD--those employees whose  job_id is similar to NEENA's job_id
--and join company after lex joining date
SELECT * 
FROM EMPLOYEES
WHERE JOB_ID IN (SELECT JOB_ID 
             FROM EMPLOYEES
             WHERE UPPER(FIRST_NAME)='STEVEN')
AND   HIRE_DATE>(SELECT HIRE_DATE
                 FROM EMPLOYEES
                 WHERE UPPER(FIRST_NAME)='LEX'
                 );  
                 
-- 04.what is IN Operator?
--Ans.The IN operator is used to compare a value to a set 
--    of values returned by a subquery.





--WAQD-those employees whose salary is greater than Avg salary
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY> (SELECT AVG(SALARY)
               FROM EMPLOYEES);
--WAQD-those employees whose salary is less than avg salary
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY<(SELECT AVG(SALARY)
            FROM EMPLOYEES);

--WAQD- those employees whose commision_pct is greater than avg commission_pct
SELECT FIRST_NAME,LAST_NAME,COMMISSION_PCT
FROM EMPLOYEES
WHERE COMMISSION_PCT>(SELECT AVG(COMMISSION_PCT)
                      FROM EMPLOYEES);
                      
--WAQD-those employees whose department_id is same as Kocchar and job_id
--same as STEVEN                      

SELECT *
FROM EMPLOYEES
WHERE DEPARTMENT_ID=(SELECT DEPARTMENT_ID 
                    FROM EMPLOYEES
                    WHERE UPPER(LAST_NAME)='KOCHHAR')
AND JOB_ID IN(SELECT JOB_ID
            FROM EMPLOYEES
            WHERE UPPER(FIRST_NAME)='STEVEN');     
            
            
--Retrieve the employee name, job title, and salary of the employee 
--who has the highest salary.            

SELECT FIRST_NAME,JOB_ID,SALARY
FROM EMPLOYEES
WHERE SALARY=(SELECT MAX(SALARY)
              FROM EMPLOYEES);
--Retrieve the employee name, job title, and salary of the employee 
--who has the LOWEST salary.              
            
SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY=(SELECT MIN(SALARY)
              FROM EMPLOYEES);


--List the names and job titles of employees who work in departments
--with IDs 10, 20, and 30.    


SELECT FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID
FROM EMPLOYEES
WHERE DEPARTMENT_ID IN (10,20,30);

--Display the employee names and salaries of those who
--earn a salary greater than any employee in the 'IT' department.

SELECT FIRST_NAME,LAST_NAME,SALARY
FROM EMPLOYEES
WHERE SALARY>ANY(SELECT SALARY
              FROM EMPLOYEES
              WHERE JOB_ID='IT_PROG');





--WAQD-those employees who have same job_id as Adam have
SELECT FIRST_NAME,LAST_NAME,SALARY,JOB_ID
FROM EMPLOYEES 
WHERE JOB_ID=(SELECT JOB_ID
              FROM EMPLOYEES
              WHERE UPPER(FIRST_NAME)='ADAM');
              
--WAQD-those employees whos              

SELECT *FROM EMPLOYEES;