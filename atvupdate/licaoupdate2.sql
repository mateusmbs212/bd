use sprint1;

create table musica (
idmusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar (40)
);

 
insert into musica values 
(1, 'menor magrin','kyan','trap'),
(2, 'junho de 94','djonga', 'rap'),
(3, 'maquina do temppo','matue', 'trap'),
(4, 'pandemia','mc kevin', 'funk'),
(5, 'jacaré que dorme','kayblack', 'trap'),
(6, 'sou feliz assim','ferrugem', 'pagode'),
(7, 'meu lugar','arlindo cruz', 'samba')
;

select * from musica;
desc musica;

alter table musica add column curtidas int;
alter table musica modify column artista varchar(80);

update musica set curtidas = 4 where idmusica = 1;
update musica set curtidas = 20 where idmusica in (2,3);
update musica set curtidas = 22 where idmusica in (5);
update musica set titulo = 'fio a fio' where idmusica = 5;

delete from musica where idmusica = 4;

SELECT titulo, genero FROM musica WHERE genero <>'funk';
SELECT * FROM musica WHERE curtidas >= 20;

desc musica;
