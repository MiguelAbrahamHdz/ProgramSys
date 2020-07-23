create procedure sp_InsTableLot 
@PartNumber_Project nvarchar(30),
@Qty int,
@UserCreate nvarchar(25),
@StartDate_Lot date,
@EndDate_Lot date
as
insert into Lot(
PartNumber_Project,
Qty,
CreateDate_Lot,
UserCreate,
StartDate_Lot,
EndDate_Lot)
values (
@PartNumber_Project,
@Qty,
GETDATE(),
@UserCreate,
@StartDate_Lot,
@EndDate_Lot);