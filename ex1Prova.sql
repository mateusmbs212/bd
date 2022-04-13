create database AlunoProjeto;
use AlunoProjeto;

create table projeto(
	idProjeto int primary key auto_increment,
    nomeprojeto varchar(45),
    descrição varchar(45)
);

create table aluno(
	idAluno int primary key auto_increment,
    nome varchar(45),
    telefone varchar(45),
    fkprojeto int, foreign key (fkprojeto) references projeto (idProjeto),
    fkrepresentante int, foreign key (fkrepresentante) references aluno (idAluno)
);

create table acompanhante(
	idAcompanhante int auto_increment,
    fkaluno int, primary key (idAcompanhante, fkaluno),
    foreign key (fkaluno) references aluno (idAluno),
    nome varchar(45),
    relação varchar(45)
);

insert into projeto values
	(null, 'Biotec', 'plantação de soja'),
	(null, 'AqcuaTec', 'monitoramento de aquario'),
	(null, 'fishs', 'transporte de pescados')
    ;
    
insert into aluno values
		(null, 'Mateus', '2601-6286', 1, 1),
		(null, 'Raul', '2602-6287', 1, 1),
		(null, 'Gustavo', '2603-6288', 2, 2),
		(null, 'Dillan', '2604-6280', 2, 2),
		(null, 'Diogo', '2605-6280', 3, 2)
        ;
        
 insert into acompanhante values
	(null, 1, 'Liana', 'Mãe'),
	(null, 2, 'Lais', 'namorada'),
	(null, 3, 'Jorge', 'primo'),
	(null, 4, 'vivian', 'avó'),
	(null, 5, 'Carlos', 'pai')
    ;
    
select * from projeto;
select * from aluno;
select * from acompanhante;

select * from aluno join projeto on projeto.idProjeto = aluno.fkprojeto;
select * from aluno join acompanhante on aluno.idAluno = acompanhante.fkaluno;
select * from aluno as a join aluno on aluno.idAluno = aluno.fkrepresentante;

select * from aluno join projeto on projeto.idProjeto = aluno.fkprojeto where nomeprojeto like 'Biotec';
select * from aluno join projeto on projeto.idProjeto = aluno.fkprojeto join acompanhante on aluno.idAluno = acompanhante.fkaluno;
select * from aluno join aluno as a on aluno.idAluno = a.fkrepresentante;