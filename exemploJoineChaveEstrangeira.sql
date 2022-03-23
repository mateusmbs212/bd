use faculdade;

create table sala (
	idSala int primary key auto_increment,
    lado varchar(45),
    andar int
);
insert into sala (lado, andar) values
('A', 4),
('B', 3),
('C', 6);

create table notebook (
	idnotebook int primary key auto_increment,
    faculdade varchar(45),
    unidade varchar(45),
    patrimonio varchar(45),
    so1 varchar(45),
    so2 varchar(45)
);
insert into notebook (faculdade, unidade, patrimonio, so1, so2) values
('sptech','hadock','2202','windows','linux'),
('sptech','hadock','2100','mac OS','windows'),
('sptech','hadock','2205','ubuntu','mac OS'),
('sptech','hadock','2030','windows','mac OS'),
('sptech','hadock','2103','linux','windows');

alter table notebook add column fksala int;
alter table notebook add foreign key (fksala) references sala(idsala);
select * from notebook;

update notebook set fksala = 1 where idnotebook = 1;
update notebook set fksala = 3 where idnotebook = 5;

select * from notebook
join sala on sala.idsala = notebook.fksala;

select andar, lado from sala;

-- concatena duas colunas
select concat(andar, lado) from sala;

-- aliases = as "apelido"
select concat(andar, lado)as 'Nome Sala' from sala;
select * from notebook as note
join sala as sl on sl.idsala = note.fksala;


 

