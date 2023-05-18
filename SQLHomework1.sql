create table dbo.Student(
ID int not null,
FirstName nvarchar(20) not null,
LastName nvarchar(50) not null,
DateOfBirth date not null,
EnrolledDate date not null,
Gender char not null,
NationalIDNumber int not null,
StudentCardNumber int not null
CONSTRAINT PK_Student PRIMARY KEY CLUSTERED (ID)
)
create table dbo.Teacher(
ID int not null,
FirstName nvarchar(20) not null,
LastName nvarchar(50) not null,
DateOfBirth date not null,
AcademicRank nvarchar(20) not null,
HireDate date not null,
CONSTRAINT PK_Teacher PRIMARY KEY CLUSTERED (ID)
)
create table dbo.Grade(
ID int not null,
StudentID int not null,
CourseID int not null,
TeacherID int not null,
Grade smallint not null,
Comment nvarchar(50),
CreatedDate date not null,
CONSTRAINT PK_Grade PRIMARY KEY CLUSTERED (ID)
)
create table dbo.Course(
ID int not null,
Name nvarchar(50) not null,
Credit smallint not null,
AcademicYear smallint not null,
Semester smallint not null,
CONSTRAINT PK_Course PRIMARY KEY CLUSTERED (ID)
)
create table dbo.GradeDetails(
ID int not null,
GradeID int not null,
AchievementTypeID int not null,
AchievementPoints int not null,
AchievementMaxPoints int not null,
AchievementDate date not null,
CONSTRAINT PK_GradeDetails PRIMARY KEY CLUSTERED (ID)
)
create table dbo.AchievementType(
ID int not null,
Name nvarchar(50) not null,
Description nvarchar(50) not null,
ParticipationRate decimal(1,1) not null,
CONSTRAINT PK_AchievementType PRIMARY KEY CLUSTERED (ID)
)