--- WAQ to delete duplicate records from table

DELETE FROM STUDENT S1
WHERE ROWID != (SELECT MAX(ROWID) FROM STUDENT S2
				WHERE S2.SID = S1.SID ) ;


--1	A	M	65
DELETE FROM STUDENT S1
WHERE A101 != (A106 ) ;

--2	B	M	45

DELETE FROM STUDENT S1
WHERE A102 != (A107) ;

--	3	C	M	65
DELETE FROM STUDENT S1
WHERE A103 != (A103) ;

--1	A	M	65
DELETE FROM STUDENT S1
WHERE A104 != (A106);

--2	B	M	45

DELETE FROM STUDENT S1
WHERE A105 != (A107 ) ;

--1	A	M	65

DELETE FROM STUDENT S1
WHERE A106 != (A106) ;







--===============


DELETE FROM STUDENT S1
WHERE A107 != ( A107 );
				
-- A101		1	A	M	65
-- A102		2	B	M	45
-- A103		3	C	M	65
--A105		1	A	M	65

===========================


SELECT last_name, salary, department_id
FROM   employees outer
WHERE  salary > ( SELECT AVG(salary)
          FROM   employees
          WHERE  department_id = outer.department_id );



SELECT last_name, salary, department_id
FROM   employees outer
WHERE  800 > ( SELECT AVG(salary)
          FROM   employees
          WHERE  department_id = 20 );

-- 1	A	700	10

SELECT last_name, salary, department_id
FROM   employees outer
WHERE  800 > ( SELECT AVG(salary)
          FROM   employees
          WHERE  department_id = 20 );-- 650
		  800 > 650
		  
		  
--EXISTS STARTS FROM HERE		  
	--	  ==================================
		  
SELECT *
FROM   employees outer
WHERE  EXISTS ( SELECT 'INDIA'
                 FROM   employees INNER
                 WHERE  inner.manager_id = 4);


SELECT *
FROM   employees outer
WHERE  EXISTS (TRUE);

-- 1	A	700	10	NULL


SELECT *
FROM EMPLOYEES;





