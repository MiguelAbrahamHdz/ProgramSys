create procedure sp_InsTableProjects 
@PartNumber_Project nvarchar(25),
@PartNumber_Project_Customer nvarchar(30),
@Description nvarchar(250),
@Customer nvarchar(25)
as
insert into Projects(
PartNumber_Project,
PartNumber_Project_Customer,
Description,
Customer) values(
@PartNumber_Project,
@PartNumber_Project_Customer,
@Description,
@Customer);