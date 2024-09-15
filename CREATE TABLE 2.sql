use xyz;

create table student_info(
roll int primary key, 
name varchar(50), 
subject varchar (50),
grade varchar(1)
);

insert into st_info(roll, names, subject, grade)
values 
(1, 'raquib', 'science', 'b'),
(2, 'hassan', 'science', 'c'),
(3, 'joy', 'science', 'a'),
(4, 'jab', 'science', 'c'),
(5, 'tab', 'science', 'a'),
(6, 'lab', 'science', 'b');

select * from student_info;

alter table student_info add column age int;

select * from student_info;

alter table student_info drop column age;

alter table student_info rename to st_info;

alter table st_info change column name names varchar(50);

select * from st_info;


alter table st_info modify names varchar (70);

-- delete table data : truncate table student;


