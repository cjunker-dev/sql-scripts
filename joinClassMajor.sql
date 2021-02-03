select c.code, description as 'Major'
	from class c
		Join majorclass mc on c.id = mc.ClassId
		Join major m on mc.MajorId = m.id
	order by c.code