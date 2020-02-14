create database mytest1;
use mytest1;
create table tb1 (id int, f1 varchar(10));
create table tb2 (id int, f2 varchar(10), tb1id int);
desc tb1; 
desc tb2;
insert into tb1 values (1,'A'),(2,'B'),(3,'C');
select * from tb1;
insert into tb2 values (11,'AAA',1),(22,'BBB',2),(33,'CCC',3);
select * from tb2;

select tb1.id id1, tb1.f1, tb2.id id2, tb2.f2, tb2.tb1id
from tb1, tb2
where tb1.id = tb2.tb1id;

drop table tb1;
drop table tb2;
show tables;
