create database mytest2;
use mytest2;
-- 交易機制 
create table tb1 (id int, f1 varchar(10), icon blob);
create table tb2 (id int, f2 varchar(10));
show tables;

insert into tb1 values (1, 'A');
insert into tb2 values (1, 'A');

select * from tb1;
select * from tb2;

show variables like '%commit%';	-- autocommit = ? 

set autocommit= 0;	-- 關閉自動寫入功能
set autocommit= 1;	-- 開啟可以自動寫入

update tb1 set f1='C' where id=1;
update tb2 set f2='C' where id=1;

rollback;
commit;

