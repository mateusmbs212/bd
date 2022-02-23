create database sprint1;
use sprint1;

create table atleta (
idatleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdmedalha int
);

 
insert into atleta values 
(1, 'mateus','natação', 3),
(2, 'raul','volei', 1),
(3, 'joão','futebol', 2),
(4, 'gustavo','basquete', 2),
(5, 'diogo','handball', 3)
;

update atleta set qtdmedalha = 4 where idatleta = 1;
update atleta set qtdmedalha = 3 where idatleta in (2,3);
select * from atleta;

alter table atleta add column datanasc date;

update atleta set datanasc = '1999-03-10' where idatleta = 1;
update atleta set datanasc = '2000-06-07' where idatleta = 2;
update atleta set datanasc = '2002-03-15' where idatleta = 3;
update atleta set datanasc = '1997-08-30' where idatleta = 4;
update atleta set datanasc = '1980-07-31' where idatleta = 5;

delete from atleta where idatleta = 1;

SELECT nome FROM atleta WHERE modalidade <>'natação';
SELECT * FROM atleta WHERE qtdmedalha >=3;
alter table atleta modify column modalidade varchar(60);
desc atleta;

drop table atleta;











