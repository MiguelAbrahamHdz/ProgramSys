create procedure sp_InsTableProcess 
@IdProcess nvarchar(30),
@PartNumber_ProjectMaterial nvarchar(30),
@IdStation nvarchar(45),
@Description nvarchar(500),
@Pictures_Process nvarchar(250),
@Documents_PDF nvarchar(250),
@UserCreate nvarchar(25)
as
insert into Process(
IdProcess,
PartNumber_ProjectMaterial,
IdStation,
Description,
Pictures_Process,
Documents_PDF,
UserCreate,
CreateDate_Process)
values(
@IdProcess,
@PartNumber_ProjectMaterial,
@IdStation,
@Description,
@Pictures_Process,
@Documents_PDF,
@UserCreate,
GETDATE());