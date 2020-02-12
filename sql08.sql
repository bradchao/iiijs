use class;
select * from students;
select 
case 
	when csex='F' then '小姐'
    when csex='M' then '先生'
end
from students;
select cname, 
case 
	when csex='F' then '小姐'
    when csex='M' then '先生'
end 'title'
from students;
select csex, if(csex='F', '小姐', '先生') from students;
select concat(cname, ' ', if(csex='F', '小姐', '先生')) title, caddr from students;