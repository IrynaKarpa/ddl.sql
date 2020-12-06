create database lviv_croissant
use lviv_croissant
create table customers (
  id_cust int not null primary key,
  name nvarchar(55) not null,
  phone nvarchar(15) not null,
  address nvarchar(50) not null,
  birth date)
  
