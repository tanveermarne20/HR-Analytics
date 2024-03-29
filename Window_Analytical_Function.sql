--THE BEST WAY TO UNDERSTAND THE WINDOW FUNCTION IS BY FIRST GOING THROUGH AN
--AGGREGATE FUNCTION
SELECT *
FROM EMPLOYEE;

--EXTRACT THE MAX SALARY  IN EACH DEPARTMENT
SELECT D.DEPARTMENT_NAME,
MAX(E.SALARY)
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
GROUP BY D.DEPARTMENT_NAME;





--FETCH THE TOP 3 EMPLOYEE IN EACH DEPARTMENT EARNING THE MAX SALARY
SELECT *FROM(
SELECT E.FIRST_NAME,
D.DEPARTMENT_NAME,E.SALARY,
RANK() OVER(PARTITION BY D.DEPARTMENT_NAME ORDER BY E.SALARY DESC) AS RNK
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
)WHERE RNK<=3;

--HOW MANY EMPLOYEES WORKING IN ACCOUNTING;
SELECT D.DEPARTMENT_NAME,COUNT(E.EMPLOYEE_ID) AS CNT
FROM EMPLOYEES E JOIN DEPARTMENTS D
ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID)
WHERE UPPER(D.DEPARTMENT_NAME)='ACCOUNTING'
GROUP BY D.DEPARTMENT_NAME;





--WHAT IS LEAD() AND LAG()?
SELECT E.EMPLOYEE_ID,D.DEPARTMENT_NAME,E.SALARY,
LAG(E.SALARY) OVER(PARTITION BY D.DEPARTMENT_NAME ORDER BY E.EMPLOYEE_ID) AS PREVI_EMP_SAL
FROM EMPLOYEES E JOIN DEPARTMENTS D

ON (E.DEPARTMENT_ID=D.DEPARTMENT_ID);










--====================================================HEMANT 20THE FEB ANALYTICAL FUNCTION


--TOP 3 SALARIES
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RANKK
FROM EMPLOYEES;


--ALL ANALYTICAL FUNCTION  IN ONE QUERY
SELECT FIRST_NAME,LAST_NAME,SALARY,
ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS ROWNUMM,
RANK() OVER(ORDER BY SALARY DESC) AS RNK,
DENSE_RANK() OVER (ORDER BY SALARY DESC) AS RNK
FROM EMPLOYEES;

--ROW_NUMBER   WORKING MECH
SELECT FIRST_NAME,LAST_NAME,SALARY,
ROW_NUMBER() OVER(ORDER BY SALARY DESC) AS ROW_NUM
FROM EMPLOYEES;

--RANK WORKING MECH 
SELECT FIRST_NAME,LAST_NAME,SALARY,
RANK() OVER(ORDER BY SALARY DESC) AS RNK
FROM EMPLOYEES;

SELECT *
FROM (
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER( ORDER BY SALARY DESC) AS DENSE
FROM EMPLOYEES)
WHERE DENSE <= 3;


--FECH TOP 3 SALARIES WITH CLAUSE.
WITH TEMP_01 AS
(SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER (ORDER BY SALARY DESC) AS RNK
FROM EMPLOYEES
)
SELECT *
FROM TEMP_01
WHERE RNK <=3;





--WAQD- BOTTOM 3 SALARY
SELECT *FROM(
SELECT e.*,
DENSE_RANK() OVER(ORDER BY SALARY ASC) AS BOTTOM
FROM EMPLOYEES e
) WHERE BOTTOM<=3;


--04.WAQD- DEPARTMENT WISE TOP 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DEPT_WISE
FROM EMPLOYEES
) WHERE DEPT_WISE<=3;



--05.WAQD- DEPARTMENT WISE BOTTOM 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS DEPT_WISE
FROM EMPLOYEES
) WHERE DEPT_WISE<=3;




--06..TOP 3RD SALARY
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS TOP3RD
FROM EMPLOYEES
) WHERE TOP3RD=3;


--07--Bottom 3rd salary.
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY ASC) AS BOT3RD
FROM EMPLOYEES
) WHERE BOT3RD=3;


--WAQD-DISPLAY DEPARTMENT WISE TOTAL SALARY
SELECT  DEPARTMENT_ID, SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;



--WAQD - TOP 2ND SALARY 
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS RNK
FROM EMPLOYEES
) WHERE RNK=2;

--WAQD- DEPARTMENT WISE TOP 3RD SALARY.
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS RNLK
FROM EMPLOYEES
) WHERE RNLK=3;

--WAQD- DEPARTMENT WISE BOTTOM 3RD SALARY
SELECT * FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS DEN
FROM EMPLOYEES
)WHERE DEN=3;





