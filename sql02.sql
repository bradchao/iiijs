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
update students set cemail='Brad' where cid=4;
update students set csex='F' where cid < 100;
delete from students where cid = 7;
delete from students;
-- select ... from ... where ... group by ... having....order by...limit
select cname, cbirthday, cphone from students;
select cbirthday, cname, cphone from students;
select * from students where cid < 7;
select * from students limit 2,4;
select 'Helllo, World';
select 10+3;
select 'Hello, Brad', 10+3, now();
select cid as '編號', cname as '姓名' from students;
select cid 'No', cname 'Name', cphone from students;
select cid+10 'No', cname 'Name', cphone from students;
select 10 div 3 '商', 10 % 3 '餘數';