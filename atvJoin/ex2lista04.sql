create database sprint2;
use sprint2;
create table Curso (
idCurso int primary key auto_increment,
nome varchar (50),
sigla varchar (3),
coordenador varchar (50)
);
insert into Curso values
(null, 'Ciencia da Computação', 'CCO', 'Thiago'),
(null, 'Analise e Desenvolvimento de Sistemas', 'ADS', 'Frezza'),
(null, 'Sistemas da informação', 'SI', 'Mateus');

create table Matérias (
idMateria int primary key auto_increment,
nomeMateria varchar (50),
fkCurso int,
foreign key (fkCurso) references Curso(idCurso)
);

insert into Matérias values
(null, 'Algoritmo', 2),
(null, 'Banco de Dados', 2),
(null, 'Estrutura de Dados e Paradigmas', 3),
(null, 'Arquitetura Computacional', 1),
(null, 'Engenharia de Software', 3),
(null, 'Sistemas Operacionais', 1);
    
select * from Matérias
	join Curso on Curso.idCurso = Matérias.fkCurso;
    
select * from Matérias
	join Curso on Curso.idCurso = Matérias.fkCurso
    where Curso.nome = 'Analise e Desenvolvimento de Sistemas';
    
alter table Matérias add column Dificuldade varchar (30) constraint chkDificuldade check 
		(dificuldade = 'fácil' or dificuldade = 'dificil' or dificuldade = 'médio');