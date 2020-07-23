create procedure sp_InsTableInventory 
@IdLocation nvarchar(25),
@PartNumber_Material nvarchar(30),
@Qty int
as
insert into Inventory(
IdLocation,
PartNumber_Material,
Qty)
values (
@IdLocation,
@PartNumber_Material,
@Qty);