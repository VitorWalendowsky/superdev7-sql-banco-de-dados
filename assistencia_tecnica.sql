-- # 01 - Criar um banco de dados chamado "assistencia_tecnica"
-- # 02 - Criar uma tabela chamada "pecas_reposicao" com os campos: id, nome
-- # 03 - Inserir 10 registros de peças de computador
-- # 04 - Consultar as peças de reposição
-- # 05 - Consultar as peças de reposição ordenando por nome em ordem crescente
-- # 06 - Consultar as peças de reposição ordenando por nome em ordem decrescente
-- # 07 - Consultar as peças de reposição limitando a 5 registros
-- # 08 - Consultar as peças filtrando por id maior que 3
-- # 09 - Consultar as peças filtrando por nome que contenha a palavra "Memória" no começo
-- # 10 - Consultar as peças filtrando por nome que termine com "HD"
-- # 11 - Consultar as peças filtrando por nome que contenha a palavra "Placa"
-- # 12 - Consultar as peças filtrando por id entre 2 e 7
-- # 13 - Consultar a quantidade total de peças cadastradas
-- # 14 - Consultar as peças filtrando por nome que contenha a palavra "HD" ou "SSD"
-- # 15 - Consultar as peças exibindo apenas o nome sem o id
-- # 16 - Consultar as peças onde o nome tenha mais de 10 caracteres
-- # 17 - Consultar as peças com o nome em letras maiúsculas
-- # 18 - Consultar as peças substituindo espaços por hífens no nome (usar REPLACE)
-- # 19 - Consultar as peças mostrando apenas as três primeiras letras do nome (SUBSTRING)
-- # 20 - Consultar as peças que não contenham a palavra "Placa"
-- # 22 - Consultar as peças com o nome em letras minúsculas
-- # 23 - Consultar as peças onde o id seja diferente de 5
-- # 24 - Consultar as peças e ordenar por tamanho do nome (LENGTH)
-- # 25 - Adicionar uma coluna chamada "tipo" na tabela "pecas_reposicao"
-- # 26 - Atualizar todos os registros classificando nas de acordo com os seguintes tipos: "Memória", "Processador", "Placa de Vídeo", "SSD", "Fonte", "Placa Mãe"
-- # 27 - Consultar as peças filtrando por tipo cada um dos tipos "Memória", "Processador"... Serão 6 consultas
-- # 31 - Adicionar uma coluna chamada "quantidade" na tabela "pecas_reposicao"
-- # 32 - Atualizar a quantidade de todas as peças para 10
-- # 33 - Consultar as peças com quantidade maior que 10
-- # 34 - Atualizar registro por registro definindo as seguintes quantidades: 
-- #       5 para id 1
-- #       20 para id 2
-- #       39 para id 3
-- #       1 para id 4
-- #       24 para id 5
-- #       39 para id 6
-- #       12 para id 7
-- #       34 para id 8
-- #       12 para id 9
-- #       0 para id 10
-- #       1 para id 11
-- # 35 - Consultar as peças cujo nome contenha a letra "e"
-- # 36 - Consultar as peças cujo nome contenha a letra "a"
-- # 37 - Adicionar uma coluna chamada "preco" na tabela "pecas_reposicao"
-- # 38 - Atualizar o preço das peças definindo os seguintes valores:
-- #       R$ 13,39 para id 1
-- #       R$ 24,99 para id 2
-- #       R$ 12,99 para id 3
-- #       R$ 19,99 para id 4
-- #       R$ 29,99 para id 5
-- #       R$ 39,99 para id 6
-- #       R$ 49,99 para id 7
-- #       R$ 59,99 para id 8
-- #       R$ 69,99 para id 9
-- #       R$ 79,99 para id 10
-- #       R$ 89,99 para id 11
-- # 39 - Consultar o valor total de todas as peças
-- # 40 - Consultar o valor total de todas as peças filtrando por tipo cada um dos tipos "Memória", "Processador"... Serão 6 consultas
-- # 41 - Consultar o menor valor de todas as peças
-- # 42 - Consultar o maior valor de todas as peças
-- # 43 - Consultar a média de todos os valores
-- # 44 - Alterar a tabela e adicionar uma coluna de date chamada "data_pedido"
-- # 45 - Inserir uma nova peça de reposição com os seguintes valores:
-- #       nome: "Processador Intel Core i7"
-- #       tipo: "Processador"
-- #       quantidade: 10
-- #       preco: 19,99
-- #       data_pedido: 2023-01-01
-- # 46 - Atualizar todos as peças definindo a data de pedido para as seguintes datas abaixo:
-- #       01/11/2025 para id 1
-- #       28/10/2025 para id 2
-- #       15/09/2025 para id 3
-- #       22/08/2025 para id 4
-- #       29/07/2025 para id 5
-- #        6/06/2025 para id 6
-- #        4/05/2025 para id 7
-- #        5/04/2025 para id 8
-- #        7/03/2025 para id 9
-- #        4/02/2025 para id 10
-- #        7/01/2025 para id 11
-- # 47 - Consultar todas as colunas ordenando por valor, não utilizar wildcard (procurar no google)




