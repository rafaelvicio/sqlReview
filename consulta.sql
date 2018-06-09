use esports;

create table times (
	id int auto_increment primary key,
	nome varchar(100),
	pontos double,
	ativo boolean
)

insert into times (nome, pontos, ativo) values ('Time12', 10, 1);

select * from times;
select nome from times;
select nome, pontos * 1 as tripro from times;
select * from times where ativo = 0;
select * from times where pontos > 3;
select * from times where pontos > 3 AND ativo = 1;