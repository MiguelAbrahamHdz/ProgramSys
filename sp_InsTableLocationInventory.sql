create procedure sp_InsTableLocationInventory 
@IdLocation nvarchar(15),
@Rack nvarchar(15),
@Row nvarchar(15),
@Col nvarchar(15)
as
insert into LocationInventory(
IdLocation,
Rack,
Row,
Col)
values(
@IdLocation,
@Rack,
@Row,
@Col);