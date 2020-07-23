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
'User_Customer',
'Password',
'Business_Name',
'ContactName_Customer',
'Email_Customer',
'Phone_Customer',
'Address_Customer',
'RFC');


insert into Inventory(
IdLocation,
PartNumber_Material,
Qty)
values (
'IdLocation',
'PartNumber_Material',
'Qty');

insert into LocationInventory(
IdLocation,
Rack,
Row,
Col)
values(
'IdLocation',
'Rack',
'Row',
'Col');

insert into Lot(
PartNumber_Project,
Qty,
CreateDate_Lot,
UserCreate,
StartDate_Lot,
EndDate_Lot)
values (
'PartNumber_Project',
'Qty',
'CreateDate_Lot',
'UserCreate',
'StartDate_Lot',
'EndDate_Lot');

insert into Material(
PartNumber_Material,
Length,
Width,
Higth,
Type_Measure,
Type_Material,
Desciption)
values (
'PartNumber_Material',
'Length',
'Width',
'Higth',
'Type_Measure',
'Type_Material',
'Desciption');

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
'IdProcess',
'PartNumber_ProjectMaterial',
'IdStation',
'Description',
'Pictures_Process',
'Documents_PDF',
'UserCreate',
'CreateDate_Process');

insert into Project_Materials(
PartNumber,
PartNumber_Customer,
PartNumber_Project,
PartNumber_Material,
QtyPart_Project,
QtyPart_Material,
Qty) values(
'PartNumber',
'PartNumber_Customer',
'PartNumber_Project',
'PartNumber_Material',
'QtyPart_Project',
'QtyPart_Material',
'Qty');

insert into Projects(
PartNumber_Project,
PartNumber_Project_Customer,
Description,
Customer) values(
'PartNumber_Project',
'PartNumber_Project_Customer',
'Description',
'Customer');

insert into Users(
IdUser,
Password,
Name_User,
Level_User) values(
'IdUser',
'Password',
'Name_User',
'Level_User');

insert into WorkStation(
IdStation,
Description) values(
'IdStation',
'Description');