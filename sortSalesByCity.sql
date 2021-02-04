select city, count(*) as 'Number of customers', sum(sales) as 'Sales',
		avg(sales) as 'Average Sales'
	from customers
	group by city