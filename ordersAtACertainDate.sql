declare @lowdate datetime = '2017-10-01 00:00:00.000';
declare @highdate datetime = '2017-12-31 23:59:59.999';

select *
	from orders
	where date >= @lowdate
	AND date <= @highdate




