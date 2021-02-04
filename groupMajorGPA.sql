select m.Description as 'Major', avg(gpa) as 'Avg GPA'  
	from student s
	join major m on m.id = s.majorid
	group by m.Description
	having avg(gpa) >= 3.0