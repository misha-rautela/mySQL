// create database test
create database test;

// Drop database test
drop database test;

create database test;

// Use database test
Use test;

// Sho all the tables in the current database;
Show tables;

// Create a table from existing table;
create table cust_test (select * from cust_info) ;

// Describe a table – will display all the column details of a table;
desc cust_test;

// Same as Describe
show columns from cust_test;

// Modify existing column in a table
alter table cust_info modify gov_id varchar(25) not null;

//Drop a column in an existing table
alter table cust_info drop column gov_id

// Drop multiple columns in an existing table
alter table cust_info drop column gov_id, age, gender

//Rename a table 
rename table cust_test to cust_test1

// Add a column in a table
alter table cust_test1 add column test_column varchar(25);

// Add Primary Key constraint to existing table
ALTER TABLE cust_test1 ADD CONSTRAINT pk_key PRIMARY KEY (test_column);

//Rename a column
ALTER TABLE cust_test1  change  test_column pk_col varchar(25);

// change position of column in a table for better readability - can use before/after
alter table message change msg_id msg_id varchar(25) after rel_id;
