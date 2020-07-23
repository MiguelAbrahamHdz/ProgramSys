Create table Material(
PartNumber_Material nvarchar(30) not null primary key,
Length decimal (16,6) not null,
Width decimal (16,6) not null,
Higth decimal (16,6) not null,
Type_Measure nvarchar(5) not null,
Type_Material nvarchar(50) not null,
Desciption nvarchar(250) not null
);

create table Users(
IdUser nvarchar(25) not null primary key,
Password nvarchar(25) not null,
Name_User nvarchar(80) not null,
Level_User nvarchar(2) not null
);

create table Customers(
User_Customer nvarchar(25) not null primary key,
Password nvarchar(25) not null,
Business_Name nvarchar(80) not null,
ContactName_Customer nvarchar(80) not null,
Email_Customer nvarchar(100) not null,
Phone_Customer nvarchar(25) not null,
Address_Customer nvarchar(80) not null,
RFC nvarchar(25) not null,
);

Create table Projects(
PartNumber_Project nvarchar(30) not null primary key,
PartNumber_Project_Customer nvarchar(30) not null,
Desciption nvarchar(250) not null,
Customer nvarchar(25) not null,
constraint FkProjects_Customer foreign key(Customer) references Customers(User_Customer)
);

Create table Project_Materials(
PartNumber nvarchar(30) not null primary key,
PartNumber_Customer nvarchar(30),
PartNumber_Project nvarchar(30) not null,
PartNumber_Material nvarchar(30) not null,
QtyPart_Project int not null,
QtyPart_Material bit not null,
Qty int,
constraint FkProjectMaterials_PartNumber_Proyect foreign key(PartNumber_Project) references Projects(PartNumber_Project),
constraint FkProjectMaterials_PartNumber_Material foreign key(PartNumber_Material) references Material(PartNumber_Material)
);

Create table Lot(
IdLot int not null primary key IDENTITY,
PartNumber_Project nvarchar(30) not null,
Qty int not null,
CreateDate_Lot Date not null,
UserCreate nvarchar(25) not null,
StartDate_Lot Date not null,
EndDate_Lot Date not null,
constraint FkLot_Project_PartNumber foreign key(PartNumber_Project) references Projects(PartNumber_Project),
constraint FkLot_Users_User foreign key(UserCreate) references Users(IdUser)
);

Create table WorkStation(
IdStation NVARCHAR(45) not null primary key,
Description NVARCHAR(250) not null
);

Create table Process(
IdProcess nvarchar(30) not null PRIMARY KEY,
PartNumber_ProjectMaterial nvarchar(30) not null,
IdStation NVARCHAR(45) not null,
Description nvarchar(500) not null,
Pictures_Process nvarchar(250) not null,
Documents_PDF nvarchar(250) not null,
UserCreate nvarchar(25) not null,
CreateDate_Process Date not null,
constraint FkProcess_Users_User foreign key(UserCreate) references Users(IdUser),
constraint FkProcess_WorkStation_IdStation foreign key(IdStation) references WorkStation(IdStation),
constraint FkProcess_ProjectMaterial_PartNumber foreign key(PartNumber_ProjectMaterial) references Project_Materials(PartNumber)
);

create table LocationInventory(
IdLocation nvarchar(15) not null primary key,
Rack NVARCHAR(15),
Row NVARCHAR(15),
Col NVARCHAR(15)
);

create table Inventory(
IdLocation nvarchar(15) not null,
PartNumber_Material nvarchar(30) not null,
Qty int not null,
constraint FkInventory_LocationInventory_Location foreign key(IdLocation) references LocationInventory(IdLocation),
constraint FkInventory_Material_PartNumber foreign key(PartNumber_Material) references Material(PartNumber_Material),
);