use class;
select * from students;
-- View 視界
create view myview1 as
select * from students where csex='F';
show tables;
select * from students where csex='F';
desc myview1;

update myview1 set csex='M' where cid=4;
select * from myview1;
select * from students;

drop table students;
create table students select * from bkclass;
select * from students;

show tables;
drop view myview1;

create view myview2 as
select * from students where csex='M';

insert into students (cid,cname,csex,cbirthday) 
values (11,'Brad','M','1999-01-02');

select * from myview1;
select * from myview2;

desc students;