CREATE table pecas_reposicao (
id INT auto_increment primary key,
nome VARCHAR(200) not null
);

insert into pecas_reposicao (nome) values
('Placa-mãe ASUS B450M'),
('Memória RAM 8GB DDR4'),
('Fonte 500W 80 Plus'),
('SSD 240GB SATA'),
('Processador Intel Core i5'),
('Cooler para CPU'),
('Placa de Vídeo GTX 1050 Ti'),
('HD 1TB Seagate'),
('Gabinete Mid Tower'),
('Teclado Mecânico RGB');


capt

select * from pecas_reposicao order by nome asc;


select * from pecas_reposicao order by nome desc;


select * from pecas_reposicao limit 5;


select * from pecas_reposicao where id > 3;


select * from pecas_reposicao where nome like "Memória%";


select * from pecas_reposicao where nome like "%HD%";


select * from pecas_reposicao where nome like "%Placa%";


select * from pecas_reposicao where id >= 2 and id <= 7;


select count(*) as id from pecas_reposicao


select * from pecas_reposicao where nome like "%HD%" or nome like "%SSD%";


select nome from pecas_reposicao;


select * from pecas_reposicao where CHARACTER_LENGTH(nome) > 10;


select UPPER(nome) from pecas_reposicao;


SELECT REPLACE(nome, '-', ' ') AS nome_formatado
FROM pecas_reposicao;


select SUBSTRING(nome, 1 , 3) as primeiras_letras from pecas_reposicao;


select * from pecas_reposicao where nome not like "%Placa%";


select lower(nome) from pecas_reposicao;


select * from pecas_reposicao where id <> 5;

select * from pecas_reposicao order by CHARACTER_LENGTH(nome) asc;


ALTER TABLE pecas_reposicao ADD COLUMN tipo VARCHAR (100);


update pecas_reposicao set tipo = 'Placa Mãe' where id = 1;
update pecas_reposicao set tipo = 'Memória' where id = 2;
update pecas_reposicao set tipo = 'Fonte' where id = 3;
update pecas_reposicao set tipo = 'SSD' where id = 4;
update pecas_reposicao set tipo = 'Processador' where id = 5;
update pecas_reposicao set tipo = 'Cooler' where id = 6;
update pecas_reposicao set tipo = 'Placa de Vídeo' where id = 7;
update pecas_reposicao set tipo = 'HD' where id = 8;
update pecas_reposicao set tipo = 'Gabinete' where id = 9;
update pecas_reposicao set tipo = 'Teclado' where id = 10;

Select * from pecas_reposicao where tipo = 'Placa Mãe';
Select * from pecas_reposicao where tipo = 'Memória';
Select * from pecas_reposicao where tipo = 'Fonte';
Select * from pecas_reposicao where tipo = 'SSD';
Select * from pecas_reposicao where tipo = 'Processador';
Select * from pecas_reposicao where tipo = 'Cooler';
Select * from pecas_reposicao where tipo = 'Placa de Vídeo';
Select * from pecas_reposicao where tipo = 'HD';
Select * from pecas_reposicao where tipo = 'Gabinete';
Select * from pecas_reposicao where tipo = 'Teclado';

