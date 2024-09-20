create database if not exists oficina;

use oficina;
create table user_client( 
    id_user_client int primary key auto_increment,
    first_name varchar(15) not null,
    mid_name varchar(15),
    last_name varchar(15),
    cpf char(11),
    adress varchar(40),
    phone_number varchar(11),
    permission enum("yes","not")
    );
create table mechanic(
    id_mechanic int primary key auto_increment,
    mechanic_code varchar(20),
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    especialty varchar(30)
    );
    
create table team_of_mechanics(
    id_team int primary key auto_increment,
    team_code varchar(40)
    );
    
create table mechanic_in_team(
    mechanic int not null,
    team int not null,
    foreign key (mechanic) references mechanic(id_mechanic),
    foreign key (team) references team_of_mechanics(id_team)
    );
    

create table veicle( 
    id_veicle int primary key auto_increment,
    type_veicle varchar(15) not null,
    plate char(7),
    model varchar(20),
    owner_veicle int not null,
    veicle_team int not null,
    foreign key( owner_veicle) references user_client(id_user_client),
    foreign key(veicle_team) references team_of_mechanics(id_team)
    );
    
create table service_order(
    id_number_service_order int primary key not null,
    date_of_emission datetime,
    order_value decimal(10,2),
    forecast datetime,
    mechanic_team int not null,
    foreign key (mechanic_team) references team_of_mechanics(id_team)
    );
    

create table permission_and_service_order(
    service_order int,
    id_client int not null,
    foreign key(service_order) references service_order(id_number_service_order),
    foreign key(id_client) references user_client(id_user_client)
    );
    
    
    show tables
    

    