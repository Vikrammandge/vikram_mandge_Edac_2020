create database trigger_assignment;
use trigger_assignment;

drop table ord_master;
create table ord_master(ord_no int(3),cust_id varchar(5),Status varchar(10));
create table ord_dtl(ord_no int(3),prod_cd varchar(50),Qty int(10));
create table prod_master(prod_cd varchar(5),prod_name varchar(50),Qty_in_stock int(10),Booked_qty int(10));         

select * from prod_master;
insert into ord_master values(1,'C1','P');
insert into ord_dtl values(1,'P1',100);
insert into ord_dtl values(1,'P2',200);
insert into prod_master values('P1','Floppies',10000,1000);
insert into prod_master values('P2','Printers',5000,600);
insert into prod_master values('P3','Moderns',3000,200);
-- question 1

drop trigger question_1;
delimiter $$
create trigger question_1 before insert on ord_dtl for each row
begin
	update prod_master set Booked_qty=Booked_qty+new.qty where prod_cd = new.prod_cd; 
end$$



delimiter $$
create trigger question_2 before delete on ord_dtl for each row
begin
	update prod_master set booked_qty=booked_qty-old.qty where prod_cd=old.prod_cd;
end$$

delete from ord_dtl;





-- question 3
create table employee_d(emp_no int(4),name varchar(50),dept_no int(3),salary int(5));
insert into employee_d values(1,'V',1,100);
create table employee (dept_no int(3),total_salary varchar(50));
insert into employee values(1,1000);
insert into employee values(2,2000);
insert into employee values(3,3000);
insert into employee values(4,4000);
insert into employee values(5,5000);

delimiter $$
create trigger update_salaries before insert on employee_d for each row
begin
	update employee set total_salary=total_salary+new.salary where dept_no=new.dept_no;
end$$
insert into employee_d values(2,'M',1,100);
select * from employee;


delimiter $$
create trigger delete_salries before delete on employee_d for each row
begin
	update employee set total_salary=total_salary-old.salary where dept_no=old.dept_no;
end$$

delete from employee_d;