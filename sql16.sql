/*
	Index
	1. Primary Key => only, not null
    2. unique key => only, null
    3. non-unique key
*/

create database myiii;
use myiii;
create table tb1 (id int, f1 varchar(10), primary key(id));
show tables;
desc tb1;
show indexes from tb1;

create table tb2 (id int primary key, f1 varchar(10));
show tables;
desc tb2;

alter table tb2 drop primary key;

insert into tb2 values (1,'A');
select * from tb2;