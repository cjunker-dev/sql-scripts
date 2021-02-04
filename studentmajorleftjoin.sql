select s.id, s.lastname, m.description from
	student s
	left join Major m on m.id = s.majorid
	where s.majorid is null
