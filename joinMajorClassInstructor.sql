select *
	from major m
	join majorclass mc on m.id = mc.majorid
	join class c on c.id = mc.classid
	join instructor i on i.id = c.InstructorId