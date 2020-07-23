create procedure sp_InsTableProject_Materials 
@PartNumber nvarchar(30),
@PartNumber_Customer nvarchar(30),
@PartNumber_Project nvarchar(30),
@PartNumber_Material nvarchar(30),
@QtyPart_Project int,
@QtyPart_Material bit,
@Qty int
as
insert into Project_Materials(
PartNumber,
PartNumber_Customer,
PartNumber_Project,
PartNumber_Material,
QtyPart_Project,
QtyPart_Material,
Qty) values(
@PartNumber,
@PartNumber_Customer,
@PartNumber_Project,
@PartNumber_Material,
@QtyPart_Project,
@QtyPart_Material,
@Qty);