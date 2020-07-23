create procedure sp_InsTableUsers 
@IdUser nvarchar(25),
@Password nvarchar(25),
@Name_User nvarchar(80),
@Level_User nvarchar(2)
as
insert into Users(
IdUser,
Password,
Name_User,
Level_User) values(
@IdUser,
@Password,
@Name_User,
@Level_User);