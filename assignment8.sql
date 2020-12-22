create database assignment8;
use assignment8;


Create table EMP ( 
	EMP_NO int(4) , 
	fNAME varchar(30) , 
	LNAME VARCHAR(30),
	EMP_SAL int(20), 
	DEPTNO int(2) 
); 
select * from emp;
INSERT INTO EMP values(10,'VIKASH','SHUKLA',6000,1);
INSERT INTO EMP values(20,'VIRAJ','KANSARA',7000,2);
INSERT INTO EMP values(30,'VAIBHAV','GARGOTE',8000,3);
INSERT INTO EMP values(40,'VIKRAM','MANDAGE',9000,4);
INSERT INTO EMP values(50,'VAIBHAV','ROKDE',5000,5);
INSERT INTO EMP values(60,'MANEESH','DUBEY',4000,6);



-- 1.	the “emp” table by making Write a Procedure that displays names and salaries of all Analysts recorded in use of a cursor.

DELIMITER $$
create procedure CUR_EXP1()
begin 
declare NAME VARCHAR(30);
declare SAL INT;
-- declare TOTAL_SALARY INT default 0;
declare FINISHED integer default 0;
declare SA_CUR CURSOR FOR SELECT FNAME, EMP_SAL FROM EMP;
 DECLARE CONTINUE handler for  NOT FOUND SET FINISHED=1;
OPEN SA_CUR;
GETNAME:LOOP
FETCH SA_CUR INTO NAME,SAL;
IF FINISHED=1 THEN
LEAVE GETNAME;
END IF;
SELECT NAME,SAL FROM EMP; 
END LOOP GETNAME;
close SA_CUR;
END $$

CALL CUR_EXP1();




-- 2.	Write a Procedure to display top 5 employees based on highest salary and display employee number, employee name and salary using Cursor.


DELIMITER $$
create procedure CUR_EXP2()
begin 
 declare e_NAME VARCHAR(30);
 declare SAL INT;
 declare e_NO INT;
declare FINISHED integer default 0;
declare SA_CUR CURSOR  FOR SELECT FNAME, EMP_SAL, EMP_NO FROM EMP order by emp_sal desc limit 3;
 DECLARE exit handler for  NOT FOUND SET FINISHED=1;
OPEN SA_CUR;
GETNAME:LOOP
FETCH SA_CUR INTO e_NAME,SAL,e_NO;
IF FINISHED=1 THEN
LEAVE GETNAME;
else 
SELECT e_name,sal,e_no  FROM EMP; 
END IF;
iterate getname;
END LOOP GETNAME;
close SA_CUR;
END $$

CALL CUR_EXP2();

 
 
 -- 3.	Write  a procedure to display the concatenated first_name and last_name from “emp” table using cursors handle the  errors with Exit handler
 
DELIMITER $$
create procedure CUR_EXP3()
begin
declare A_NAME varchar(30);
declare N_NAME VARCHAR(30);
DECLARE FINISHED INTEGER default 0;
DECLARE SU_CUR CURSOR FOR SELECT FNAME,LNAME FROM EMP;
DECLARE exit handler for NOT found set FINISHED=1;
OPEN Su_CUR;
GETNAME:loop
FETCH Su_CUR INTO A_NAME,N_NAME;
IF FINISHED=1 THEN
leave GETNAME;
else
select concat(A_NAME," ",N_NAME);
end if;
end loop GETNAME;
CLOSE SU_CUR;
END $$

CALL CUR_EXP3(); 



-- 4.	Write a procedure which select all the data from employee table and display the data of employee where employee name is ‘Manish’ using cursors.

delimiter %%
create procedure cur_exp4()
begin
declare e_no int;
declare a_name varchar(20);
declare n_name varchar(20);
declare sal int;
declare d_no int;
declare finished integer default 0;
declare su_cur cursor for select * from emp;
declare exit handler for not found set finished=1;
open su_cur;
select_data:loop
fetch su_cur into e_no,a_name,n_name,sal,d_no;
if a_name='vikash' then
select * from emp where fname='vikash';
end if;
end loop select_data;
close su_cur;
end %%

call cur_exp4();



-- 5.	Write a procedure which select delete the data from employee table if emp sal is less than 10000  using cursor and handle the  Sqlexception with continue handler

delimiter $$
create procedure cur_exp5()
begin
declare id int;
declare e_name varchar(20);
declare a_name varchar(20);
declare sal int;
declare dpt int;
declare finished int default 0;
declare del_cur cursor for select * from emp where sal<5000;
declare continue handler for not found set finished=1;
open del_cur;
repeat
fetch del_cur into id,e_name,a_name,sal,dpt;
delete from emp where emp_sal<5000;
until finished
end repeat;
close del_cur;
 end $$

call cur_exp5();





