select FirstName,*
from dbo.Student
where FirstName = 'Antonio'

select *
from dbo.Student as s
where DateOfBirth > '1999-01-01'

select *
from dbo.Student
where LastName like 'J%' and EnrolledDate like '1998-01%'

select *
from dbo.Student
order by FirstName 

select LastName
from dbo.Teacher 
union
select LastName
from dbo.Student 

select c.Name, act.Name
from dbo.Course c
cross join dbo.AchievementType as act


select t.FirstName, t.LastName, g.Grade
from dbo.Teacher t
inner join dbo.Grade g on t.ID = g.TeacherID 



select a.Name, g.Grade, g.TeacherID
from dbo.AchievementType a
inner join dbo.GradeDetails gd on a.ID = gd.AchievementTypeID 
inner join dbo.Grade g on g.ID = gd.GradeID
where g.Grade is null
