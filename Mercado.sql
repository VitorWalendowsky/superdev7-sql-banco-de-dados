drop database if exists mercado;
create database mercado;
use mercado;

create table categorias (
	id int primary key auto_increment,
	nome varchar(100)
);

insert into categorias (nome) values ('Hortifruti'); -- id gerado 1
insert into categorias (nome) values ('Embutidos'); -- id gerado 2
select * from categorias;

-- PK -> Primary Key (chave primaria)
-- FK -> Foreign Key (chave estrangeira) sempre esta relacionada a outra chave primaria
create table produtos(
	id int primary key auto_increment,
	nome varchar(100),
	id_categoria int,
	
	foreign key (id_categoria) references categorias (id)
	);
	
insert into produtos (nome, id_categoria) values ('Batatinha', 1);
insert into produtos (nome, id_categoria) values ('Calabresa', 2);
insert into produtos (nome, id_categoria) values ('Bacon', 2);
insert into produtos (nome, id_categoria) values ('Toddy', 3);

Select * from produtos;


/*
Criar a tabela de times_futebol com as seguintes colunas 
- id PK
- nome
- faturament_anual

Criar 5 times de futebol
consultar os times de futebol

Criar a tabela de jogadores com as seguintes colunas
- id PK
- nome
- id_time_futebol FK

Inserir no minimo 2 jogadores FK

inserir no minimo 2 jogadores por time
consultar os jogadores

*/

Create table times_futebol (
	id int primary key auto_increment,
	nome varchar (100),
	faturamento_anual decimal(15,2)
);

insert into times_futebol (nome, faturament_anual) values
('Flamengo', 950000000.00),
('Corinthians', 780000000.00),
('Palmeiras', 720000000.00),
('São Paulo', 680000000.00),
('Grêmio', 450000000.00);

create table jogadores (
	id int primary key auto_increment,
	nome varchar(100),
	id_time_futebol INT,
	foreign key (id_time_futebol) references times_futebol (id)
);
insert into jogador (nome, id_itme_futebol) values
('Gabigol', 1),
('Arrascaeta', 1),

('Cássio', 2),
('Fagner', 2),

('Dudu', 3),
('Rony', 3),

('Luciano', 4),
('Calleri', 4),

('Suárez', 5),
('Villasanti', 5);

select * from jogadores;

select produtos.id, produtos.nome, produtos.id_categoria from produtos;

-- Carregar os dados dos produtos e da sua categoria
select
	categorias.nome,
	produtos.nome
	from produtos
	inner join categorias on (produtos.id_categoria = categorias.id);

-- apartamento -> andres -> blocos -> condominios -> empreendedoras
-- aluno, colegio, endereco, rota
-- endereco -> aluno -> colegio
-- rota -> aluno
-- generos
-- marcas
--
-- endereco -> bairro -> cidade -> estado -> regiao -> pais


/*
estado (id, nome, sigla) 2 estados
cidade (id, nome, id_estado) 2 cidades por estado
bairro (id, nome, id_cidade) 2 bairros por cidade
endereco (id, numero, logradouro, complemento, id_bairro)1 endereco por bairro
*/

create table estado (
	id int primary key auto_increment,
	nome varchar (100),
	sigla char(2),
);

insert into estado (nome, sigla) values
('Santa Catarina', 'SC'),
('Parana', 'PR');

Select * from estado;

create table cidade (
	id int primary key auto_increment,
	nome Varchar(100),
	id_estado int,
	foreign key (id_estado) references estado(id)
);

insert into cidade (nome, id_estado) values
('Blumenau',1),
('Florianopolis',1),
('Curitiba',2),
('Londrinha',2);

select cidade.nome as cidade,
       estado.nome as estado,
       estado.sigla
from cidade
inner join estado on cidade.id_estado = estado.id;


create table bairro (
	id int primary key auto_increment,
	nome varchar(100),
	id_cidade int,
	foreign key (id_cidade) references cidade(id)
);

insert into bairro (nome, id_cidade) values
('Velha',1),
('Garcia',1),
('Centro',2),
('Trindade',2),
('Batel',3),
('Agua Verde',3),
('Centro',4),
('Gleba Palhano',4);

select bairro.nome as bairro,
       cidade.nome as cidade,
       estado.nome as estado,
       estado.sigla
from bairro
inner join cidade on bairro.id_cidade = cidade.id
inner join estado on cidade.id_estado = estado.id;


create table endereco (
	id int primary key auto_increment,
	numero Varchar(20),
	logradouro varchar (150),
	complemento varchar (100),
	id_bairro int,
	foreign key (id_bairro) references bairro(id)
	);

insert into endereco (numero, logradouro, complemento, id_bairro) values
('100', 'Rua das Palmeiras', 'Casa', 1),
('200', 'Rua Otto Winckler', 'Apto 201', 2),
('150', 'Av. Beira Mar', 'Fundos', 3),
('400', 'Rua Deputado Antônio Edu Vieira', 'Apto 502', 4),
('550', 'Rua Bispo Dom José', 'Sobrado', 5),git
('900', 'Av. República Argentina', 'Apto 803', 6),
('250', 'Rua Sergipe', 'Casa', 7),
('780', 'Av. Ayrton Senna', 'Loja', 8);

select endereco.logradouro,
       endereco.numero,
       endereco.complemento,
       bairro.nome as bairro,
       cidade.nome as cidade,
       estado.nome as estado,
       estado.sigla
from endereco
inner join bairro on endereco.id_bairro = bairro.id
inner join cidade on bairro.id_cidade = cidade.id
inner join estado on cidade.id_estado = estado.id;