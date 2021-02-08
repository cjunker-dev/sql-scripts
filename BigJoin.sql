select r.description, sum(p.price * li.quantity) as 'Total'
	from request r
	join user u on u.id = r.userId
    join lineItem li on li.requestId = r.id
    join product p on p.id = li.productId
    join vendor v on v.id = p.vendorId
    group by r.description;
-- select sum(price)

-- r.id, r.description, r.status, r.total, u.lastname, li.quantity, p.name, p.price, (p.price * li.quantity) as Subtotal, v.Name as Company