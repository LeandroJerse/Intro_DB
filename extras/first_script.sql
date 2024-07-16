CREATE DATABASE secao04;

#DML(USE)
USE secao04produtos;

CREATE TABLE tipos_produto(
    codigo INT NOT NULL AUTO_INCREMENT,
    DESCRICAO VARCHAR(30) NOT NULL,
    PRIMARY KEY(codigo)
);
    
CREATE TABLE produtos(
    codigo INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(30) NOT NULL,
    preco DECIMAL(8,2) NOT NULL,
    codigo_tipo INT NOT NULL,
    FOREIGN KEY (codigo_tipo) REFERENCES tipos_produto(codigo)
);

insert into tipos_produto (descricao) values ('computadores');
insert into tipos_produto (descricao) values ('impressoras');

insert into produtos (descricao,preco,codigo_tipo) values ('Desktop','1200',1);
insert into produtos (descricao,preco,codigo_tipo) values ('Laptop','1800',1);
insert into produtos (descricao,preco,codigo_tipo) values ('Impressora Jato de Tinta','300',2);
insert into produtos (descricao,preco,codigo_tipo) values ('Impressora Laser','500',2);

select * from tipos_produto;
select descricao,codigo from tipos_produto;
select * from produtos;

SELECT p.codigo AS cod, p.descricao AS descr, p.preco AS prec, p.codigo_tipo AS codTipo FROM produtos AS p;

#DML(INSERT,UPDATE,DELETE)

insert into produtos (descricao, preco, codigo_tipo) values ('notebook', '1200', 1);
insert into produtos (descricao, preco, codigo_tipo) values ('Macbook Pro', '7200', 1);
insert into tipos_produto (descricao) values ('Apple');

UPDATE produtos SET codigo_tipo = 3 WHERE codigo = 6;

#Nunca esqueça de filtrar os dados com o WHERE em upodates e deletes

DELETE FROM produtos where codigo =4;


