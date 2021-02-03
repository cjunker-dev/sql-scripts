SELECT Firstname, lastname, ClassGradeValue, section, subject
	From student s
	Join StudentClass sc On s.Id = sc.StudentId
	Join class c on c.Id = sc.ClassId
	where s.firstname = 'Brian' and s.lastname = 'Biggs'