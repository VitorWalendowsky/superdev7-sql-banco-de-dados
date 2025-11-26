--Primary key => chave primaria
-- Auto_Increment => gerar os ids automaticamente

DROP DATABASE IF EXISTS escola;
CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
    id INT PRIMARY KEY Auto_Increment
);

-- Consultar como esta a tabela
DESCRIBE alunos;

-- adicionar nova coluna na tabela
ALTER TABLE alunos ADD COLUMN nome VARCHAR (50);

-- Adicionar um registro (cad aluno)
INSERT INTO alunos (nome) VALUES ('Pedrinho');
INSERT INTO alunos (nome) VALUES ('Aninha');
INSERT INTO alunos (nome) VALUES ('Mariazinha');
INSERT INTO alunos (nome) VALUES ('Clebinho');
INSERT INTO alunos (nome) VALUES ('Luiza');
INSERT INTO alunos (nome) VALUES ('Fabiana');
INSERT INTO alunos (nome) VALUES ('Thaiz');
INSERT INTO alunos (nome) VALUES ('Du Dudu e Edu');

-- Consultar o nome dos alunos em ordem alfabetica
SELECT nome FROM alunos ORDER BY nome;
--
-- Green field novo projeto
-- Brown field projeto existente

ALTER TABLE alunos ADD COLUMN nota 1 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota 2 DOUBLE;
ALTER TABLE alunos ADD COLUMN nota 3 DOUBLE;

-- Gerar o create table da tabela
SHOW CREATE TABLE alunos;

-- Consultando o ID do aluno que contem tal nome
SELECT id FROM alunos WHERE nome = "Predinho";

-- Definir as notas o Pedro
UPDATE alunos SET nota1 = 9 where id = 1;
UPDATE alunos SET nota2 = 8.5 where id = 1;
UPDATE alunos SET nota1 = 6.5 where id = 1;

-- Definir as notas do Aninha
UPDATE alunos SET nota1 = 5, nota 2 = 8, nota3 = 1.5 WHERE id = 2;

| Aluno         | nota 1 | nota 2 | nota 3 |
|---------------|--------|--------|--------|
| Mariazinha    | NULL   | NULL   | NULL   |
| Clebinho      | 7.5    | 8.0    | 6.5    |
| Luiza         | 9.0    | NULL   | 9.5    |
| Fabiana       | NULL   | 7.9    | 8.8    |
| Thaiz         | 6.8    | 7.3    | NULL   |
| Du Dudu e Edu | 5.5    | 6.2    | 7.1    |


-- consultar menor nota1
SELECT MIN(nota1) AS 'Menor Nota' from alunos;

-- consultar maior nota1
SELECT MAX(nota1) AS 'Maior Nota' FROM alunos;

-- consultar a media das notas1
SELECT AVG(nota1) AS 'Média Nota1' FROM alunos;

-- consultar a soma das notas1
SELECT SUM(nota1) AS 'Soma Nota1' FROM alunos;

-- consular dados dos alunos que tem a nota NULL
SELECT * FROM alunos WHERE nota1 IS NULL OR nota2 IS NULL OR nota3 IS NULL;

-- Atualizar nota mariazinha e thaiz
-- Nota 1
-- Mariazinha - 0
-- Fabiana - 2.0

-- nota2
-- Mariazinha 1.4
-- Luiza 10

-- nota3
-- Mariazinha - 0
-- Thaiz - 6.8

update alunos set nota1 = 0, nota2 = 0, nota3 = 0 where nome = Mariazinha
Update alunos set nota1 = 2.0 where nome = Fabiana
update alunos set nota2 = 10 where nome = Luiza
update alunos set nota3 = 6.8 where nome = Thaiz

-- select calcular a media
select nome, (nota1 + nota2 + nota3)/3 from alunos;

-- select calcular media apresentando o numero formatado com duas casas decimais
select nome, format((nota1 + nota2 + nota3)/3,2) from alunos;

-- consultar os aprovados acima ou igual a 7
select
    nome,
    format((nota1 + nota2 + nota3) /3,2)
from alunos
where (nota1 + nota2 + nota3) / 3 >=7;

-- consultar em exame acima ou igual a 6
select
    nome,
    format((nota1 + nota2 + nota3) /3,2)
from alunos
where (nota1 + nota2 + nota3) / 3 >=6
 AND (nota1 + nota2 + nota3) / 3 < 7;

-- consultar os reprovados 
SELECT
    nome,
    FORMAT((nota1 + nota2 + nota3) / 3, 2) AS media
FROM alunos
WHERE (nota1 + nota2 + nota3) / 3 < 6;

Create table jogos(
    id INT PRIMARY KEY AUTO_INCREMENTE,
    nome VARCHAR(100) NOT NULL,
    UNIQUE(nome)
)

INSERT INTO jogos(nome) VALUES
('Metal Gear Solid'),
('Medal of Honor'),
('Twisted Metal'),
('The Riftbreaker: Metal Terror'),
('Metal Slug');

-- consultar os jogos filtrando por uma busca parcial no comeco de 'Me'
select * from jogos where nome Like "Me%"

-- Consultar os jogos que terminam com 'Metal'
select * from jogos where nome Like "%Metal";

-- Consultar os jogos que contem
select * from jogos where nome LIKE "%Me%";

-- Consultar jogos em ordem decrescente
select id, nome from jogos order by nome desc;

-- adicionar uma coluna de dat de nascimento na tabela de alunos;
ALTER TABLE alunos ADD COLUMN data_nascimento DATE;

-- Definir data de nascimento para THAIZ (ID 7)
UPDATE alunos SET data_nascimento = '2000-11-24' WHERE id = 7;

-- Definir data de nascimento para clebinho ID 4
Update alunos set data_nascimeto = '1994-07-03' where id = 4;
Update alunos set data_nascimeto = '2001-12-7' where id = 1;
Update alunos set data_nascimeto = '1990-08-09' where id = 2;
Update alunos set data_nascimeto = '1980-12-25' where id = 3;
Update alunos set data_nascimeto = '1975-11-30' where id = 5;
Update alunos set data_nascimeto = '2009-2-9' where id = 6;
Update alunos set data_nascimeto = '2001-8-20' where id = 8;

-- consultar a data de nascimento formatada no padrao pt-br
select id, nome, date_format(data_nascimento, "%d/%m/%Y")
    from alunos;

-- consultar mes de uma data
select month(data_nascimento) from alunos;

-- consultar ano de uma data
select year(data_nascimento) from alunos;

-- consultar dia de uma data
select day(data_nascimento) from alunos;

-- consultar a hora
select hour ('2020-12-31 22:59:01')

-- consultar minuto
select minute ('2020-12-31 22:59:01')

--consultar segundo
select second ('2020-12-31 22:59:01')

-- consultar alunos de 70 ate 90
select nome, data_nascimento, year(data_nascimento)
from alunos
where year(data_nascimento) >= 1970 and year (data_nascimento) <= 1999
order by data_nascimento asc;

-- Operadores relacionais
--Maior >
--Maior ou igual >=
--menor
--Menor ou igual <=
-- diferente !=
-- igual =

-- Operadores logicos
-- E  AND
-- Ou OR

-- COnsultar nome dos alunos em maiusculo
select upper(nome) from alunos;

-- Consultar nomes dos alunos em minusculo
select lower(nome) from alunos;


--Dever de casa:

--Substring
--Replace
--Length
--Concat
--LTrim
--RTrim
--Trim



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

