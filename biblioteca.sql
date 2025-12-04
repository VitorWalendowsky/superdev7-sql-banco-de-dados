drop database if exists biblioteca;
create database biblioteca;
use biblioteca;




create table livros (
	id int primary key auto_increment,
	nome varchar(100)
);

select * from livros;

ALTER TABLE livros 
ADD COLUMN quantidade_paginas INT,
ADD COLUMN autor VARCHAR(100),
ADD COLUMN preco DOUBLE,
ADD COLUMN ISBN INT,
ADD COLUMN descricao TEXT;

select * from livros;
