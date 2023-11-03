create database QuanLyBanHang;
use QuanLyBanHang;

create table Customer(
cId int not null auto_increment primary key,
cName varchar(50) not null,
cAge int not null
);

create table `Order`(
oId int not null auto_increment primary key,
cId int not null,
oDate date,
oTotalPrice float,
foreign key(cId) references Customer(cId)
);

create table Product(
pId int not null primary key,
pName varchar(50) not null,
pPrice float
);

create table OrderDetail(
oId int not null ,
pId int not null ,
odQTY varchar(50),
foreign key (oId) references `Order`(oId),
foreign key (pId) references `Product`(pId)
);