create database revisão;
use revisão;

-- Relacionamento 1 pra 1

create table motorista (
	id int primary key auto_increment,
    nome varchar(45),
    cnh char(11),
    validade date,
    categoria char(4)
);

insert into motorista values
	(null, 'Vivian', '12345678900', '2023-10-13', 'B');
    
 select * from motorista;
 
 create table carro (
	idCarro int primary key auto_increment,
    modelo varchar(45),
    placa char(7),
    estado char(2),
    fkMotora int,
    foreign key (fkMotora) references motorista(id)
    );
    
    insert into carro values
		(null, 'i30', 'abc1234', 'SP', 1);

select * from carro;

-- relacionamento 1 pra N

create table carroAuto (
	id int primary key auto_increment,
	modelo varchar(45),	
        placa char(7),
    estado char(2)
); 

insert into carroAuto values
	(null, 'Jetta', 'DEF5678', 'SC');

select * from carroAuto;

create table motoraAuto (
	idMotora int auto_increment,
    fkCarro int,
    foreign key (fkCarro) references carroAuto(id),
    primary key (idMotora, fkCarro),
    cnh char(11),
    validade date,
    categoria char(4)
    );
    
 alter table motoraAuto add nome varchar(45) after fkCarro;
 
 insert into motoraAuto values
	(null, 1, 'Franklin', '00987654321', '2023-12-18', 'B');
    
select * from motoraAuto;

select motoraAuto.nome, carroAuto.modelo from motoraAuto
		join carroAuto on idMotora = fkCarro;
        
 -- Recursividad e relaconamento na mesma tabela
 
 create table motora (
	idMotora int primary key auto_increment,
    nome varchar(45),
    cnh char(11),
    validade date,
    categoria char(4),
    fkCondPrincipal int, 
    foreign key (fkCondPrincipal) references motora(idMotora)
    );
    
    insert into motora (nome) values
		('SPtech');
        
    insert into motora values
		(null,'Rafael', '13567890001', '2023-01-24', 'AB', null);  
        
select * from motora;

update motora set fkCondPrincipal = 2 where idMotora = 1; 

select * from motora as motorista join motora as condutor
		on condutor.idMotora= motorista.fkCondPrincipal;
        
select motorista.nome, condutor.nome
		from motora as condutor join motora as motorista
		on condutor.idMotora = motorista.fkCondPrincipal;
        
select * from motora as Condutor join motora as Motorista
		on condutor.idMotora = motorista.fkCondPrincipal;	
	
select concat ('A empresa', motorista.nome, 'possui como principal condutor o motorista', condutor.nome)
	from motora motorista join motora condutor
    on motorista.fkCondPrincipal = condutor.idMotora;
    
-- Relacionamento N pra N

create table motoraAluguel (
	id int primary key auto_increment,
	nome varchar(45),
	cnh char(11),
	validade date,
	categoria char(4)
        );
        
insert into motoraAluguel values
		(null, 'Vivian', '12345678900', '2023-10-13', 'B');
        
create table carroAluguel (
		idCarro int primary key auto_increment,
        modelo varchar(45),
        placa char(7),
        estado char(2)
        )auto_increment = 10000;
        
insert into carroAluguel values
	(null, 'i30', 'ABC1234', 'SP'),
	(null, 'jetta', 'DEF5678', 'SC');
    
select * from carroAluguel;

create table aluguel (
	idAluguel int auto_increment,
    fkMotora int,
    foreign key (fkMotora) references motoraAluguel(id),
    fkCarro int,
    foreign key (fkCarro) references carroAluguel (idCarro),
    primary key (idAluguel, fkMotora, fkCarro),
    dtInicio datetime default current_timestamp,
    dtFim date,
    valor decimal(10,2),
    check (valor >= 0)
    );
    
insert into aluguel (fkMotora, fkCarro, valor) values
	(1, 10000, 10.99);
    
 select * from aluguel;
 
 select * from motoraAluguel join aluguel
	on id = fkMotora
    join carroAluguel
    on idCarro = fkCarro;
        





  
    
    
    