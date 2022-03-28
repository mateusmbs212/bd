create database sprint1;
use sprint1;

create table filme (
	idfilme char(50) primary key,
    titulo varchar(40),
    diretor varchar(40),
    genero varchar(40)
);

select * from filme;
insert into filme values
	('30071', 'bruxa de blair', 'eduardo sanchez', 'terror'),
    ('30072', 'massacre da serra eletrica', 'jonathan liebesman', 'terror'),
    ('30073', 'barraca do beijo', 'vince marcello', 'romance'),
    ('30074', 'velozes e furiosos', 'justin lin', 'ação'),
    ('30075', 'a orfã', 'gaume collrt', 'suspense'),
    ('30076', 'gente grande', 'dennis dugan', 'comédia'),
    ('30077', 'gente grande 2', 'dennis dugan', 'comédia');

select * from filme;
select titulo, diretor from filme;
select genero from filme order by genero;
select * from filme where diretor like 'dennis dugan';
select titulo from filme order by titulo desc;
select * from filme where nome like '%g%';
select * from filme where nome like 'b%';
select * from filme where nome like '%a';
select * from filme where nome like '_a%';
drop table filme;



