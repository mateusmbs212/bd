create database sprint1;
use sprint1;

create table atleta (
	idatleta char(5) primary key,
    nome varchar(40),
    modalidade varchar(40),
    qtdmedalha char(2)
);

select * from atleta;
insert into atleta values
	('30061', 'Renan', 'futebol', '6'),
    ('30062', 'Claudia', 'Natação', '8'),
    ('30063', 'Rodrigo', 'Atletismo', '7'),
    ('30064', 'Daniela', 'Natação', '10'),
    ('30065', 'Meire', 'futebol', '4'),
    ('30066', 'Isadora', 'Atletismo', '5');

select * from atleta;
select nome, qtdmedalha from atleta;
select * from atleta where modalidade like 'Natação';
select modalidade from atleta order by modalidade;
select qtdmedalha from atleta order by qtdmedalha desc;
select * from atleta where nome like '%s%';
select * from atleta where nome like 'd%';
select * from atleta where nome like '%o';
select * from atleta where nome like '%r_';
drop table atleta;



