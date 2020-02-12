use northwind;
show tables;
select * from orders;
select orderid, customerid, employeeid, orderdate, requireddate, shippeddate
from orders where ShippedDate > RequiredDate;
select concat(firstname, ' ', lastname) 'fullname' from employees;
-- Freight運費, 10% 手續費 => FreightTotal
select orderid, freight, freight*1.1 'freightTotal' from orders
where freight >= 500;
