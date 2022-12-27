select * from EMPLOYEES;
/*
 Aggregate functions - multi rows - group functions

 -count--> it will count rows
 -max-->it will give max value
 -min-->it will give min value
 -sum--> it will give total value
 -average-->it will give you avg values

 aggregate functions takes multi row and return one result

NOTE--> all aggregate function will ignore NULL values


 */

 --How many department we have?
select count(*) from DEPARTMENTS;

--How many location do we have
select count(*) from LOCATIONS;


--NULL value
select * from EMPLOYEES;



--count(*) will count all rows after execution that's why we have result as 1.
select count(*) from EMPLOYEES
where DEPARTMENT_ID is null; --she is Kimberly. in here we have only one row.



-- count(department_id) will count only department IDs after execution we have only 1 department ID which is null.
--Since all aggregate functions ignore null values, results will give as 0.
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is null; --she is Kimberly. we do not have a department id that's why it will give 0.


select * from EMPLOYEES;

--Both execution will give same result since we don't have anu null values for department ID.
select count(DEPARTMENT_ID) from EMPLOYEES
where DEPARTMENT_ID is not null;



select count(*) from EMPLOYEES
where DEPARTMENT_ID is not null;



--how many different firstname we have?
select count(distinct FIRST_NAME) from EMPLOYEES;



--how many employees working as IT Prog or SA_REP
select count(*) from EMPLOYEES
where JOB_ID in ('IT_PROG', 'SA_REP');

--how many employees getting salary more than 6000
select count(*) from EMPLOYEES
where SALARY > 6000;--we will get 55  employee.

select count(COMMISSION_PCT) from EMPLOYEES
where SALARY > 6000;


-- MAX--
select FIRST_NAME,salary from EMPLOYEES;
select max(salary) from EMPLOYEES;



-- MIN--
select min(salary) from EMPLOYEES;


-- AVG--
select avg(salary) from EMPLOYEES;

select round(avg(salary)) from EMPLOYEES;
select round(avg(salary),1) from EMPLOYEES;-- here the numbers represent the digit of decimal number.
--yani noktadan sonra kac tane digit olmasi gerektigini bildiriyor.
select round(avg(salary),2) from EMPLOYEES;
select round(avg(salary),3) from EMPLOYEES;

-- SUM --
select sum(salary) from EMPLOYEES;
