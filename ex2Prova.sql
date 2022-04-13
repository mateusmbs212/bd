 create database AlunoProjeto;
use AlunoProjeto;

create table organizador(
	idOrganizador int primary key auto_increment,
    fkexperiente int, foreign key (fkexperiente) references organizador (idOrganizador),
    nome varchar(45),
    rua varchar(45),
    bairro varchar(45),
    email varchar(45)
)auto_increment = 30;

create table Campanha (
	idCampanha int auto_increment,
    fkorganizador int, primary key (idCampanha, fkorganizador), 
    foreign key (fkorganizador) references organizador (idOrganizador),
    categoria varchar(45),
    instituição varchar(45),
    dtFinal date
)auto_increment= 500;
 
insert into organizador values
	(null, null, 'Mateus', 'rua jose', 'mooca', 'teteu@email'),
	(null, 30, 'Gustavo', 'rua maria', 'sapopemba', 'gustavo@email'),
	(null, 30, 'Diogo', 'rua luiza', 'santana', 'diogo@email'),
	(null, 30, 'joão', 'rua clara', 'belém', 'joão@email')
    ;
    
insert into campanha values
		(null, 30, 'mascara', 'sptech', '2022-12-15'),
		(null, 31, 'agasalho', 'AACD', '2022-07-16'),
		(null, 32, 'cobertor', 'globo', '2022-11-17'),
		(null, 33, 'alimento', 'jorge', '2023-10-18')
        ;
        
select * from organizador;
select * from campanha;

select * from organizador join campanha on organizador.idOrganizador = campanha.fkorganizador;
select * from organizador join campanha on organizador.idOrganizador = campanha.fkorganizador where nome like 'Mateus'; 

select * from organizador join organizador as o on organizador.idOrganizador = o.fkexperiente;       
        

