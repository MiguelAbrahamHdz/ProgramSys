create procedure sp_InsTableCustomer 
@User_Customer nvarchar(25),
@Password nvarchar(25),
@Business_Name nvarchar(80),
@ContactName_Customer nvarchar(80),
@Email_Customer nvarchar(100),
@Phone_Customer nvarchar(25),
@Address_Customer nvarchar(80),
@RFC nvarchar(25)
as
insert into Customers(
User_Customer,
Password,
Business_Name,
ContactName_Customer,
Email_Customer,
Phone_Customer,
Address_Customer,
RFC)
values (
@User_Customer,
@Password,
@Business_Name,
@ContactName_Customer,
@Email_Customer,
@Phone_Customer,
@Address_Customer,
@RFC);