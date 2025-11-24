-- Criar o banco de dados
create database locadora;

-- selecionar o banco de dados
use locadora;

-- criar tabela
create table usuarios(
	id INT,
	nome Varchar(30) -- nome pode cntar no maximo ate 30 caracteres
	);

-- inserir registro
insert into usuarios (id, nome) value (1, "Carlos");

-- consultar registros
select id,nome from	usuarios;

-- demais usuarios
insert into usuarios (id, nome) value (2, "Leidiane");
insert into usuarios (id, nome) value (3, "Vand");
insert into usuarios (id, nome) value (4, "Joao Vitor");
insert into usuarios (id, nome) value (5, "Felipe");
insert into usuarios (id, nome) value (6, "John");
insert into usuarios (id, nome) value (7, "Vitor");
insert into usuarios (id, nome) value (8, "Joshua");
insert into usuarios (id, nome) value (9, "Gustavo");


-- excluir registro

delete from usuarios where id = 7;

-- consultar os registros
select id, nome from usuarios;

-- alterar registro
update usuarios set nome = "Carlos da silva " where id = 1;







-- tabela filmes
create table filmes(
id INT,
titulo varchar(30),
autor varchar(30),
classificacao Int,
genero varchar(30)
);

-- consultar tabela filmes 
select id,titulo,autor,classificacao,genero from filmes;

