create procedure sp_InsTableWorkStation 
@IdStation nvarchar(45),
@Description nvarchar(250)
as
insert into WorkStation(
IdStation,
Description) values(
@IdStation,
@Description);