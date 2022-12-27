select * from EMPLOYEES;

--Task1 display average salary for IT_PROG
select avg(salary) from EMPLOYEES
where JOB_ID='IT_PROG';

--Task2 display average salary for SA_REP
select avg(salary) from EMPLOYEES
where JOB_ID='SA_REP';


--Task3 display average salary for MK_MAN
select avg(salary) from EMPLOYEES
where JOB_ID='MK_MAN';

--how many different job id we have? 19
select count(distinct JOB_ID) from EMPLOYEES;

/*
 instead of typing same query for different job ids
 we are gonna group them based on job id ND GET average salary in one shot.
 */
select JOB_ID, avg(SALARY), min(SALARY), max(SALARY), sum(SALARY), count(*) from EMPLOYEES
group by JOB_ID;

--get me total salary for each department from employees table
select DEPARTMENT_ID, sum(SALARY) from EMPLOYEES
where DEPARTMENT_ID is not null --to remove null department id from result.
group by DEPARTMENT_ID;

--order them results based on max salary in ascending order
select DEPARTMENT_ID, sum(SALARY), count(*), max(SALARY), min(SALARY), round(avg(SALARY)) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY);

--order results based on max salary in asc and min salary desc
select DEPARTMENT_ID, sum(SALARY), count(*), max(SALARY), min(SALARY), round(avg(SALARY)) from EMPLOYEES
where DEPARTMENT_ID is not null
group by DEPARTMENT_ID
order by max(SALARY), min(SALARY) desc ;


--display how many departments we have in each location
select LOCATION_ID, count(DEPARTMENT_ID) from DEPARTMENTS
group by LOCATION_ID;

--order results based on number departments in desc
select LOCATION_ID, count(*) from DEPARTMENTS
group by LOCATION_ID
order by count(*) desc;


-- display how many countries we have in each regions
select REGION_ID,count(*) from COUNTRIES
group by  REGION_ID;

-- order them based number of countries in desc
select REGION_ID,count(*) from COUNTRIES
group by  REGION_ID
order by 2 desc;

select REGION_ID,count(*) from COUNTRIES
group by  REGION_ID
order by count(*) desc;



