use sprint1;

create table curso(
		idcurso int primary key auto_increment,
        nome varchar (50),
        sigla varchar (03),
        coordenador varchar (50)
);

insert into curso values 
	(null, 'analise e desenvolvimento de sistemas', 'ads', 'xandão'),
	(null, 'sistemas da informação', 'sis', 'linda'),
	(null, 'ciencias da computação', 'cco', 'lucas')
;

select * from curso;
select coordenador from curso;
select * from curso where sigla = 'ads';
select * from curso where sigla = 'sis';
select * from curso where sigla = 'cco';
select * from curso order by nome;
select * from curso order by coordenador desc ;
select * from curso where nome like 's%';
select * from curso where nome like '%o';
select * from curso where nome like '_i%';
select * from curso where nome like '%ã_';
drop table curso;





