show databases;

create database if not exists first_example;

use first_example;
 
create table person(
person_id smallint unsigned,
fname varchar(20) not null,
lname varchar(20),
gender enum('M','F'),
birth_date date,
street varchar(30),
city varchar(20),
state varchar(20),
country varchar(20),
postal_coude varchar(20),
constraint pk_person primary key(person_id)
);

show tables;
desc person;

create table favorite_food(
    person_id smallint unsigned,
    food varchar(20),
    constraint pk_favorite_food primary key (person_id,food),
    constraint fk_favorite_food_person_id foreign key (person_id) references person(person_id)
    );
    
desc favorite_food;
    
select * from information_schema.table_constraints where constraint_schema = 'first_example';
    
desc person;

insert into person values('1','Carolina','Silva','F','1979-08-21','rua','cidade','estado','pais','cep');

select * from person;

DELETE FROM person where person_id=2 or perso_id=3;

insert into favorite_food values('1','lasanha');

select * from favorite_food;
