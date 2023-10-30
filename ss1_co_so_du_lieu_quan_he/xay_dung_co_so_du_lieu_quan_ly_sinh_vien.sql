create database my_database1;
drop database my_database1;

create schema student_management;

select * from student_management.student;

CREATE TABLE `student_management`.`Class` (
  `id` INT NULL,
  `name` VARCHAR(45) NULL);

CREATE TABLE `student_management`.`Teacher` (
  `id` INT NULL,
  `name` VARCHAR(45) NULL,
  age int,
  country varchar(45));
