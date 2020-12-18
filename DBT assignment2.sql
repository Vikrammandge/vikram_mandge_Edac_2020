use vikram;
create table emp(
EMPNO numeric(4) not null,
 ENAME varchar(30) not null,
 JOB varchar(10),
 MGR numeric(4),
 HIREDATE date,
 SAL numeric(7,2),
 DEPTNO numeric(2)
 );

Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DeptNo ) values(1000,'Manish' ,'SALESMAN',1003,'2020-02-18',600,30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, DeptNO ) values(1001,  'Manoj' , 'SALESMAN', 1003,  '2018-02-18', 600,  30) ;
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, Deptno ) values(1002 , 'Ashish', 'SALESMAN',1003 , '2013-02-18',  750,  30 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, Deptno) values(1004,  'Rekha', 'ANALYST', 1006 , '2001-02-18', 3000,  10);
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, Deptno ) values(1005 , 'Sachin', 'ANALYST', 1006 ,  '2019-02-18', 3000, 10 );
Insert into EMP (EMPNO ,ENAME, JOB, MGR, HIREDATE, SAL, Deptno ) values(1006,  'Pooja',  'MANAGER'  , null, '2000-02-18' ,6000, 10 );

Create table dept (dno numeric(4) not null, 
dname varchar(10) not null,
area varchar(30));

Insert into dept(dno,dname,area) values(10,'Store','Mumbai');
Insert into dept(dno,dname,area) values(20,'Purchase','Mumbai');
Insert into dept(dno,dname,area) values(30,'Store', 'Delhi');
Insert into dept(dno,dname,area) values(40,'Marketing','Pune');
Insert into dept(dno,dname,area) values(50,'Finance','Delhi');
Insert into dept(dno,dname,area) values(60,'Accounts','Mumbai');

-- Question 1

delimiter $$
create procedure Ques1(in x int,in y int)
begin 
select x+y as addd;
select x-y as sub;
select x*y as mult;
select x/y as divv;
end$$

call ques1(5,10);


-- Question2
delimiter $$
create procedure Ques2(inout str varchar(10))
begin
set @str=(Select reverse(str));
end $$

set@x='HelloWorld';
call ques2(@x);




-- question 3

delimiter $$
create procedure ques3()
begin 
select empno ,empno,sal from emp order by sal desc limit 5;
end$$ 

call ques3;


-- question 4

delimiter $$
create procedure ques4()
begin
create table emp_test(
emp_ID int,
ename varchar(10),
ejoining_date date
);
end$$

call ques4;

-- question 5

delimiter $$
create procedure quesT5(in X VARCHAR(10),IN Y INT,IN Z VARCHAR(10))
begin
insert into dept values (Y,X,Z);
end $$

SET @X='EDUCATION';
SET @Z='pUNE';
CALL QUEST5(@X,60,@Z);
SELECT * FROM DEPT;

-- QUESTION 6
DELIMTER $$
CREATE PROCEDURE QUES6(INOUT NUM INT,OUT SQR INT,OUT CUBE1 INT)
BEGIN
DECLARE NUM1 INT;
SET NUM1=NUM;
SELECT NUM,POWER(NUM,2) AS SQUARE,POWER(NUM,3) AS CUBE1 INTO NUM,SQR,CUBE1;
END$$

SET @NUM=2;
CALL QUES6(@NUM,@SQR,@CUBE1);


-- QUESTION 7
DELIMITER $$
CREATE PROCEDURE QUES7(OUT ANS INT)
BEGIN
DECLARE NUM INT;
SET NUM=2;
SELECT NUM INTO ANS;
END$$

CALL QUES7(@ANS);
SELECT @ANS;

-- QUESTION 8
