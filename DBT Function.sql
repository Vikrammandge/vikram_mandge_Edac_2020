create database komalpractice;
use komalpractice;

-- Question1

delimiter $$
create function Question1(num int(10)) returns int(10)
begin

    declare a int(3) default 1;
	if num=0 then
    return 0;
    else
    komal:loop
		if num=0 then
        leave komal;
        else
		set a=a*num;
        set num=num-1;
        end if;
    end loop komal;
    return a;
    end if;
end $$


select question1(5);

-- question 2

delimiter $$ 
create function Question2(a int(10))returns varchar(50)
begin
	declare b int(3) default 2;
	if a =0 then
    return 'Not p';
    elseif a=1 then
    return 'cnot p';
    elseif a=2 then
    return 'bprime';
    else
    komal:loop
		if a=b then
        return 'a prime';
        elseif a%b=0 then
        return 'not';
        else
			set b=b+1;
		end if;
    end loop komal;
    end if;
end$$

drop function question2;
select question2(2);