show databases;
use classa;
show tables;
select * from students;
update students set cname='Brad' where cid = 1;
alter table students add score int;
desc students;
update students set score = floor(rand()*101) where cid = 1;
update students set score = floor(rand()*101) where cid < 100;
SET SQL_SAFE_UPDATES = 0;	-- 1: ON; 0: OFF
SET SQL_SAFE_UPDATES = 1;
update students set score = floor(rand()*51+50);
select * from students;
select cname, score, if(score>=60,'Pass','Down') status from students order by score desc;
select cname, score,
case when score >= 90 then 'A'
	when score >= 80 then 'B'
    when score >= 70 then 'C'
    when score >= 60 then 'D'
    else 'E'
end 'level' 
from students order by score desc;



