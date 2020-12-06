create database lviv_croissant
use lviv_croissant
create table customers (
  id_cust int not null primary key,
  name nvarchar(55) not null,
  phone nvarchar(15) not null,
  address nvarchar(50) not null,
  birth date)
  create table shops (  
  id_shops INT not null PRIMARY KEY,
  name VARCHAR(55) NOT NULL,
  address VARCHAR(50) NOT NULL)
create table orders (
  id_order INT not null PRIMARY KEY,
  date DATETIME NOT NULL)
create table products (
  id_prod INT not null PRIMARY KEY,
  name VARCHAR(55) NOT NULL,
  price NUMERIC NOT NULL)
create table ingredients (
  id_ingr INT not null PRIMARY KEY,
  name NVARCHAR(55) NOT NULL,
  price NUMERIC NOT NULL)
create table head_office (
  id_head INT not null PRIMARY KEY,
  name VARCHAR(55) NOT NULL,
  phone VARCHAR(15) NOT NULL,
  address VARCHAR(50) NOT NULL,
  bank_name VARCHAR(50) NOT NULL,
  bank_no VARCHAR(30) NOT NULL)
create table warehouses (
  id_war INT not null PRIMARY KEY,
  name VARCHAR(55) NOT NULL,
  address VARCHAR(50) NOT NULL)
create table contractors (
  id_contr INT not null PRIMARY KEY,
  name VARCHAR(55),
  phone VARCHAR(14) NOT NULL,
  address VARCHAR(50) NOT NULL,
  bank_name VARCHAR(50) NOT NULL,
  bank_no VARCHAR(30) NOT NULL);
create table salins (
  id_salins int not null primary key,
  dates date not null)create table debts 
  (id_debts int not null primary key,
  dates date not null,
  summ numeric not null,
  id_contr int not null foreign key
  references contractors on delete no action,
  id_salins int not null foreign key
  references salins on delete no action)
create table debts_repayment (
  id_repay INT not null primary key,
  dates date not null,
  summ numeric not null,
  contract_bank_no nvarchar(30),
  id_head int not null foreign key
  references head_office on delete no action,
  id_debts int not null foreign key
  references debts on delete no action)
create table salin_details (
  id_det int not null primary key,
    qty numeric not null,
    weight numeric not null,
    price numeric not null,
  id_salins int not null foreign key
  references salins on delete no action,
  id_ingr int not null foreign key
  references ingredients on delete no action)
create table movings (
  id_mov INT not null PRIMARY KEY,
  date DATE NOT NULL,
  id_war int not null foreign key
  references warehouses on delete no action)
create table moving_details (
  id_movdet INT not null PRIMARY KEY,
  qty INT NOT NULL,
  price NUMERIC NOT NULL,
    id_mov int not null foreign key
  references movings on delete no action,
  id_ingr int not null foreign key
  references ingredients on delete no action)
create table staff (
  id_staff INT not null PRIMARY KEY,
  name NVARCHAR(55) NOT NULL,
  phone NVARCHAR(14),
  address NVARCHAR(50),
  position NVARCHAR(20),
  salary NUMERIC(15) NOT NULL,
  id_shops int not null foreign key
  references shops on delete no action)
create table order_details (
  id_odet INT not null PRIMARY KEY,
  qty INT,
  id_prod int not null foreign key
  references products on delete no action,
  id_order int not null foreign key
  references orders on delete no action)
create table composition_of_croissant (
  id_comp INT not null PRIMARY KEY,
    qty INT,
  weight NUMERIC(10,2),
  id_prod int not null foreign key
  references products on delete no action,
  id_ingr int not null foreign key
  references ingredients on delete no action)
create table salouts (
  id_salouts INT not null PRIMARY KEY,
    sum NUMERIC,
  id_cust int not null foreign key
  references customers on delete no action,
  id_shops int not null foreign key
  references shops on delete no action,
  id_order int not null foreign key
  references orders on delete no action)
alter table composition_of_croissant
  add constraint ch_composition check (weight>=0)
