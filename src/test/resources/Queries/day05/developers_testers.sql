select * from EMPLOYEES;
create table Developers(
                           Id_Number Integer primary key,
                           Names varchar(30),
                           Salary Integer
);

select * from DEVELOPERS;
create table Testers(
                        Id_Number Integer primary key,
                        Names varchar(30),
                        Salary Integer
);

select * from Testers;

insert into developers values (1, 'Mike', 155000);
insert into developers values (2, 'John', 142000);
insert into developers values (3, 'Steven', 850000);
insert into developers values (4, 'Maria', 120000);
insert into testers values (1, 'Steven', 110000);
insert into testers values(2, 'Adam', 105000);
insert into testers values (3, 'Lex', 100000);

commit work;

select * from DEVELOPERS;
select  * from Testers;

/*
 UNION
 - to merge more them one table vertically
 Remove duplicate
 -make an order as default asc

 */
select * from DEVELOPERS-- remove duplicate dedik ama * kullandigimiz icin butun
union                   -- row'u aliyor, eger * yerine isim olsaydi o zaman steven'i silecekti.
select * from Testers;

select names from DEVELOPERS
    union
    select names from testers;


select names from DEVELOPERS-- burda biz * yapmadik names dedik, ondan dolayi steven'i sildi
union
select NAMES from Testers
order by 1 desc; -- burda desc dedigimizin sebebi en asagidan siralasin istedik.


/*

 UNION ALL

 - Dont Remove DUPS
 - Dont sort the results
 */

select * from developers
union all
select * from testers;


select names from developers
union all
select names from testers;


-- if you wanna make an order use order by
select names from developers
union all
select names from testers
order by 1;



/*
 it removes same data from first table and gives result from first table

 */

 select * from DEVELOPERS -- burda developer listesine bakacak ve testerdeki insanlarin butun
minus                      -- row'u developer ile ayni ise silecek, degilse kalacak. burda
select * from Testers;     -- butun row ayni olmadigi icin kalacak.



select names from DEVELOPERS --burda developer listesindeki butun isimlere bakacak
minus                       -- eger ayni isim tester'de de varsa silinecek
select  names from Testers;



select * from Testers
minus
select * from DEVELOPERS;



select names from Testers
minus
select  names from DEVELOPERS;


/*
 INTERSECT

 */

select * from DEVELOPERS
intersect
select * from Testers;-- burda da hem tester hem de developer'da rowlarinda ayni olan varsa
                        --gostereck yoksa bos olacak



select names from DEVELOPERS
intersect
select  names from Testers;-- burda ise developer ve tester;de ayni ismi olan kismini gosterecek





