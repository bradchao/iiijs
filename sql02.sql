use class;
select * from students;
create table bkclass select * from students;	-- 一種資料表備份方式
select * from bkclass;
select * from students;
desc students;
insert into students (cname,cbirthday) values ('Brad','1999-01-02');
select * from students;
insert into students (cname,cbirthday) values ('資策會資策會資策會資策會','1999-01-02');
select * from students;
update students set cname='John', cemail='john@gmail.com' where cid = 11;