select * from EMPLOYEES;



/*
 orderBY
 -it is allowing us to sort data based on provided column
 - as a DEFAULT it will order the results ASCENDING order
 if you want to sort it DESCENDING order you need to specify right after column name

 */

--display all employees based salary in asc order
 select * from EMPLOYEES
order by SALARY;


--display all employee based on salary in desc order
select * from EMPLOYEES
order by SALARY desc ;

select * from EMPLOYEES
order by FIRST_NAME desc;

--Can we use index to order results?
-- yes we can
--index needs to within limit from column number

select * from EMPLOYEES
order by 8 desc ; -- burda 8 colum oldugu icin error vermedi, eger 9 olsa error verir.

select FIRST_NAME, EMAIL from EMPLOYEES
order by 2 desc; -- burda da email ve name olarak iki colmun var onun icin error vermedi

--display all info from employees where employee id is smaller than 120 and order them based on salary
select * from EMPLOYEES
where EMPLOYEE_ID <120 order by SALARY;



-- display all info from employee and order them based firstname asc
select * from EMPLOYEES
order by FIRST_NAME;

--IQ --> display all info from employees and order them based firstname asc and based on lastname desc
select * from EMPLOYEES
order by FIRST_NAME, LAST_NAME desc;-- burda ise biz ayni isimde olan isciler var onlari asc order ile
                                    -- soyadlarini ise desc order ile almak istedik, hal boyle olunca
                                    -- isimleri ayni oldugu icin soyadlarina gore order olacak


