--Conversion functions are the Inbuilt Single row functions in sql
--Conversion functions are of two types
--TO_DATE();
--TO_CHAR


--  01.What is To_Date()?
--Ans.The TO_DATE function is used to convert a string expression representing a date and time
--    to an actual date type.
--    It only accept 2 parameters
--    1st parameter is-------->String representing a date
--    2nd parameter is-------->Format model,which is exactly similar to 1st parameter

SELECT TO_Date('12-05-2024','DD-MM-YYY',NULL)
FROM DUAL;

SELECT TO_DATE('2024-05-25 10:16:00','YYYY-MM-DD HH24:MI:SS')
FROM DUAL;


--   02.What is To_Char();
--Ans.The TO_CHAR function is a inbuilt single row conversion function which id 
--    used to convert a date or number to a string with a specified format.  
--    It accept 2 parameters
--   1st parameter is date ,
--   2nd parameter is Format model
--   here format model depends upn our requirement

SELECT TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') FROM dual;

SELECT TO_CHAR(SYSDATE,'YYYY/MM/DD  HH24:I:SS')
FROM DUAL;
