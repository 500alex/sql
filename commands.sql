select * from "user"

-------------------------
+ сложение
- вычитание
* умножение
/ деление
^ степень
|/ квадратный корень
--------------------------

select distinct name from "user"

---------------------------

select count(*) from "user"

----------------------------

select * from "user"
where age > 20

----------------------------

select * from "user"
where age > 20 and age < 40

----------------------------

select * from "user"
where age > 20 or count > 10

------------------------------

select * from "user"
where age between 20 and 40

-------------------------------

select * from "user"
where country in ('rus','us')  // not in

-------------------------------

select * from "user"
order by name desc

--------------------------------

select min(age) from "user"  // max, avg

--------------------------------

select * from "user"
where name like(u%)      // like (_u)

---------------------------------

select * from "user"
limit 10

------------------------------------

select * from "user"
where name is not null

------------------------------------

select name from "user"
group by name

-------------------------------------

select name, sum(age)
from "user"
where fimale is not null
group by name
having sum(age) > 20
order by sum(age)

----------------------------------------
UNION - получает список стран из обоих таблиц и убирает дубли 
INTERSECT - получает список стран которые есть в обоих таблицах
EXCEPT - получает список стран из первого озапроса за вычетом тех стран которые есть во втором запросе
ПРИМЕР:

select country from "user"
union
select country from "products"

--------------------------------------