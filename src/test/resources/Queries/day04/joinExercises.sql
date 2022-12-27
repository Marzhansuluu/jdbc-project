select * from EMPLOYEES;

--1.Display all first_name and  related department_name

--- Steven    Executive
--- David        IT
select * from employees;
select * from departments;

select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D
                            on E.DEPARTMENT_ID = D.DEPARTMENT_ID;



-- order list based firstname
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E inner join DEPARTMENTS D
on E.DEPARTMENT_ID = D.DEPARTMENT_ID
order by FIRST_NAME ;


--2.Display all first_name and department_name including the  department without employee

--LEFT join.
select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS D left join EMPLOYEES E
    on E.DEPARTMENT_ID = D.DEPARTMENT_ID;

--RIGHT join.
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES E right join DEPARTMENTS D
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;


--3.Display all first_name and department_name including the  employee without department

--LEFT outer join
select FIRST_NAME, DEPARTMENT_NAME
from EMPLOYEES e left outer join DEPARTMENTS d
on e.DEPARTMENT_ID = d.DEPARTMENT_ID;

--RIGHT outer join
select FIRST_NAME, DEPARTMENT_NAME
from DEPARTMENTS D right outer join EMPLOYEES E
    on D.DEPARTMENT_ID = e.DEPARTMENT_ID;

--4.Display all first_name and department_name



--including the  department without employee  and  employees  without departments
--5.Display All cities and related country names
--6.Display All cities and related country names  including with countries without city
--7.Display all department name and  street adresss
--8.Display first_name,last_name and department_name,city for all employees
--9.Display first_name,last_name and department_name,city,country_name













