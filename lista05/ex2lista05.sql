use sprint2;

create table Pessoa (
	idPessoa int primary key auto_increment,
    nome varchar(45),
    dtNasc date,
    profissão varchar(45)
);

insert into Pessoa values
	(null, 'Mateus', '2004-06-30', 'desenvolvedor'),
	(null, 'Liana', '1967-12-21', 'Rh'),
	(null, 'Marco', '1957-06-12', 'representante'),
	(null, 'Adriana', '1974-09-10', 'Rh');
select * from Pessoa;

create table Gasto (
	idgasto int primary key auto_increment,
    dataCompra date,
    valor double,
    descrição varchar(45),
    fkpessoa int,
    foreign key (fkpessoa) references Pessoa (idPessoa)
);

insert into gasto (idgasto, dataCompra, valor, descrição, fkpessoa)values
	(null, '2022-04-05', 15.50, 'mascara descartavel',1),
	(null, '2022-03-16', 227.30, 'fifa 22', 1),
	(null, '2022-03-25', 150.35, 'conta de luz', 2),
	(null, '2022-04-05', 20.00, 'prato feito',3),
	(null, '2022-02-10', 1500.50, 'geladeira',4);

select * from gasto;

select * from Pessoa where profissão like 'Rh';
select * from gasto where descrição like 'prato feito';

select * from pessoa join gasto
on idPessoa = fkpessoa;

update Pessoa set profissão = 'gerente' where idPessoa = 3;
select * from Pessoa;

update gasto set dataCompra = '2022-03-10' where idgasto = 5;
select * from gasto;

DELETE FROM gasto WHERE dataCompra = '2022-03-16';
select * from gasto;






