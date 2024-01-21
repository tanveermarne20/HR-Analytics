--  01.What is Date Functions in sql?
--Ans.Date functions in sql are inbuilt single row functions
--    Which is used to deal with the date data type
--   There are 6 types of date functions in sql
--01.MONTHS_BETWEEN
--02.ADD_MONTHS
--03.NEXT_DAY
--04.LAST_DAY
--05.ROUND
--06.TRUNC


--01.MONTHS_BETWEEN
--  It is a inbuilt single row date function
-- It accepts 2 parameters
--It is used to calculate number of months between two dates in number format
--We can calculate Total_Experience of candidate using this function

SELECT MONTHS_BETWEEN('25-06-2023','17-05-2020')
FROM DUAL;


SELECT ROUND(MONTHS_BETWEEN('25-06-2023','17-05-2020'),2)
FROM DUAL;


SELECT TRUNC(MONTHS_BETWEEN('25-06-2023','17-05-2020'),2)
FROM DUAL;

--================================================================================================================
--02.ADD_MONTHS
--ADD_MONTHS is a inbuilt single row date function
--Which is used to add a specified number t=of months ro given date
--It accepts 2 parameers
--It can be used to give notice period to candidate
--It exclude current month and add months excluding current month

SELECT ADD_MONTHS(SYSDATE,2)
FROM DUAL;

SELECT ADD_MONTHS('01-01-2024',3)
FROM DUAL;
--=================================================================================================

--03.NEXT_DAY
--Next_day is a inbuilt single row date function
--which is used to know first occurence of the day that you have mentioned in 2nd parameter
--It accepts 2 parameters only


SELECT NEXT_DAY(SYSDATE,'MONDAY') AS Monday
FROM DUAL;


SELECT Hire_date,NEXT_DAY(Hire_date,'FRIDAY') AS FRIDAY
FROM EMPLOYEES;

--========================================================================================================

--   04.LAST_DAY
--ANS.Last_day is a inbuilt single row date function
--    which is used to find last date of particular month
--    It accepts ONE parameters
--    


SELECT LAST_DAY(SYSDATE)
FROM DUAL;



SELECT HIRE_DATE,LAST_DAY(HIRE_DATE)
FROM EMPLOYEES;