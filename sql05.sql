use northwind;
select * from products;
select productname, unitsinstock, unitsonorder, ReorderLevel
from products where UnitsInStock <= ReorderLevel;
select productname, unitsinstock, unitsonorder, ReorderLevel
from products where UnitsInStock <= UnitsOnOrder;