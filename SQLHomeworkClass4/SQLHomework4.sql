declare @FirstName nvarchar(20)
set @FirstName = 'Antonio'

select *
from dbo.Student s
where s.FirstName = @FirstName

declare @TempStudents table
(ID int, FirstName nvarchar(20), DateofBirth date)

insert into @TempStudents
select s.ID, s.FirstName, s.DateOfBirth
from dbo.Student s
where s.Gender = 'F'

select * 
from @TempStudents

declare @SecondTempStudents table
(LastName nvarchar(50), EnrolledDate date)
insert into @SecondTempStudents
select s.LastName, s.EnrolledDate
from dbo.Student s
where s.FirstName like 'A%' and len(s.Lastname) = 7
select *
from @SecondTempStudents

declare @TempTeacher table
(FirstName nvarchar (20), LastName nvarchar(50))
insert into @TempTeacher
select t.FirstName, t.LastName
from dbo.Teacher t
where len(t.FirstName) < 5 and (left(t.FirstName,3) = left(t.Lastname, 3))
select *
from @TempTeacher