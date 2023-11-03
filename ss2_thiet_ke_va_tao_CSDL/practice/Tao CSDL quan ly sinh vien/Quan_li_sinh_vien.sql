create database QuanLySinhVien;
use QuanLySinhVien;

create table Class(
ClassID int not null auto_increment primary key,
ClassName varchar(60) not null,
StartDate datetime not null,
`Status` bit
);

create table Student(
StudentId int not null auto_increment primary key,
StudentName varchar(30),
Address varchar(50),
Phone varchar(20),
`Status` bit,
ClassID int not null
);

create table `Subject`(
SubID int not null primary key auto_increment,
SubName varchar(30) not null,
Credit tinyint not null default(1) check(Credit >= 1),
`Status` bit default(1)
);

create table Mark(
MarkId int not null auto_increment primary key,
SubId int not null,
StudentId int not null,
Mark float default 0 check ( Mark between 0 and 100),
ExamTimes tinyint default 1,
foreign key (SubId) references `Subject` (SubId),
foreign key (StudentId) references Student (StudentId)
);

