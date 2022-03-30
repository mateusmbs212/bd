create database pet;
use pet;

create table cliente (
	idCliente int primary key auto_increment,
    nome varchar(45),
    sobrenome varchar(40),
    telFixo varchar(8),
    telCelular varchar(9),
    cep varchar(8),
    endereço varchar(45)
);

insert into cliente values
	(null, 'Mateus', 'Macedo', 26016286, 97732607, 03172010, 'rua siqueira bueno'),
	(null, 'João', 'Macedo', 27015286, 98832607, 02175010, 'av paulista')
;
select * from cliente;

create table pet (
	idPet int primary key auto_increment,
    tipo varchar(15),
    nome varchar(30),
    raça varchar(20),
    dtNasc date,
    fkcliente int,
    foreign key (fkcliente) references cliente (idCliente)
);
alter table pet auto_increment = 101;




