use northwind;
-- A join B, B join A
-- 1
select o.orderid, e.firstname, c.companyName
from orders o
	join employees e on (e.employeeId = o.employeeId)
    join customers c on (c.customerId = o.customerId)
order by o.orderId;
-- 2
select o.orderid, e.firstname, c.companyName
from employees e
	join orders o on (e.employeeId = o.employeeId)
    join customers c on (c.customerId = o.customerId)
order by o.orderId;
-- 3
select o.orderid, e.firstname, c.companyName
from customers c
	join orders o on (c.customerId = o.customerId)
    join employees e on (e.employeeId = o.employeeId)
order by o.orderId;
-- select ... from ... where ... group by ... having ... order by ... limit
-- 4
select o.orderid, e.firstname, c.companyName
from orders o, employees e, customers c
where (o.customerId = c.customerId) and (o.employeeId = e.employeeId) 
order by o.orderId;

-- 客戶公司名稱單品項銷售金額超過 10,000+
select c.companyName, o.orderId, 
od.unitPrice*od.quantity*(1-od.discount) totalPrice
from `order details` od
	join orders o on (o.orderId = od.orderId)
    join customers c on(o.customerId = c.customerId)
where od.unitPrice*od.quantity*(1-od.discount) > 10000
order by totalPrice desc;

select city, country from customers;
select city, country from employees;

select employeeId, lastname, city, country
from employees
where row(city, country) in 
(select city, country from customers);

select * from products;
select productid, unitprice
from `order details`
where productid = 2
order by unitprice desc;

select min(unitprice)
from `order details` od
where od .productId = 2;

select distinct od.productId, od.unitPrice
from `order details` od
where od.unitPrice = (
	select min(unitprice)
	from `order details` od2
	where od2.productId = od.productId
)
order by od.productId;

-- 業務銷售排行
select e.employeeId, o.orderId,
sum(od.unitPrice*od.quantity*(1-od.discount)) total
from orders o
	join `order details` od using(orderId)
    join employees e using(employeeId)
group by o.EmployeeID
order by total desc;

show variables;
show variables like 'sql%';
show variables like 'sql_mode';
show variables like '%safe%';
set sql_mode = '';

select e.employeeId, e.lastname, 
sum(od.unitPrice*od.quantity*(1-od.discount)) total
from employees e
join orders o on (e.employeeId = o.employeeId)
join `order details` od on (o.orderId = od.orderId)
group by o.employeeId
order by total desc;
-- 驗算
select sum(unitprice*quantity*(1-discount))
from `order details`
where orderid in (
	select orderid from orders
    where employeeId = 6
)
