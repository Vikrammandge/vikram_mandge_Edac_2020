create database assignment_4;
use assignment_4;
show tables;
create table department(
dept_id int(2) primary key,
dept_name varchar(15)
);
create table Employee(
emp_id int(2),
emp_name varchar(20),
dept_id int(1),
salary int(20),
manager int(1),
foreign key(dept_id) references department(dept_id)
);
insert into department values(1,'Finance');
insert into department values(2,'Training');
insert into department values(3,'Marketing');
insert into employee values(1,'Arun',1,8000,4);
insert into employee values(2,'Kiran',1,7000,1);
insert into employee values(3,'Scott',1,3000,1);
insert into employee values(4,'Max',2,9000,null);
insert into employee values(5,'Jack',2,8000,4);
insert into employee values(6,'King',null,6000,1);

select dept_name,emp_name from employee inner join department on employee.dept_id=department.dept_id;
select * from department inner join employee on employee.dept_id=department.dept_id;
select dept_id, sum(salary) as sum from employee group by dept_id; 
select dept_name,emp_name from employee right outer join department on employee.dept_id=department.dept_id;
select dept_name,emp_name from employee left outer join department on employee.dept_id=department.dept_id;
select emp_name,manager from employee oue
