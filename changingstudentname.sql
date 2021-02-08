select * from student;

INSERT student
	(firstname, lastname, sat, gpa, majorid)
    VALUES
		('Genius', 'Programmer', 1315, 2.95, 
			(SELECT id from major Where description = 'Engineering')
		);

DELETE from student 
where id = 193;

update student set 
    gpa = 3.51,
    lastname = 'Fence',
    majorID = (select id from major where description = 'Accounting')
    where id = 191;
    
    select * from student;