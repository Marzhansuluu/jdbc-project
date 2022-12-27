select * from EMPLOYEES;


/*
 it shows different values from query result based  provided column
 original data still stays in database
 */

 select FIRST_NAME from EMPLOYEES;
--it returns 107

--display all different names from employees
select distinct FIRST_NAME from EMPLOYEES;
--it will return 91 results as a different names.


select distinct * from EMPLOYEES;
--it will check each row to filter different columns-->* --> all columns


--display different job_ids and job table
select JOB_ID from jobs;
select distinct  JOB_ID from JOBS;
--NOTE--> since Job ID is PK for jobs table it will give same result with/out distinct


--display different job ids from employees table
select distinct JOB_ID from JOBS;

select JOB_ID from JOBS;


--display different country id from location table
select distinct COUNTRY_ID from LOCATIONS;
