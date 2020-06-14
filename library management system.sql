--create database library_management
use library_management;
create table library1(
library1_id int primary key,
library1_name varchar(200),
library1_address varchar(200),
library1_phone int);
create table Userr(
u_id int primary key,
u_name varchar(200),
u_address varchar(200),
u_phone int);
create table librarian(
lib_id int primary key,
lib_name varchar(200),
lib_phone int);
create table publisher(
pub_id int primary key,
pub_name varchar(200),
pub_address varchar(200),
pub_phone int);
create table author(
auth_id int primary key,
auth_name varchar(200),
auth_email varchar(200),
auth_phone int);
create table book(
book_id int primary key,
book_name varchar(200),
auth_id int foreign key references author(auth_id),
pub_id int foreign key references publisher(pub_id),
book_year int,
book_price int);
use library_management;
insert into library1(library1_id , library1_name , library1_address , library1_phone) 
values (1 , 'libraryco' , 'cairo' , 5858);
insert into Userr
values (2 , 'mahmoud' , 'cairo' , 5555);
insert into librarian
values (3 , 'malik' , 'naser city' , 8888);
insert into publisher
values (4 , 'zain' , 'cairo' , 2222);
insert into author
values (5 , 'mohamed' , 'mohamed@yahoo.com' , 6565);
insert into book(auth_id ,book_name , book__year , book_price)
values (6 , 'flower' , 1975 , 100);
delete from library1 where library1_id = 1 ;
delete from Userr where u_name = 'mahmoud' ;
delete from librarian where lib_phone = 8888 ;
delete from publisher where pub_id = 4 ;
delete from author where auth_phone = 6565 ;
update library1
set library1_address = 'alex'
where library1_address = 'cairo' ;
update Userr
set u_name = 'mosaad'
where u_name = 'mahmoud' ;
update librarian
set lib_name = 'mostafa'
where lib_name = 'malik' ;
update publisher
set pub_address = 'mansora'
where pub_address= 'cairo' ;
update author
set auth_email = 'mohamed55@yahoo.com'
where auth_name =' mohamed' ;
select auth_name , book_name
from author 
inner join book on author.auth_id = book.auth_id ;
select book_name , pub_name
from book 
left join publisher on book.pub_id = publisher.pub_id ;
select lib_name , book_price 
from librarian 
right join book on book.book_id = librarian.lib_id ;
select u_id , lib_name 
from Userr
full join librarian on Userr.u_id =  Userr.u_id ;
select lib_id , u_name 
from librarian , Userr
where librarian.lib_id = Userr.u_id ;
SELECT book_name
FROM book
ORDER BY book_year;
SELECT auth_name 
FROM author
ORDER BY auth_name desc ;
select MAX(pub_phone)
from publisher ;
SELECT MIN(book_year)
FROM book ; 
select count(book_price) , book_name
from book 
group by book_name ; 
SELECT AVG(lib_name)
FROM librarian ;
SELECT SUM(book_price)
FROM book ;
SELECT u_name , u_address
FROM Userr
WHERE u_name IN ('maha', 'mona') AND u_name LIKE '%m%' ;
SELECT u_phone , u_address
FROM Userr
WHERE u_name IN ('maha', 'mona') or u_name LIKE '%m%' ;

SELECT book_name
FROM book
WHERE NOT book_year = 2000;
SELECT u_name
FROM Userr
WHERE u_name IN ('maha', 'mona');
SELECT book_name
FROM book
WHERE book_price BETWEEN 100 AND 200;
SELECT u_name
FROM Userr
WHERE u_name LIKE '%m%';
select book_name ,book_price 
from book ;
select * 
from author ;
select distinct pub_name 
from publisher ;
SELECT TOP 2 * 
FROM librarian ;

SELECT TOP 5 PERCENT u_phone 
          FROM Userr;
















 