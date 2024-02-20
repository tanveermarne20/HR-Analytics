SELECT *
FROM EMPLOYEES;

--THIS IS DECODE ON COLUMN JOB_ID 
SELECT DEPARTMENT_ID,FIRST_NAME,SALARY,JOB_ID,
DECODE(JOB_ID,'AD_PRES',  'ADDITIONAL_PRESIDENT',
              'AD_VP',    'ADDITIONAL_PRESIDENT',
              'IT_PROG',  'IT_PROGRAMMER',
              'SH_CLERK', 'OFFICE_CLERK',
                'OTHERS') AS EMT
FROM EMPLOYEES;


SELECT DEPARTMENT_ID,FIRST_NAME,SALARY,JOB_ID,
DECODE (JOB_ID,'AD_PRES',    'ADDITIONAL_PRESIDENT',
                'IT_PROG',   'IT_PROGRAMMER',
                'AD_VP',     'ADDITIONAL_PRESIDENT',
                'ST_CLERK',  'OFFICE_WORK',
                'OTHER') AS EMP
FROM EMPLOYEES;

SELECT DEPARTMENT_ID,FIRST_NAME,SALARY,JOB_ID,
DECODE (JOB_ID,'AD_PRES','ADDITIONAL_PRESIDENT',
                  'AD_VP','ADDITIONAL_VICE',
                  'IT_PROG','IT_PROGRAMMER'
                  ) AS EMP
FROM EMPLOYEES   ;
