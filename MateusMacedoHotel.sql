create database Continuada2;
use Continuada2;

create table Hotel(
	idHotel int primary key auto_increment,
    fkmatriz int, foreign key (fkmatriz) references Hotel (idHotel),
    nomeHotel varchar(45),
    endereço varchar(45),
    número char(4),
    cep char(8)
);

create table quarto(
	idQuarto int auto_increment,
    fkhotel int, primary key (idQuarto, fkhotel),
    foreign key (fkhotel) references quarto (idQuarto),
    nomeQuarto varchar(45),
    andar char(2),
    tipo varchar(45)
);

insert into Hotel values
	(null, 1, 'Hotel praiero', 'rua josé', 2162, 03172010),
	(null, 1,'Hotel xesquedele', 'rua maria', 2163, 03172121),
	(null, 1,'Hotel malagueta', 'rua clara', 1071, 03172232),
	(null, 1,'Hotel xandão', 'av meiri', 2000, 03172343),
	(null, 1,'Hotel diogo', 'av paulista', 1577, 031720454)
    ;
    
insert into quarto values 
		(null, 1, 'quarto jogos', 10, 'casal'),
		(null, 1, 'quarto guloseimas', 21, 'solteiro'),
		(null, 2, 'quarto jogos', 13, 'solteiro'),
		(null, 3, 'quarto corno', 05, 'casal'),
		(null, 4, 'quarto sapecagem', 19, 'casal'),
		(null, 5, 'quarto alone', 01, 'solteiro')
        ;
        
select * from hotel;
select * from quarto;

select * from hotel join quarto on hotel.idHotel = quarto.fkhotel;

select nomeHotel, tipo from hotel join quarto  on hotel.idHotel = quarto.fkhotel where tipo like 'solteiro';

select * from hotel join hotel as h on hotel.idHotel = h.fkmatriz;

select nomeQuarto, andar from quarto where nomeQuarto like '%m';

update quarto set tipo = 'casal' where idQuarto = 2;
select * from quarto;

select * from hotel as a join hotel on a.idHotel = hotel.fkmatriz
join quarto on hotel.idHotel = quarto.fkhotel;

drop database Continuada2;

/*professora desculpa mas esqueci como usa o check e como deletar um dado na tabela mas o resto tá certo tamo junto*/


  



