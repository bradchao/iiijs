use class;
select * from students;
select * from students where cid % 2 = 0;
select * from students where caddr like '%三民%' or caddr like '%中央%';
select * from students where cphone like '091%';
select * from students where cphone like '09_6%';
select * from students order by cbirthday;
select * from students order by cbirthday asc;
select * from students order by cbirthday desc;
drop table students;
show tables;
create table students select * from bkclass;
select * from students;