create database funcionario;
use funcionario;

create table funcionario (
	idFunc int primary key auto_increment,
    nomeFunc varchar(45),
    salario decimal(10,2), check (salario > 0),
	genero char(1), check (genero = 'f' or genero = 'm')
);

insert into funcionario values 
	(null, 'Franklin', 1.99, 'm'),
	(null, 'João', 1.98, 'm'),
	(null, 'Maria', 2.99, 'f');
    
  create table dependente (
	idDep int,
    fkfunc int,
	primary key(idDep,fkfunc),
    nomeDep varchar(45),
    dtNasc date,
    foreign key (fkfunc) references funcionario(idFunc)
  );
  
  insert into dependente values
	(1, 'Laura', '2000-10-13', '1'),
	(2, 'Lauro', '1999-10-13', '1'),
	(1, 'Joana', '1995-10-13', '2'),
	(1, 'Mario', '1998-10-13', '3');
    
    select idDep, fkfunc, nomeDep, dtNasc from dependente order by fkfunc;
    
    select * from funcionario join dependente
		on idFunc = fkFunc;
        
    insert into funcionario values
		(null, 'Vivian', 0.99, 'f');
        
       select * from funcionario left join dependente 
			on idFunc = fkfunc;
            
		select * from funcionario left join dependente 
			on idFunc = fkfunc where fkfunc is null;    
            
        alter table funcionario add column fksupervisor int,
			add foreign key (fksupervisor) references funcionario(idFunc);
            
        update funcionario set fksupervisor = 1 where idFunc in (2,3);  
        
        select * from funcionario
        join funcionario as supervisor
        on supervisor.idFunc = funcionario.fksupervisor;


