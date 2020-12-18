show databases;
use vikram;
show tables;
create table DBT_assignment1(
member_id int(5),
member_name varchar(30),
member_address varchar(50),
acc_open_Date Date,
membership_type varchar(20),
penalty_amount int(7)
);
select * from DBT_assignment1;

insert into DBT_assignment1 VALUES (1,"JOSHI", "PUNE",2000-31-10,"PLANTINUM",500);