use northwind;
select * from `order details`;
select productid, avg(unitprice) avgPrice from `order details`
group by productid having avgPrice > 70 order by avgPrice desc;
select * from orders;
select customerid, count(*) numOfOrder from orders
group by customerid 
having numOfOrder >= 15
order by numOfOrder desc;
-- 驗算
select * from orders where customerid = 'ALFKI';

select * from orders;
select freight, round(freight,1),round(freight,0),round(freight,-1) 
from orders;

select '10' + '3';
select concat(10,3);

select * from products;
select productname, concat('$', unitprice) uprice from products;

select * from employees;
select second('1997-01-02 01:02:03');

select lastname, birthdate, hiredate, 
year(hiredate)-year(birthdate) age1,
datediff(hiredate,birthdate)/365 age2
from employees;

select datediff('2000-03-01','2000-02-01');

select * from orders;
select customerid from orders where orderid = 10290;
select companyName from customers where customerid = 'COMMI';
select customerid, companyName from customers where customerid = 
(select customerid from orders where orderid = 10290);

select * from orders;

select customerid
from orders 
where orderdate between '1997-01-01' and '1997-12-31'
group by customerid; 

select customerid, orderdate
from orders
where customerid = 'ALFKI' and orderdate between '1997-01-01' and '1997-12-31';

select companyName from customers
where customerid in (
	select customerid
	from orders 
	where orderdate between '1997-01-01' and '1997-12-31'
	group by customerid
)
order by companyName;

show tables;
select * from suppliers;

-- 'Tokyo Traders', 'Pavlova, Ltd.', 'Heli Suswaren GmbH & Co. KG'
select supplierid from suppliers where companyname='Tokyo Traders';
select productname, supplierid from products where supplierid=4;
select productname, supplierid from products 
where supplierid in (
	select supplierid 
    from suppliers 
    where companyname in 
    ('Tokyo Traders', 'Pavlova, Ltd.', 'Heli Suswaren GmbH & Co. KG')
);

show tables;
select * from categories;

select productid, productname from products
where categoryid = (
	select categoryid from categories
    where CategoryName = 'Seafood'
);

select supplierid from products
where categoryid = 8;

select companyName from suppliers
where supplierId in (
	select supplierid from products
	where categoryid in (
		select categoryId from categories
        where categoryName = 'Seafood'
    )
);

-- Join
select employees.employeeId, employees.LastName, 
		orders.orderId, orders.orderDate  
from employees
	join orders 
    on (employees.employeeId = orders.employeeId);

select e.employeeId, e.LastName, 
		o.orderId, o.orderDate  
from employees e
	join orders o
    on (e.employeeId = o.employeeId);
    
/*
select table1.col, table2.col, table3.col 
from table1
	join table2 on (table1.col1 = table2.col2)
    join table3 on (table2.col2 = table3.col3)
where ....

以下不合理喔
select table1.col, table2.col, table3.col 
from table1
    join table3 on (table2.col2 = table3.col3)
	join table2 on (table1.col1 = table2.col2)
where ....
*/
select o.orderId, o.orderDate, e.lastName, c.companyName
from orders o
	join employees e on (e.employeeId=o.employeeId)
    join customers c on (c.customerId=o.customerId)
where o.shippedDate > o.requiredDate and 
o.orderDate > '1998-01-01'
order by c.companyName;
    
-- 列出客戶公司名稱, 其訂單數量超過15+
select c.companyName, count(o.orderId) numOfOrder
from customers c
	join orders o on ()
group by c.companyName    
having numOfOrder >= 15
order by numOfOrder desc;


