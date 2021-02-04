-- display all sales that are greater than the average
/* this is a comment btw */
select *
	from customers c
	where sales > (select avg(sales) from customers)
	
		;