ALTER TABLE pecas_reposicao ADD COLUMN quantidade DOUBLE;

Select * from pecas_reposicao;

update pecas_reposicao set quantidade = '10';

select * from pecas_reposicao where quantidade > 10;

update pecas_reposicao set quantidade = 5 where id = 1;
update pecas_reposicao set quantidade = 20 where id = 2;
update pecas_reposicao set quantidade = 39 where id = 3;
update pecas_reposicao set quantidade = 1 where id = 4;
update pecas_reposicao set quantidade = 24 where id = 5;
update pecas_reposicao set quantidade = 39 where id = 6;
update pecas_reposicao set quantidade = 12 where id = 7;
update pecas_reposicao set quantidade = 34 where id = 8;
update pecas_reposicao set quantidade = 12 where id = 9;
update pecas_reposicao set quantidade = 0 where id = 10;
update pecas_reposicao set quantidade = 5 where id = 11; -- no ecxiste

select * from pecas_reposicao where nome like "%e%";

select * from pecas_reposicao where nome like "%a%";


Select * from pecas_reposicao;

ALTER TABLE pecas_reposicao ADD COLUMN preco decimal(10, 2);

update pecas_reposicao set preco = 13.39 where id = 1;
update pecas_reposicao set preco = 24.99 where id = 2;
update pecas_reposicao set preco = 12.99 where id = 3;
update pecas_reposicao set preco = 19.99 where id = 4;
update pecas_reposicao set preco = 29.99 where id = 5;
update pecas_reposicao set preco = 39.99 where id = 6;
update pecas_reposicao set preco = 49.99 where id = 7;
update pecas_reposicao set preco = 59.99 where id = 8;
update pecas_reposicao set preco = 69.99 where id = 9;
update pecas_reposicao set preco = 79.99 where id = 10;
update pecas_reposicao set preco = 89.99 where id = 11; -- no ecxiste

SELECT SUM(preco) AS 'valor_total' FROM pecas_reposicao;

Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Placa Mãe';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Memória';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Fonte';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'SSD';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Processador';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Cooler';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Placa de Vídeo';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'HD';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Gabinete';
Select sum(preco) as 'valor_total' from pecas_reposicao where tipo = 'Teclado';

SELECT MIN(preco) AS 'menor_valor' from pecas_reposicao;

SELECT MAX(preco) AS 'menor_valor' from pecas_reposicao;

SELECT AVG(preco) AS 'media_valores' from pecas_reposicao;

ALTER TABLE pecas_reposicao ADD COLUMN data_pedido date;

INSERT into pecas_reposicao (nome, tipo, quantidade, preco, data_pedido) values ("Processador Intel Core i7", "Processador", 10, 19.99, '2023-01-01')


update pecas_reposicao set data_pedido = '2025-11-01' where id = 1;
update pecas_reposicao set data_pedido = '2025-10-28' where id = 2;
update pecas_reposicao set data_pedido = '2025-09-15' where id = 3;
update pecas_reposicao set data_pedido = '2025-08-22' where id = 4;
update pecas_reposicao set data_pedido = '2025-07-29' where id = 5;
update pecas_reposicao set data_pedido = '2025-06-06' where id = 6;
update pecas_reposicao set data_pedido = '2025-05-04' where id = 7;
update pecas_reposicao set data_pedido = '2025-04-05' where id = 8;
update pecas_reposicao set data_pedido = '2025-03-07' where id = 9;
update pecas_reposicao set data_pedido = '2025-02-04' where id = 10;
update pecas_reposicao set data_pedido = '2025-01-07' where id = 11; -- agora ecxiste

select id,nome,tipo,quantidade,preco,data_pedido from pecas_reposicao order by preco ASC;


