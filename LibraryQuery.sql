create database Person
use Library

create table LibraryDirector
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarch\ar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table Archivist
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table Librarian
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table LibraryAide
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table LibraryAssistant
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table MedicalLibrarian
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table LibraryClerk
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table LibraryTechnician
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table LibraryMediaSpecialist
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table AssistantLibrarian
( 
ID int Primary key NOT NULL ,
Name nvarchar(max) NOT NULL ,
Age int NOT NULL check (Age > 18) ,
Gender varchar(5) NOT NULL default 'Male' ,
Address nvarchar(max) ,
City nvarchar(max) default 'Cairo' ,
PhoneNumber char (15) ,
)

create table Boxes
( 
ID int Primary key NOT NULL ,
Time char(8) NOT NULL ,
Date char(8) NOT NULL ,
)

create table Books
( 
ID int Primary key NOT NULL ,
Type char(8) NOT NULL ,
)

-------  TO UPDATE THE TABLE -------
Alter table AssistantLibrarian
Add LibrarianID int foreign key references Librarian (ID)
Add ArchivistID int foreign key references Archivist (ID)
Add LibraryDirectorID int foreign key references LibraryDirector (ID)
Add Primary key (ID)

--- Update Datatype for Column ---
Alter table AssistantLibrarian
Alter Column Gender varchar(6) NOT NULL

--- Update Data for Column ---
update LibraryDirector set Name = 'Zak' where Name='Mostafa'
------------------------------------------------------

-------  TO Delete THE TABLE -------
Alter table LibraryDirector
drop column Ahmed

drop table Boxes
------------------------------------------------------

-------  TO Select THE TABLE/ Column -------
Select * from LibraryDirector
Select ID from LibraryDirector
Select Name from Archivist order by name desc
Select ID from Archivist order by ID
Select ID from Archivist order by ID desc
Select distinct Name from Archivist  --Not Repeated Names 
Select top 5 * from Archivist order by Name
Select * from LibraryDirector where ID = 1
Select LibraryDirectorID from Archivist
Select Name from Archivist where ID = 101 or ID = 105
Select * from Archivist where ID = 208 or ID = 105
Select ID,Name from Archivist where ID = 101 and Name = 'Ahmed'
Select * from Archivist where ID != 101 and ID <> 102
------------------------------------------------------


-------  TO Join THE TABLE/ Column -------
select Librarian.Name , Librarian.ID , Books.ID from Books right join Librarian on Librarian.ID = Books.ID
select * from LibraryDirector inner join Librarian on Librarian.ID = LibraryDirector.ID
------------------------------------------------------

-------  TO Insert THE TABLE/ Column -------
insert into Librarian values (307 , 'Alex' , 90 , 'Felmal' , 'St. Pieno 55' , 'Honkong' , NULL ,1 , 201)
--insert into Librarian buil (ID , Name , Address , Age , Gender , City , PhoneNumber) values (307 , 'Alex' , 'St. P 74' , 45 , 'Male' , 'China' , NULL ,2 , 205)
------------------------------------------------------

-------  TO Delete THE Column -------
delete from Librarian where ID = 307
------------------------------------------------------
