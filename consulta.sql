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

select sum(pontos) from times;

create table jogadores (
	id int not null auto_increment,
	nome VARCHAR(100) not null,
	email varchar(255) not null,
	PRIMARY key(id)
)

select * from jogadores;

insert into jogadores (nome, email) values ('nome6', 'email6');

alter table jogadores add column time_id int not null;

update jogadores set time_id = 2 where id = 6;

select * from times, jogadores;
select * from jogadores join times on jogadores.time_id = time_id;
alter table jogadores add FOREIGN key (time_id) REFERENCES times(id);

desc times;
desc jogadores;

select t.nome from times t;
select t.nome from times t where exists (select j.id from jogadores j where j.time_id = t.id);


