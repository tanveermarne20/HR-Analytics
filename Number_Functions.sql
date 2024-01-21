-- 01.What are Number Functions in sql?
--Ans.Number functions are the inbuilt single row functions in sql
--    Number functions are designed to perform mathematical operations,
--    calculations ,manipulation on numerical data
--    Number Functions typically operate on numerical data types like Number
--    Number functions are used with select ,where and order by clause

--01.ROUND();
--The Round function is used t round a numeric value to a specified decimal.
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



