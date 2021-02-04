declare @satscholarship int = 1495;

select * from student
 where sat >= @satscholarship
 order by sat
