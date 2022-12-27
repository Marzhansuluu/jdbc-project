select * from EMPLOYEES;

--find the 3rd minimum salary from the employees table (do not  include duplicates)
    --first sort salaries in desc without duplicate
    select distinct salary from EMPLOYEES order by salary desc;

            --get me 3rd max salary
            select min (salary) from (select distinct salary from EMPLOYEES order by salary desc)
            where rownum <4;


        --get me information who is getting 3rd highest salary
        select * from EMPLOYEES
where salary = (select min (salary) from (select distinct salary from EMPLOYEES order by salary desc)
                where rownum <4);



--find the 3th maximum salary from the employees table (do not include duplicates)
select salary from EMPLOYEES;

--first sort salaries in asc without duplicate
select distinct salary from EMPLOYEES order by SALARY asc;


--get me 3rd min salary
select max(salary) from (select distinct salary from EMPLOYEES order by SALARY asc)
where rownum <4;

--get me information who is getting 3rd lowest salary
select * from EMPLOYEES
where salary = (select max(salary) from (select distinct salary from EMPLOYEES order by SALARY asc)
                where rownum <4);



select * from DEPARTMENTS;

