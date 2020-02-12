use northwind;
show tables;
select * from `order details`;
-- 加上總金額 totolPrice
select orderid, productid,unitprice,quantity, discount, 
unitprice*quantity*(1-discount) totalPrice
from `order details`;

select sum(quantity) 'totalUnits' from `order details` where productid=4;
