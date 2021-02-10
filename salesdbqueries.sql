-- between 500 and 1000
use salesdb;
select c.name, sum(ol.price * ol.quantity) as 'Total' from customers c

-- c.name, c.sales, o.description, ol.product, ol.description, ol.quantity, ol.price, ol.quantity * ol.price as 'Subtotal' from customers c
join orders o on o.customerId = c.id
join orderlines ol on ol.ordersID = o.id
-- where 
-- where c.name in ('Kroger', 'P&G', 'Fifth Third Bank')
group by c.name
having (sum(ol.price*ol.quantity) <= 1000) AND (sum(ol.price*ol.quantity) <= 500)
order by c.name;

select avg(sum(ol.price * ol.quantity)) from customers c
join orders o on o.customerId = c.id
join orderlines ol on ol.ordersID = o.id
group by c.name;

-- show all customers where sales > avg desc, 1st get avg of sales column
select avg(c.sales) from customers c
	where sales <= avg(c.sales);
