-- 01.What are Number Functions in sql?
--Ans.Number functions are the inbuilt single row functions in sql
--    Number functions are designed to perform mathematical operations,
--    calculations ,manipulation on numerical data
--    Number Functions typically operate on numerical data types like Number
--    Number functions are used with select ,where and order by clause

--01.ROUND();
--The Round function is used to round a numeric value to a specified decimal.
--It accepts 1 or 2 parameters

----If the first value from rhs of decimal is >=5 than n+1 will get displayed ,here is 5
SELECT ROUND(45.594)  Round     
FROM DUAL;

--here is 3
SELECT ROUND(45.394)  Round                  --Ans=45 
FROM DUAL;

--If the second valuse rhs to decimal is <5 ,Integer num will remain same,rhs valuse remain the same
SELECT ROUND(45.247,1)
FROM DUAL;

--If the second value rhs to decimal is >=5 ,Integer num will remain same but rhs 1st value increase by 1
SELECT ROUND(45.257,1)
FROM DUAL;

SELECT ROUND(45.295,2)
FROM DUAL;

SELECT ROUND(45.2956,3)
FROM DUAL;


--If the first valuse lhs to decimal is >=5 ,value displayed will be 80 in this case
SELECT ROUND(76.295,-1)
FROM DUAL;

--If the first valuse lhs to decimal is <5 ,value displayed will be 70 in this case
SELECT ROUND(73.295,-1)
FROM DUAL;


SELECT ROUND(89.98658,-1)
FROM DUAL;

SELECT ROUND(89.997,-1)
FROM DUAL;


--02.Trunc();
--Trunc is a inbuilt single row number function
--Without applying any logic it will truncate the decimal specified in 2nd parater to
--It accept 1 or 2 parameter


--If we pass only one paramter Trunc will Truncate all the decimal
SELECT TRUNC(4589.8794)
FROM DUAL;


SELECT TRUNC(505.65)
FROM DUAL;


--If we pass 2 parameter ,Trunc will truncate 1st paramter till decimal which is mentioned in 2nd parameter
SELECT TRUNC(4589.8794,2)
FROM DUAL;

SELECT TRUNC(505.05,2)
FROM DUAL;

--03.MOD();
--Mod is a inbuilt single row number function
--It returns remainder of a number i.e dividend
--It accepts 2 parameter only
SELECT MOD(1600,3)
FROM DUAL;

--==========================================================================================================

--04.SQRT();
--SQRT is a inbuilt single row number function
--It returns square root of a number
--It accepts 1 parameter only

SELECT SQRT(25)
FROM DUAL;


SELECT SQRT(36)
FROM DUAL;


SELECT SQRT(64)
FROM DUAL;

--===========================================================================================
--05.ABS();
--ABS is a inbuilt single row number function
--It returns Absolute number
--It accepts 1 parameter only

SELECT ABS(4545.23654)
FROM DUAL;





--=============================================================================================
--06.FLOOR();
--ABS is a inbuilt single row number function
--It returns Floor number,means Integer value ,not appling any type of logic
--It accepts 1 parameter only

SELECT FLOOR(4545.9999954)
FROM DUAL;


--===============================================================================================
--07.CEIL();
--ceil is a inbuilt single row number function
--It returns Value n+1
--It accepts 1 parameter only

SELECT CEIL(4545.89898901)
FROM DUAL;

--==================================================================================================