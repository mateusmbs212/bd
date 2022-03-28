use sprint1;

create table filme (
idfilme int primary key auto_increment,
titulo varchar(50),
genero varchar (40),
diretor varchar (40)
);

 
insert into filme values 
(null, 'gente grande','humor','Dennis Dugan'),
(null, 'gente grande 2','humor','Dennis Dugan'),
(null, 'velozes e furiosos','ação','Rob Cohen'),
(null, 'scape room 2','suspense','adam robitel'),
(null, 'invocação do mal','terror','james wan'),
(null, 'massacre da serra eletrica','terror','tobe hopper'),
(null, 'titanic','romance','james cameron')
;

select * from filme;
desc filme;

alter table filme add column protagonista varchar (40);
alter table filme modify column diretor varchar(150);

update filme set diretor = 'james cameron' where idfilme= 5;
update filme set diretor = 'tarantino' where idfilme in (2, 7);
update filme set titulo = 'sabrina' where idfilme = 6;
update filme set protagonista = 'nicolas cage' where idfilme in (1, 2, 3, 4, 5, 6, 7);

delete from filme where idfilme = 3;

select titulo, genero from filme where genero <>'suspense';
desc filme;
drop table filme;