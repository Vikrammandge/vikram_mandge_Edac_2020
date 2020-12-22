create database assignment7;
use assignment7;
show tables;
create table  Ord_master(
ord_no int,
cust_cd varchar(5),
status varchar(2)
);
select * from ord_master;
insert into ord_master values(1,'c1','p');

create table ord_dt1(
ord_no int,
prod_cd varchar(5),
qty int
);
select * from ord_dt1;
insert into ord_dt1 values(1,'p1',100);
insert into ord_dt1 values(1,'p2',200);


create table prod_master(
prod_cd varchar(5),
prod_name varchar(20),
qty_in_stack int(10),
booked_qty int(20)
);
drop table prod_master;
select * from prod_master;
insert into prod_master values('p1','floopies',10000,1000);
insert into prod_master values('p2','printers',5000,6000);
insert into prod_master values('p3','modems',3000,200);

create table Emp(
	empid int (2) ,
	emp_name varchar(10),
	dept_id int(1),
	salary int(4)
);

select * from emp;
insert into emp values(1,'vikash',10,10000);
insert into emp values(2,'viraj',20,20000);
insert into emp values(3,'shubham',30,60000);


select * from dept_sal;
Create table dept_sal (dept_no int, tota_salary int); 
insert into dept_sal values(1,50000);
insert into dept_sal values(2,100000);
insert into dept_sal values(3,40000);

-- 1. Write a Before Insert trigger on Ord_dtl. Anytime a row is inserted in Ord_dtl, the
-- Booked_qty in Prod_master should be increased accordingly

delimiter ##
create trigger before_insert before insert on ord_dt1
for each row 
begin
update prod_master set booked_qty = booked_qty + new.qty where prod_cd=new.prod_cd;
end ##

insert into ord_dt1 values(1,'P1',100);
insert into ord_dt1 values(4,'P4',400);


 
-- 2. Write a Before Delete trigger on Ord_dtl. Anytime a row is deleted from Ord_dtl, the
-- Booked_qty in Prod_master should be decreased accordingly.

delimiter ##
create trigger before_dlt before delete on ord_dt1
for each row
begin
update prod_master set booked_qty=booked_qty - old.qty where  prod_cd = old.prod_cd;
end ##

delete from ord_dt1 where prod_cd='p2';




-- 3. write A trigger to update the total salary of a department in dept_sal  table  when an employee is added or removed from  emp table .
delimiter ##
create trigger my_trig before insert on emp
for each row
begin
update dept_sal set tota_salary = tota_salary + new.salary where dept_no = new.dept_id;
end ##
insert into emp values (6,'Baraskar',1,20000);
drop trigger my_trig;

============

delimiter $$
create trigger my_trig_3a before delete on emp for each row
begin
update dept_sal set tota_salary = tota_salary - old.salary where dept_no = old.dept_id;
end $$
delete from emp where dept_id=1;
