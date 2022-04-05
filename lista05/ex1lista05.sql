create database pet;
use pet;

create table cliente (
	idCliente int primary key auto_increment,
    nome varchar(45),
    sobrenome varchar(40),
    telFixo varchar(8),
    telCelular varchar(9),
    cep varchar(8),
    endereço varchar(45),
    numero char(4)
);

insert into cliente values
	(null, 'Mateus', 'Macedo', 26016286, 97732607, 03172010, 'rua siqueira bueno', 2162),
	(null, 'João', 'Macedo', 27015286, 98832607, 02175010, 'av paulista', 335),
	(null, 'Nicolas', 'silva', 29015273, 95432127, 01879120, 'rua borges', 477)
;
select * from cliente;

create table pet (
	idPet int primary key auto_increment,
    tipo varchar(15),
    nomePet varchar(30),
    raça varchar(20),
    dtNasc date,
    fkcliente int,
    foreign key (fkcliente) references cliente (idCliente)
);
alter table pet auto_increment = 101;

insert into pet (idPet, tipo, nomePet, raça, dtNasc, fkcliente) values
	(null, 'cachorro', 'Marcola', 'shitzu', '2021-10-12', 1),
    (null,'gato', 'neiran', 'shitzu', '2019-09-10', 1),
    (null,'cachorro', 'biruleibe', 'husky', '2017-03-25', 2),
    (null,'papagaio', 'Loro', 'papagaio', '2016-08-02', 3);
    
select * from pet;
select * from cliente join pet
on idCLiente = fkcliente;

alter table cliente modify nome varchar(60);

select * from pet order by nomePet;
select * from cliente order by endereço desc;

select * from pet where nomePet like 'Marcola';

select * from cliente where nome like 'Macedo';

update cliente set TelFixo = 21015290 where idCliente = 2;
select * from cliente;

select * from cliente join pet
on idCLiente = fkcliente where nome like 'Mateus';

delete from pet where idPet = 102;
select * from pet;

drop table Cliente;
drop table pet;





