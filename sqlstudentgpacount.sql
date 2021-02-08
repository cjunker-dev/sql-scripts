update student set 
	gpa = gpa * 1.1
    where id > 0;
    
select *
	from student;
    
    
select count(*)
	from student
		where gpa > 2.42;