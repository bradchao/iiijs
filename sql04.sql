use northwind;
show tables;
desc employees;
select * from employees;
select title, firstname, lastname from employees;
select title, firstname, lastname from employees order by title, firstname desc;
select firstname, lastname from employees where title <> 'Sales Representative';
-- select firstname, lastname from employees where title is not 'Sales Representative';
select * from employees where region is not null;
select * from employees where region is null;
select * from employees where lastname >= 'N' order by lastname;