--=====================================REVISION=================================================
--01.WAQD- TOP 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER( ORDER BY SALARY DESC) AS DEN
FROM EMPLOYEES
) WHERE DEN<4;

--using with clause
WITH TEMP_1 AS 
(SELECT FIRST_NAME,LAST_NAME,SALARY,
 DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DEN
 FROM EMPLOYEES
)
SELECT *
FROM TEMP_1
WHERE DEN<4;

--02.WAQD- BOTTOM 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY ASC) AS DEN
FROM EMPLOYEES
) WHERE DEN<4;

--USING WITH CLAUSE
WITH TEMP1 AS
( SELECT FIRST_NAME,LAST_NAME,SALARY,
  DENSE_RANK() OVER(ORDER BY SALARY ASC) AS DEN
  FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DEN<4;


--03.WAQD.DEPARTMENT WISE TOP 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC ) AS DEN
FROM EMPLOYEES
) WHERE DEN<=3;

--USING WITH CLAUSE
WITH TEMP1 AS 
( SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
 DENSE_RANK() OVER (PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DEN
 FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DEN<4;

--04.WAQD- DEPARTMENT_ID WISE BOTTOM 3 SALARIES
SELECT *FROM (
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS DEN
FROM EMPLOYEES
) WHERE DEN<4;

--USING WITH CLAUSE
WITH  TEMP1 AS 
( SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
  DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY ASC) AS DEN
  FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DEN<4;

--05.WAQD-TOP 3RD SALARY FROM WHOLE TABLE
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK () OVER (ORDER BY SALARY DESC) AS DEN
FROM EMPLOYEES
) WHERE DEN =3;

--USING WITH CLAUSE 
WITH TEMP1 AS 
(SELECT FIRST_NAME,LAST_NAME,SALARY,
 DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DENRNK
 FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DENRNK=3;


--06.BOTTOM 3RD SALARY FROM WHOLE TABLE
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY ASC) AS DEN
FROM EMPLOYEES
) WHERE DEN=3;

--USING WITH CLAUSE
WITH TEMP1 AS
(SELECT FIRST_NAME,LAST_NAME,SALARY,
 DENSE_RANK() OVER(ORDER BY SALARY ASC) AS DEN
 FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DEN=3;

--TOP 3 SALARIES BY JOB_ID
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,JOB_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC) AS DEN
FROM EMPLOYEES
)WHERE DEN<4;


--EXTRACT THE MAX SALARY  IN EACH DEPARTMENT
SELECT DEPARTMENT_ID,
MAX(SALARY) AS MAXI
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;


--EXTRACT 
SELECT * FROM(
SELECT 
FIRST_NAME,LAST_NAME,JOB_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY JOB_ID ORDER BY SALARY DESC) AS TOP_SALARY
FROM EMPLOYEES
) WHERE TOP_SALARY=1
ORDER BY SALARY DESC;


--=============================21ST FEB==============================
--FECTH DEPARTMENT WISE TOTAL SALARY
SELECT DEPARTMENT_ID,SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
ORDER BY TOTAL_SALARY DESC;

--01.WAQD- TOP 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DEN
FROM EMPLOYEES
)WHERE DEN<4;

--USING WITH CLAUSE
WITH TEMP1 AS
(SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
 DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DEN
 FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DEN<=4;

--02.WAQD- DEPARTMENT WISE TOP 3 SALARIES
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DEN
FROM EMPLOYEES
)WHERE DEN<4;

--USING WITH CLAUSE
WITH TEMP1 AS
(SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
 DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY DESC) AS DEN
 FROM EMPLOYEES
)
SELECT *
FROM TEMP1
WHERE DEN<4
ORDER BY SALARY DESC;

--WAQD- TOP 3RD SALARY
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DEN
FROM EMPLOYEES
) WHERE DEN=3;



SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
ROW_NUMBER() OVER(ORDER BY SALARY DESC) ROWNUMM, --GENERATE UNIQUE SERIES OF NUMBER
RANK() OVER(ORDER BY SALARY DESC) AS RANKK,  -- IT SKIPS THE NUMBER
DENSE_RANK() OVER(ORDER BY SALARY DESC) AS DEN --IT DOEST SKIP THE NUMBER
FROM EMPLOYEES;
















--DEPARTMENT WISE TOP 5TH
SELECT *FROM(
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,SALARY,
DENSE_RANK() OVER(PARTITION BY DEPARTMENT_ID ORDER BY SALARY 
) AS DEN
FROM EMPLOYEES
)WHERE DEN=5;





