--WHAT IS LEAD()?
--ANS. The LEAD() function is a window function that retrieves 
--the value of a specified column from the next row within a result set, 
--based on a defined order. 
--It is commonly used to compare a current row's value with the value
--of the next row in a specific orde
SELECT FIRST_NAME,LAST_NAME,SALARY,
LEAD(SALARY) OVER(ORDER BY SALARY ) AS DEN
FROM EMPLOYEES;


--WHAT IS LAG()?
--ANS. The LAG() function is a window function that allows you to access
--the value of a specified expression from the previous
--row within the result set. 

SELECT FIRST_NAME,LAST_NAME,SALARY,
LAG(SALARY) OVER(ORDER BY SALARY) AS LG
FROM EMPLOYEES;



