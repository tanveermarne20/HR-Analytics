--Genral functions are the Inbuilt single row functions 
--which are used to handle the null value.
--which is used to replace the null valuse with an alternative value

--01.NVL();
--Nvl is a general function
--Nvl accepts 2 parameters
--If 1st exp is null ,it will return 2nd exp
--If exp1 is not null,than exp1 get returned
--if both exp1=exp2 ,than first exp1 will get return

SELECT NVL(null,985)              ------>Ans=985
FROM DUAL;

SELECT NVL(null,null)              ------>Ans=null
FROM DUAL;

SELECT NVL(78,985)              ------>Ans=78
FROM DUAL;

SELECT NVL(985,985)              ------>Ans=exp1 i.e=985
FROM DUAL;

SELECT FIRST_NAME,LAST_NAME,SALARY,COMMISSION_PCT,
SALARY+SALARY*NVL(COMMISSION_PCT,0) AS TOTAL_SALARY
FROM EMPLOYEES;


===========================================================================================================

--01.NVL2();
--Nvl2 is a general function
--Nvl2 accepts 3 parameters
--If 1st exp is null ,it will return 3nd exp
--If exp1 is not null,than exp2 get returned
--if both exp1=exp2=exp2 ,than  exp2 will get return

SELECT NVL2(null,985,20)              ------>Ans=exp3 i.e=20
FROM DUAL;


SELECT NVL2(54,987,54)              ------>Ans=exp2 i.e=987
FROM DUAL;


SELECT NVL2(54,54,54)              ------>Ans=54
FROM DUAL;

SELECT 
FIRST_NAME,LAST_NAME,SALARY,COMMISSION_PCT,
NVL2(COMMISSION_PCT,COMMISSION_PCT*SALARY+SALARY,SALARY) AS TOTAL_SALARY
FROM EMPLOYEES;

=================================================================================================================

--03.COALESCE();
--Coalesce is a inbuilt single row general function
--which is used to return the first non null expression in a list of expressions
--it return non null expression from left to right
--It accepts n number of parameters

SELECT COALESCE(null,null,45)
FROM DUAL;                              --Ans=45


SELECT COALESCE(null,null,125,null,null,1024,null,4,null,78,45,null,null,null,78,null) AS Coalese
FROM DUAL;                              --Ans=125
