select * from sys.databases

create database Fellowship5

use Fellowship5;

create database Payroll_Service

use Payroll_Service;

create table employee_payroll
(
id int identity primary key,
name varchar(20) not null,
salary money not null,
start date not null
);


insert into employee_payroll values
('Billi',100000.0,'2018-01-03'),
('Terisa',200000.0,'2019-11-13'),
('charlie',300000.0,'2020-05-21');

insert into employee_payroll (salary,name,start) values
(40000.0,'shir','2021-04-03');

select * from employee_payroll where name='billi'
select GETDATE()
select salary from employee_payroll where start between 2018-01-03 and GETDATE();

alter table employee_payroll add gender char(1)
update employee_payroll set gender='f' where name='terisa' or name='charlie'
select * from employee_payroll

select sum(salary) from employee_payroll

update employee_payroll set gender='m' where name='shir'

select gender,avg(salary) as 'average salary' from employee_payroll group by gender;