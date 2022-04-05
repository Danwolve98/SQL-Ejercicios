CREATE DATABASE IF NOT exists EMPRESA;
use Empresa;

create table oficinas(
oficina int,
ciudad varchar(20),
superficie int,
ventas double,
primary key (oficina));

create table empleados(
numEmp int,
nombre varchar(20),
edad int,
oficina int,
puesto varchar(20),
contrato Date,
primary key (numEmp),
foreign key (oficina) references oficinas(oficina));