CREATE DATABASE OkazLibrary
GO
use OkazLibrary 
GO

--------------------------------------------
create table [manager]
(
M_ID int primary key NOT NULL IDENTITY,
Name varchar(max) NOT NULL,
Email varchar(30) NOT NULL unique,
[Phone Number] varchar(11) NOT NULL,
[admin] int NOT NULL check([admin]=0 OR [admin]=1), -- if 0 false (not admin) - 1 true
);

create table [book]
(
book_ID int PRIMARY KEY IDENTITY,
Name varchar(max) NOT NULL,
Book_Cover image NULL,
Lock int  NOT NULL check(Lock=0 OR Lock=1), -- 0 false , 1 true,
Category varchar(max) NOT NULL,
Available int NOT NULL check(Available=0 OR Available=1),	--if the book delivered to the library or not
Details text NOT NULL,
);
create table [users]
(
U_ID int PRIMARY KEY IDENTITY,
[Phone Number] varchar(11) NOT NULL,
Email varchar(30) NOT NULL,
);

create table [request]
(
book_ID int NOT NULL,
U_ID int NOT NULL,
[request code] varchar(7) NOT NULL,
R_date date NOT NULL,
Name varchar(max),
primary key(book_ID,U_ID,[request code],R_date),
Foreign Key (U_ID) references [users] (U_ID) ON DELETE CASCADE,
Foreign Key (book_ID) references [book] (book_ID) ON DELETE CASCADE,
);


create table [User_book]
(
book_ID int NOT NULL,
U_ID int NOT NULL,
[status] varchar(6) NOT NULL,
S_date date NOT NULL,
Name varchar(max),
primary key(book_ID,U_ID,[status],S_date),
Foreign Key (U_ID) references [users] (U_ID) ON DELETE CASCADE,
Foreign Key (book_ID) references [book] (book_ID) ON DELETE CASCADE,
);

