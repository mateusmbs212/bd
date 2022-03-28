use sprint1;

create table Professor (
idProfessor int primary key auto_increment,
nome varchar (50),
sobrenome varchar (30),
especialidade1 varchar (40),
especialidade2 varchar (40),
fk_Disciplina int,
foreign key (fk_Disciplina) references Disciplina(idDisc) 
);

insert into Professor values
(null, 'Vivian', 'Souza', 'Calculo', 'Bd', 1 ),
(null, 'Frezza', 'Jorge', 'Calculo', 'Fisica', 1 ),
(null, 'Thiago', 'Moreira', 'Dados', 'Socioemocional', 2 ),
(null, 'João', 'Silva', 'Biologia', 'Animais', 3 ),
(null, 'Vanessa', 'Costa', 'plantas', 'Herbologia', 3 ),
(null, 'Maria', 'Santos', 'Geometria', 'Lógica', 1 );

create table Disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar (45)
);

insert into Disciplina values
(null, 'Matemática'),
(null, 'Banco de Dados'),
(null, 'Biologia');

select * from Disciplina;

select * from Professor
	join Disciplina on Disciplina.idDisc = Professor.fk_Disciplina;

select Disciplina.nomeDisc, Professor.nome from Professor
	join Disciplina on Disciplina.idDisc = Professor.fk_Disciplina
    WHERE Disciplina.nomeDisc = 'Banco de Dados';
    
select * from Professor as p
	join  Disciplina as d on d.idDisc = p.fk_Disciplina
    where p.sobrenome = 'Jorge';
    
select Professor.especialidade1, d.nomeDisc from Professor
	join Disciplina as d on d.idDisc = Professor.fk_Disciplina
    where Professor.nome = 'Vivian' order by especialidade1;









