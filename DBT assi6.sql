-- question1
use vikram;

delimiter $$
create function ques4_1(val int)returns int(10)
begin
declare val1 int(10) default 1;
tes:repeat
set val1=val1*val;
set val=val-1;
until val=1
end repeat;
return val1;
end$$

select ques4_1(5);

drop function ques6_2;
-- question 2
delimiter $$
create function ques6_2(n int(5)) returns varchar(10)
begin
declare flag int(2) default 0;
declare i int(5) default 2;
repeat 
if n%i=0 then
	return 'Not prime';
else 
set	i=i+1;
end if;
until i=n-1

/*if n> 0 then
	if n%2=0 then
		set flag=1;
	else if 
		end if;
end if;*/
end repeat;
return 'prime';
/*if flag=1 then
return 'Prime Number'
else 
return 'not prime'
end if;*/
end$$
    
select ques6_2(3);

-- question3

drop function ques6_3;
delimiter $$
create function ques6_3(n int(10)) returns varchar(100)
begin
	return concat('inches ',n,' yards ',(n/36),' foot ',(n/12));
end$$


select ques6_3(5);

-- question 4
delimiter $$
create function ques6_4(dep int(4))returns varchar(20)
begin
	update emp set salary=salary+(salary*0.10) where dep_id=dep;
    return 'updated';
end$$

-- question 5

delimiter $$
create function user_annual_comp(psal int(4),pcomm int(4)) returns int(5)
begin
declare annual_compension int(4);
set annual_compension=(psal+pcomm)*12;
return annual_compension;
end$$
-- question 7

delimiter $$
create function reversess(word varchar(50)) returns varchar(50)
begin
	if char_length(word)=0 then
    return 'String is null';
    else
		return reverse(word);
	end if;
end$$

select reversess('MongoDB');

-- question 8

delimiter$$
create procedure table_details()
	select * from aish;

call table_details;

show tables;