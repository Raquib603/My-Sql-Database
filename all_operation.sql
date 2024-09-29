create database abc;
use abc;



create table employee (
emp_id int primary key, 
first_name varchar (20), 
last_name varchar (20), 
age int, 
salary double
);

insert into employee (emp_id, first_name, last_name, age, salary) values
(101, 'raquib', 'hassan', 23, 25000),
(102, 'joy', 'ahmed', 24, 27000),
(103, 'kill', 'bill', 23, 25000),
(104, 'jannat', 'sarma', 25, 9000),
(105, 'santi', 'ahmed', 27, 28000),
(106, 'gopi', 'bahu', 29, 29000),
(107, 'sanam', 'dill', 23, 20000),
(108, 'nabil', 'hassan', 21, 21000);


-- for any change to table 
-- change column name[CHANGE] or modify column data_type[MODIFY]

alter table employee change first_name f_name varchar(20);
alter table employee change last_name l_name varchar(20);

alter table employee modify f_name varchar(30);


-- add new column and update
alter table employee add location varchar(30);
UPDATE employee SET location = 'dhaka' where emp_id = 101;
UPDATE employee SET location = 'Jessore' WHERE emp_id = 102;
UPDATE employee SET location = 'Dhaka' WHERE emp_id = 103;
UPDATE employee SET location = 'Joypur' WHERE emp_id = 104;
UPDATE employee SET location = 'Nandina' WHERE emp_id = 105;
UPDATE employee SET location = 'Gopalganj' WHERE emp_id = 106;
UPDATE employee SET location = 'Dhaka' WHERE emp_id = 107;
UPDATE employee SET location = 'Dhaka' WHERE emp_id = 108;


select * from employee;


-- SELECT
-- to show specific column
select f_name, location, salary from employee;


select * from employee where location = 'dhaka';
select * from employee where location in ('dhaka');
select * from employee where salary>25000 and age<27;
select * from employee order by emp_id desc;
select * from employee order by salary asc;
select max(salary), location from employee group by location;
select * from employee limit 3;
select avg(salary) as avg_salary from employee where location ='dhaka';

-- search string
select * from employee where f_name like ('r%');
select * from employee where location like ('%pal%');
select count(f_name) from employee;


select count(f_name) as non from employee group by location;

insert into employee (emp_id, f_name, l_name, age, salary, location) values
(109, 'jabbar', 'seikh', 25, 30000, 'gopalganj');
select * from employee;
select * from employee where salary = (select max(salary) from employee);

select * from employee;



select * from employee where location in ('dhaka');
select * from employee where location = 'dhaka';

select concat (f_name, '       ', l_name) from employee; 
select distinct location from employee;



