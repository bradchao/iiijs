use northwind;
select * from `order details`;
/*
	1. 訂單明細中, 各個產品(productid)的總銷售量(quantity)
    2. 小於 200 的銷售量的產品
*/
select productid, sum(quantity) total from `order details`
group by productid having total < 200;
/*
* 統計各產品的平均單價
*/

