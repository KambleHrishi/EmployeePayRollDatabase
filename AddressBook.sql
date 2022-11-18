---------------UC1--------------
create database AddressBookService


---------------UC2---------------
create table AddressBook
(
firstname varchar(200),
lastname varchar(200),
address varchar(200),
city varchar(200),
state varchar(200),
zip int ,
phoneno int,
email varchar(200)
)

select * from AddressBook
-----------------UC3-----------------

insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('hrishi','kamble','zadgao','ratnagiri','MH',456,33344,'dadf')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('ravi','jadhav','teleaali','ratnagiri','MH',456,33344,'fdfa')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('raj','kade','bsp','Wadwani','MH',456,33344,'sadg')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('premji','thakur','katraj','pune','MH',456,33344,'aadf')
insert into AddressBook(firstname,lastname,address,city,state,zip,phoneno,email) values('prajyot','pathak','madgaon','panjim','GA',456,33344,'grfdha')

select * from AddressBook
------------------------UC4--------------------


update AddressBook
set lastname='Kamble'
where firstname='hrishi'

select * from AddressBook

------------------------UC5-----------------
delete from AddressBook
where firstname='prajyot'

select * from AddressBook

------------------------UC6-----------------
select * from AddressBook
where address='madgaon'

select * from AddressBook
where city='panjim'

select * from AddressBook
------------------UC7-----------------------

select count('city') from AddressBook
select count('state') from AddressBook


--------------------UC8-------------------
select * from AddressBook order by firstname

---------------------UC9------------
 alter table AddressBook 
 add AddressBookName varchar(30)
 
 alter table AddressBook 
 add AddressBookType varchar(30)

------------------UC10-------------------------
SELECT * FROM AddressBook
alter table AddressBook  add AddressBookName varchar(30),AddressBookType varchar(30);
update AddressBook set AddressBookName = 'Family address book', AddressBookType = 'Family' where firstname='hrishi';
update AddressBook set AddressBookName = 'Friends address book', AddressBookType = 'Friends' where firstname='raj';
update AddressBook set AddressBookName = 'Friends address book', AddressBookType = 'Friends' where firstname='premji';
update AddressBook set AddressBookName = 'Friends address book', AddressBookType = 'Friends' where firstname='prajyot';

select count(AddressBookType) from AddressBook where AddressBookType = 'Family';