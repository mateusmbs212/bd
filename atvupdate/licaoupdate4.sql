use sprint1;

create table professor (
	idprofessor int primary key auto_increment,
    nome varchar(50),
    especidalidade varchar (40),
    dtnasc date
);

insert into professor values
	(null, 'frizza', 'algoritimo','1952-10-13'),
    (null, 'vivian', 'bd','1980-07-15'),
    (null, 'thiago', 'socioemocional','1986-06-20'),
    (null, 'eduardo', 'arq computacional','1970-05-13'),
    (null, 'brandão', 'Pi','1960-01-27'),
    (null, 'kaline', 'socioemocional','1972-03-13')
;

select * from professor;

alter table professor add column função varchar (40);
update professor set função = 'titular' where idprofessor = 1;
update professor set função = 'titular' where idprofessor = 2;
update professor set função = 'monitor' where idprofessor = 3;
update professor set função = 'titular' where idprofessor = 4;
update professor set função = 'assistente' where idprofessor = 5;
update professor set função = 'titular' where idprofessor = 6;

insert into professor values 
	(null, 'dan','socioemocional','1985-02-01','assistente')
;

delete from professor where idprofessor = 5;

select nome, função from professor where função = 'titular';
select dtnasc, especidalidade from professor; 
update professor set dtnasc = '1996-11-05' where idprofessor = 3;
drop table professor;
truncate table professor;