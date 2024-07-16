 #DDL(create,alter,drop)
 
 create database meudb;
 
 use meudb;
 
 create table pessoas(
     id int not null auto_increment primary key,
     nome varchar(100) not null
);

insert into pessoas (nome) values ("Leandro");     
select id as ID, nome as Nome, ano_nascimento as Ano, mes_nascimento as Mês from pessoas;

ALTER TABLE pessoas ADD ano_nascimento INT NOT NULL;
ALTER TABLE pessoas ADD mes_nascimento INT NOT NULL;
update pessoas set ano_nascimento=2002 where id=1;
update pessoas set mes_nascimento=5 where id=1;

-- drop table pessoas; 