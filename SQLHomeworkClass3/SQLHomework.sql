-- First Bullet Point --
select t.FirstName,t.LastName, SUM(g.Grade) as TotalGrade
from dbo.Grade g
inner join dbo.Teacher t on g.TeacherID = t.ID 
group by t.FirstName, t.LastName
-- Second Bullet Point --
select t.FirstName,t.LastName, SUM(g.Grade) as TotalGrade
from dbo.Grade g
inner join dbo.Teacher t on g.TeacherID = t.ID 
inner join dbo.Student s on s.id = g.StudentID
where s.id < 100
group by t.FirstName, t.LastName
--Third Bullet Point --
select s.ID,s.FirstName,s.LastName, max(g.grade) as MaximalGrade, avg(g.grade) as AverageGrade
from dbo.Grade g 
inner join dbo.Student s on g.StudentID = s.ID
group by s.ID, s.FirstName, s.LastName
-- Fourth Bullet Point --
select t.FirstName, t.LastName, count(g.Grade) as TotalGrade
from dbo.Grade g
inner join dbo.Teacher t on g.TeacherID = t.ID
group by t.FirstName, t.LastName
having count(g.grade) > 200
order by TotalGrade asc
--Fifth Bullet Point --
select s.ID, count(g.grade) as CountGrade,max(g.grade) as MaximalGrade, avg(g.grade) as AverageGrade
from dbo.Grade g 
inner join dbo.Student s on g.StudentID = s.ID
group by s.ID, s.FirstName,s.LastName
having avg(g.grade) = max(g.grade)
-- Sixth Bullet Point --
select s.ID,s.FirstName,s.LastName, count(g.grade) as CountGrade,max(g.grade) as MaximalGrade, avg(g.grade) as AverageGrade
from dbo.Grade g 
inner join dbo.Student s on g.StudentID = s.ID
group by s.ID, s.FirstName,s.LastName
having avg(g.grade) = max(g.grade)
go
--Seventh Bullet Point --
create view dbo.vv_StudentGrades
as
select s.ID,count(g.grade) as CountGrade
from dbo.Grade g 
inner join dbo.Student s on g.StudentID = s.ID
group by s.ID
go
--Eighth Bullet Point --
alter view dbo.vv_StudentGrades
as
select s.FirstName, s.LastName, count(g.grade) as CountGrade
from dbo.Grade g 
inner join dbo.Student s on g.StudentID = s.ID
group by s.FirstName, s.LastName
--Last Bullet Point --
select * 
from dbo.vv_StudentGrades
order by CountGrade desc



