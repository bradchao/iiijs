use northwind;
select * from employees;
select city, count(*) as num from employees group by city having count(*) >= 2;
-- select ... from ... where ... group by ... having ... order by ... limit
-- Sales Representative
select city, count(*) num from employees where title='Sales Representative' 
group by city having num >= 2;
select city from employees group by city;
select distinct city from employees;
select count(distinct city) num from employees;