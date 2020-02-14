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