-- inserir dados
insert into filmes (id,titulo,autor,classificacao,genero) value (1, "lagoa azul", "randal kleiser", 16, "drama")
insert into filmes (id,titulo,autor,classificacao,genero) value (2, "exterminador do futuro", "james cameron", 18, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (3, "vingadores ultimato", "anthony e joe russo", 12, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (4, "homem de ferro", "jon favreu", 12, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (5, "pantera negra", "ryan coogler", 12, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (6, "capitao america:soldado invernal", "anthony e joe russo", 12, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (7, "liga da justica", "zack snyder", 14, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (8, "mulher-maravilha", "patty jenkins", 12, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (9, "batman: o cavaleiro das trevas", "christopher nolan", 14, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (10, "aquaman", "james wan", 12, "acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (11, "shazam", "david f. sandberg", 12, "Comedia/acao")
insert into filmes (id,titulo,autor,classificacao,genero) value (12, "thor: ragnarok", "taika waititi", 12, "acao")

-- deletar
delete from filmes where id = 3;

-- alterar coluna
ALTER TABLE filmes MODIFY titulo VARCHAR(255);


--------------------------------------------------

-- tabela jogos
create table jogos(
id int,
nome varchar (100),
faturamento int,
preco_unidade double,
data_lancamento date,
produtora varchar(100),
distribuidora varchar(100),
xbox bit,
ps bit,
pc bit,
switch bit
);

-- consultar tabela jogos 
select * from jogos;

-- inserir dados na jogos
insert into jogos 
(id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, `switch`)
values
(1, 'Minecraft', 2500000000, 29.99, '2011-11-18', 'Mojang Studios', 'Xbox Game Studios', 1, 1, 1, 1);

insert into  jogos 
(id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, `switch`)
values
(2, 'GTA V', 8000000000, 59.99, '2013-09-17', 'Rockstar North', 'Rockstar Games', 1, 1, 1, 0);

insert into  jogos 
(id, nome, faturamento, preco_unidade, data_lancamento, produtora, distribuidora, xbox, ps, pc, `switch`)
values
(3, 'The Legend of Zelda: Breath of the Wild', 1800000000, 59.99, '2017-03-03', 'Nintendo EPD', 'Nintendo', 0, 0, 0, 1);

-- alterar faturamento por causa do tamanho da info
alter table jogos modify faturamento bigint;


--------------------------------------------------------------------

-- exercicio CD

CREATE TABLE cds (
    id INT,
    nome VARCHAR(255),
    banda VARCHAR(255),
    duracao VARCHAR(50),
    quantidade_musicas INT,
    ano_lancamento VARCHAR(10),
    genero VARCHAR(100)
);

INSERT INTO cds VALUES (1, 'Sundowning', 'Sleep T0ken', '52:31', 12, 2019, 'Alternativ');
INSERT INTO cds VALUES (2, 'Take Me Back To Eden', 'Sleep Token', '', 12, '2023', 'Alt Metal');
INSERT INTO cds VALUES (3, 'Eternal Blue', 'Sleep Token', 'not sure', NULL, '202?', 'Metal');

INSERT INTO cds VALUES (4, 'Meteora', 'Linkin Prak', '36:43', 13, 2003, 'N-U metal');
INSERT INTO cds VALUES (5, 'Hbrid Theory', 'Linkin Park', '37:??', 12, 2000, 'Nu-metal');
INSERT INTO cds VALUES (6, 'Minutes to Midnite', 'Lincon Park', '44:34', NULL, 2007, '');

INSERT INTO cds VALUES (7, 'Holy Hell', 'Architects', '50:05', 11, '2018', 'Metalcore');
INSERT INTO cds VALUES (8, 'For Those That Wish to Exist', 'Architectts', NULL, 15, '2021', 'Metal core');
INSERT INTO cds VALUES (9, 'Lost Forever // Lost Togther', 'Architecs', '42:14', 10, '20X4', 'Metalcroe');

INSERT INTO cds VALUES (10, 'Paranoid', 'Black Sabath', '42:06', 8, 1970, 'Heavy Metal');
INSERT INTO cds VALUES (11, 'Black Sabbath', 'Black Sabbath', '38??', NULL, 1970, '');
INSERT INTO cds VALUES (12, 'Master of Reality', 'Blk Sabbath', '', 8, '1971', 'Metal');

INSERT INTO cds VALUES (13, 'The Death of Peace of Mind', 'Bad Omens', '53:44', 15, 2022, 'Metalcor');
INSERT INTO cds VALUES (14, 'Finding God Before God Finds Me', 'Bad Omens', NULL, 10, '2019', 'Meta core');
INSERT INTO cds VALUES (15, 'B A D O M E N S', 'Bad Omns', '??:??', 10, '2016', 'Rock?');

INSERT INTO cds VALUES (16, 'Inhuman Rampage', 'Dragon Force', '55:??', 8, 2005, 'Power metal');
INSERT INTO cds VALUES (17, 'Ultra Beatdown', 'DragonForce', '59:30', NULL, '', 'Power-Metal');
INSERT INTO cds VALUES (18, 'Valley of the Damed', 'Dragon F0rce', '40:12', 8, 2003, 'Powr metal');

INSERT INTO cds VALUES (19, 'The Black Parade', 'My Chemical Romnace', '51:53', 14, 2006, 'Emo rock');
INSERT INTO cds VALUES (20, 'Three Cheers for Sweet Revenge', 'My Chemicl Romance', '', NULL, 2004, 'Punk/Emo');
INSERT INTO cds VALUES (21, 'Danger Days', 'My Chemical Romance', '53min', 15, '2010', '');

INSERT INTO cds VALUES (22, 'By the Way', 'Restart', '40:15', 10, 2010, 'Pop Rock');
INSERT INTO cds VALUES (23, 'R(e)start', 'Restar', NULL, 12, '2011', 'P0p rock');
INSERT INTO cds VALUES (24, 'Renascer', 'Restart', '??', 9, '', 'Pop');

INSERT INTO cds VALUES (25, 'Millenial Rhapsody', 'Oliver Malcom', NULL, NULL, '20??', 'Alt Pop');

-- selecionar tabela 
select * from cds;

-- replace 
update cds set banda = 'Sleep Token' where id = 1;
update cds set duracao = '63:00' where id = 2;
update cds set ano_lancamento = '2021', duracao = '52:01', quantidade_musicas = '10' where id = 3;

update cds set banda = 'Linkin Park' where id in (4, 6);
update cds set nome = 'Hybrid Theory', duracao = '37:45' where id = 5;
update cds set quantidade_musicas = '16', genero = 'Nu metal', nome = 'Minutes to Midnight' where id = 6;
update cds set genero = 'Nu metal' where id = 4






