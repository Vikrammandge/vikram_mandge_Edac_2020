create database assignment_cursor_wali;
use assignment_cursor_wali;
truncate emp;
alter table emp modify column lastname varchar(50);
create table emp(emp_id int(3),emp_name varchar(50));
insert into emp values(11,"Viraj ",150,"Patel");
insert into emp values(2,"Vaibhav ",300,"Joshi");
insert into emp values(3,"Vikram ",450,"Mandge");
insert into emp values(4,"Vikas",600,"Kandgul");
insert into emp values(5,"Vikas",750," Shukla");
insert into emp values(6,"Viraj ",1150,"DADA");
insert into emp values(7,"Vaibhav",3000," DADA");
insert into emp values(8,"Vikram",4150," BHAU");
insert into emp values(9,"Vikas BHAU ",6100,"TOFFLE WALE");
insert into emp values(10,"Vikas ",7150,"ShuklaJIIIIIIII");

drop  procedure quest_1;
delimiter $$
create procedure quest_1()
begin
declare emp_cha_name varchar(50);
declare emp_chi_salary varchar(50);
declare finish int(3) default 0;
declare cursor_ques1 cursor for select emp_name,salary from emp;
declare exit handler for not found set finish=1;
open cursor_ques1;
joshi:loop
fetch cursor_ques1 into emp_cha_name,emp_chi_salary;
if finish=1 then
leave joshi;
else
select emp_cha_name,emp_chi_salary from emp limit 1;
end if;
iterate joshi;
end loop joshi;
end $$

call quest_1();


-- question 2
drop procedure quest_2;

delimiter $$
create procedure quest_2()
begin
declare empid int(3);
declare empname varchar(50);
declare empsalary int(5);
declare finish1 integer default 0;
declare cursor_ques2 cursor for select emp_id,emp_name,salary from emp order by salary desc limit 3;
declare continue handler for not found set finish1=1;
open cursor_ques2;
joshi: loop
fetch cursor_ques2 into empid,empname,empsalary;
if finish1=1 then
leave joshi;
else
select empid,empname,empsalary from emp limit 1;
end if;
iterate joshi;
end loop joshi;
end$$


call quest_2();


-- question3
drop procedure ques_4;

delimiter $$
create procedure ques_4 ()
begin
	declare firstname varchar(50);
    declare last_name varchar(50);
    declare finish2 integer default 0;
    declare cursor_3 cursor for select emp_name,lastname from emp;
    declare exit handler for not found set finish2=1;
    open cursor_3;
    joshi:loop
    fetch cursor_3 into firstname,last_name ;
    if finish2=1 then
    leave joshi;
    else
    select concat(firstname," ",last_name);
    end if;
    iterate joshi;
    end loop joshi;
    close cursor_3;
end$$

call ques_4();


-- question 4
drop procedure question4;
delimiter $$
create procedure question4()
begin
declare empiid int(3);
declare empnname varchar(50);
declare salaryy int(50);
declare lastnamee varchar(50);
declare finish4 integer default 0;
declare cursorsss cursor for select * from emp where emp_name='Viraj';
declare exit handler for not found set finish4=1;
open cursorsss;
joshi:loop
fetch cursorsss into empiid,empnname,salaryy,lastnamee;
if finish4=1 then
leave joshi;
else
select empiid,empnname,salaryy,lastnamee limit 1;
end if;
iterate joshi;
end loop joshi;
close cursorsss;
end$$


call question4();

-- question 5

drop procedure question5;
delimiter $$
create procedure question5()
begin
declare emppidd int(3);
declare emppfirst varchar(50);
declare mppsalary int(3);
declare empplast varchar(50);
declare finish5 integer default 0;
declare cursor5 cursor for select * from emp where salary<500;
declare exit handler for not found set finish5=5;
open cursor5;
joshi:loop
fetch cursor5 into emppidd,emppfirst,mppsalary,empplast;
if finish5=1 then
leave joshi;
else
delete from emp where emp_id=emppidd;
end if;
end loop joshi;
close cursor5;
end$$

select * from emp;
call question5();