create database sprint1;
use sprint1;

create table musica (
	idfilme char(40) primary key,
    titulo varchar(40),
    artista varchar(40),
    genero varchar(40)
);

select * from musica;
insert into musica values
	('30081', 'xote de alegria', 'fala mansa', 'forro'),
    ('30082', 'se for amor', 'joão gomes', 'forro'),
    ('30083', 'jacaré que dorme', 'kayblack', 'trap'),
    ('30084', 'm4', 'teto', 'trap'),
    ('30085', 'supera', 'marilia mendonça', 'sertanejo'),
    ('30086', 'meu lugar', 'arlindo cruz', 'samba'),
    ('30087', 'naquela mesa', 'nelson gonçalves', 'samba');

select * from musica;
select titulo, artista from musica;
select * from musica where genero like 'forro';
select titulo from musica order by titulo desc;
select * from musica where nome like '%s%';
select * from musica where nome like 'a%';
select * from musica where nome like '%e_';
select * from musica where nome like '_a%';
drop table musica;