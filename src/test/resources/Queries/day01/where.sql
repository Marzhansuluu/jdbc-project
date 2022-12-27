select * from EMPLOYEES;

/*
 -->which keyword we are using in JAVA to filter?
 ---> if statement


 --> to filter result from database while we are running query
 ---> we are gonna use WHERE keyword


 ----String(JAVA) ----> varchar(Database)
 */

 select * from EMPLOYEES
where FIRST_NAME='David';   --> '' it is case sensitive


--display firstname, lastname, salary where firstname is peter

select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='Peter';


--display firstname, lastname, salary where firstname is david and lastname is Austin
select FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where FIRST_NAME='David' and LAST_NAME='Austin';


--display all information from employees where salary is bigger that 6000
select * from EMPLOYEES
where SALARY >6000;

--display email of which is making less than 6000
select  EMAIL from EMPLOYEES
where SALARY<6000;


--display all info from employees who is making more than 600 and department id is 60
select * from EMPLOYEES
where SALARY>6000 and DEPARTMENT_ID=60;


--display all info employees where salary equals or less 3000  and salary  equals or less than 7000

select * from EMPLOYEES
where SALARY between 3000 and 7000; -- we use the boundary to get min and max value

-- display all info from employees where employee_id between 100 and 120
select * from EMPLOYEES
where EMPLOYEE_ID between 100 and 120;

--display all info from employees who is working as IT_Prog or MK_Man
select * from EMPLOYEES
where JOB_Id = 'IT_PROG' or JOB_ID='MK_MAN';

--IN Clauses
-- it uses or logic
--it check jobID from IN parenthesis to see condition is matching
--solution 2
-- we can also this way where JOB_ID IN('IT_PROG', 'MK_MAN');


--display all info where employee id is 121, 142, 156, 134
select * from EMPLOYEES
where EMPLOYEE_ID IN(121, 142, 156, 134);

select * from EMPLOYEES
where EMPLOYEE_ID=121 or EMPLOYEE_ID=142 or EMPLOYEE_ID=156 or EMPLOYEE_ID=134;


--display all info where country id equals US, IT
select * from COUNTRIES
where COUNTRY_ID in('US', 'IT');


--display all country names except country_id is US and IT
select COUNTRY_NAME from COUNTRIES
where COUNTRY_ID not in('US', 'IT');


--display all info from employees where department id is null
select * from EMPLOYEES
where DEPARTMENT_ID is null;--we will see kimberly's info

--display all info from employee where manager id is null
select * from EMPLOYEES
where MANAGER_ID is null ;--we will get king

--display all info from employee where department id is not null
select * from EMPLOYEES
where DEPARTMENT_ID is not null ;--we will get 106 employees


--display all info from employee where manager id is not null
select * from EMPLOYEES
where MANAGER_ID is not null ;--we will get 106 employees








