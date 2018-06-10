use esports;

create table times (
	id int auto_increment primary key,
	nome varchar(100),
	pontos double,
	ativo boolean
)

insert into times (nome, pontos, ativo) values ('time 13', 10, 1);

select * from times;
select nome from times;
select nome, pontos * 1 as tripro from times;
select * from times where ativo = 0;
select * from times where pontos > 3;
select * from times where pontos > 3 AND ativo = 1;

update times set pontos = 11 where id = 1;
update times set pontos = 11 where id in (1, 2, 3);
update times set pontos = 10 where not id = 1;

alter table times modify column nome text not null;
alter table times modify column pontos double DEFAULT '0';
alter table times add column foto text;