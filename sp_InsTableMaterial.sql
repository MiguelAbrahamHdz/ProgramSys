create procedure sp_InsTableMaterial 
@PartNumber_Material nvarchar(30),
@Length decimal(16,6),
@Width decimal(16,6),
@Higth decimal(16,6),
@Type_Measure nvarchar(5),
@Type_Material nvarchar(50),
@Desciption nvarchar(250)
as
insert into Material(
PartNumber_Material,
Length,
Width,
Higth,
Type_Measure,
Type_Material,
Desciption)
values (
@PartNumber_Material,
@Length,
@Width,
@Higth,
@Type_Measure,
@Type_Material,
@Desciption);