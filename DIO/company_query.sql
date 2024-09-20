create schema if not exists company;
use company;

create table employee(
first_name  varchar(15) NOT NULL,
mid_name varchar(20),
last_name varchar(20) not null,
ssn char(9) not null,
birthdate date,
adress varchar(30),
sex char,
salary decimal(10,2),
super_ssn char(9),
departament_number int not null,
primary key (ssn)
);



create table departament(
    departament_name varchar(15) not null,
    departament_number int not null auto_increment,
    manager_ssn char(9),
    manager_start_date date,
    primary key (departament_number),
    unique (departament_name),
    foreign key (manager_ssn) references employee(ssn)
);

create table dept_locations(
    d_number int not null,
    d_location varchar(15) not null,
    primary key (d_number,d_location),
    foreign key (d_number) references departament(departament_number)
);
create table project(
    
    p_name varchar (15) not null,
    p_number int not null auto_increment,
    departament_number int not null,
    primary key(p_number),
    unique(p_name),
    foreign key (departament_number) references departament(departament_number)

);

create table works_on(
    esnn char(9) not null,
    p_number int not null,
    hours decimal(3,1) not null,
    primary key(esnn, p_number),
    foreign key(esnn) references employee(ssn),
    foreign key(p_number) references project(p_number)
    );
    
create table dependent(
  esnn char(9) not null,
  dependent_name varchar(15) not null,
  sex char,
  birthdate date,
  relationship varchar(15),
  primary key (esnn, dependent_name),
  foreign key (esnn) references employee (ssn)
);

show tables;
