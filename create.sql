create database lviv_croissant
use lviv_croissant
create table customers (
  id_cust int not null primary key,
  name nvarchar(55) not null,
  phone nvarchar(15) not null,
  address nvarchar(50) not null,
  birth date)
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
  dates date not null)
