use northwind;

select p.productName, s.companyName
from products p
	join suppliers s on (p.supplierId = s.supplierId)
order by s.companyName;
