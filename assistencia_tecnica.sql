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


-- # TABELA CLIENTES

-- # 48 - Criar uma tabela chamada "clientes" com os campos: id, nome
CREATE table clientes (
id INT auto_increment primary key,
nome VARCHAR(200) not null
);

-- # 49 - Inserir 10 registros de clientes com os seguintes nomes:
-- #       Ana Paula Silva
-- #       João Carlos Santos
-- #       Maria Oliveira
-- #       Pedro Henrique Costa
-- #       Juliana Alves
-- #       Roberto Ferreira
-- #       Carla Souza
-- #       Lucas Rodrigues
-- #       Fernanda Lima
-- #       Marcos Antônio Pereira

insert into clientes (nome) values
('Ana Paula Silva'),
('João Carlos Santos'),
('Maria Oliveira'),
('Pedro Henrique Costa'),
('Juliana Alves'),
('Roberto Ferreira'),
('Carla Souza'),
('Lucas Rodrigues'),
('Fernanda Lima'),
('Marcos Antônio Pereira');


-- # 50 - Consultar todos os clientes
select * from clientes;

-- # 51 - Consultar os clientes ordenando por nome em ordem crescente
select * from clientes order by nome asc;

-- # 52 - Consultar os clientes ordenando por nome em ordem decrescente
select * from clientes order by nome desc;


-- # 53 - Consultar os clientes limitando a 3 registros
select * from clientes limit 3;

-- # 54 - Consultar os clientes filtrando por id maior que 5
select * from clientes where id > 5;

-- # 55 - Consultar os clientes filtrando por nome que comece com a letra "A"
select * from clientes where nome like "A%";

-- # 56 - Consultar os clientes filtrando por nome que termine com a letra "a"
select * from clientes where nome like "%a";


-- # 57 - Consultar os clientes filtrando por nome que contenha a palavra "Silva"
select * from clientes where nome like "%Silva%"


-- # 58 - Consultar os clientes filtrando por id entre 3 e 8
select * from clientes where id >= 3 and id <=8; 

-- # 59 - Consultar a quantidade total de clientes cadastrados
select count(*) as id from clientes;

-- # 60 - Consultar os clientes filtrando por nome que contenha "Maria" ou "João"
select * from clientes where nome like "%Maria%" or nome like "João";


-- # 61 - Consultar os clientes exibindo apenas o nome sem o id
select nome from clientes;


-- # 62 - Consultar os clientes onde o nome tenha mais de 15 caracteres
select * from clientes where CHARACTER_LENGTH(nome) > 15;
 

-- # 63 - Consultar os clientes com o nome em letras maiúsculas
select upper(nome) from clientes;


-- # 64 - Consultar os clientes substituindo espaços por underline no nome (usar REPLACE)
select replace (nome, ' ', '_') AS nome_formatado from clientes;


-- # 65 - Consultar os clientes mostrando apenas as cinco primeiras letras do nome (SUBSTRING)
select substring(nome, 1, 5) as primeiras_letras from clientes;


-- # 66 - Consultar os clientes que não contenham a palavra "Santos"
select * from clientes where nome not like "%Santos%";


-- # 67 - Consultar os clientes com o nome em letras minúsculas
select lower(nome) from clientes;


-- # 68 - Consultar os clientes onde o id seja diferente de 7
select * from clientes where id <> 7;

-- # 69 - Consultar os clientes e ordenar por tamanho do nome (LENGTH)
select * from clientes order by character_length(nome) asc;


-- # 70 - Adicionar uma coluna chamada "telefone" na tabela "clientes"
alter table clientes add COLUMN telefone Varchar(22)

-- # 71 - Atualizar todos os clientes definindo os seguintes telefones:
Select * from clientes;

-- #       (11) 98765-4321 para id 1
-- #       (21) 91234-5678 para id 2
-- #       (31) 99876-5432 para id 3
-- #       (41) 92345-6789 para id 4
-- #       (51) 93456-7890 para id 5
-- #       (61) 94567-8901 para id 6
-- #       (71) 95678-9012 para id 7
-- #       (81) 96789-0123 para id 8
-- #       (91) 97890-1234 para id 9
-- #       (11) 98901-2345 para id 10

update clientes set telefone = '(11) 98765-4321' where id = 1;
update clientes set telefone = '(21) 91234-5678' where id = 2;
update clientes set telefone = '(31) 99876-5432' where id = 3;
update clientes set telefone = '(41) 92345-6789' where id = 4;
update clientes set telefone = '(51) 93456-7890' where id = 5;
update clientes set telefone = '(61) 94567-8901' where id = 6;
update clientes set telefone = '(71) 95678-9012' where id = 7;
update clientes set telefone = '(81) 96789-0123' where id = 8;
update clientes set telefone = '(91) 97890-1234' where id = 9;
update clientes set telefone = '(11) 98901-2345' where id = 10;

-- # 72 - Consultar os clientes filtrando por telefone que comece com "(11)"
select * from clientes where telefone like "(11)%";


-- # 73 - Consultar os clientes filtrando por telefone que contenha "9876"
select * from clientes where telefone like "%9876%";


-- # 74 - Adicionar uma coluna chamada "email" na tabela "clientes"
alter table clientes add COLUMN email Varchar(150);

Select * from clientes

-- # 75 - Atualizar todos os clientes definindo os seguintes emails:
-- #       ana.silva@gmail.com para id 1
-- #       joao.santos@hotmail.com para id 2
-- #       maria.oliveira@yahoo.com.br para id 3
-- #       pedro.costa@gmail.com para id 4
-- #       juliana.alves@outlook.com para id 5
-- #       roberto.ferreira@gmail.com para id 6
-- #       carla.souza@hotmail.com para id 7
-- #       lucas.rodrigues@gmail.com para id 8
-- #       fernanda.lima@yahoo.com.br para id 9
-- #       marcos.pereira@outlook.com para id 10

update clientes set email = 'ana.silva@gmail.com' where id = 1;
update clientes set email = 'joao.santos@hotmail.com' where id = 2;
update clientes set email = 'maria.oliveira@yahoo.com.br' where id = 3;
update clientes set email = 'pedro.costa@gmail.com' where id = 4;
update clientes set email = 'juliana.alves@outlook.com' where id = 5;
update clientes set email = 'roberto.ferreira@gmail.com' where id = 6;
update clientes set email = 'carla.souza@hotmail.com' where id = 7;
update clientes set email = 'lucas.rodrigues@gmail.com ' where id = 8;
update clientes set email = 'fernanda.lima@yahoo.com.br' where id = 9;
update clientes set email = 'marcos.pereira@outlook.com' where id = 10;


-- # 76 - Consultar os clientes filtrando por email que contenha "@gmail.com"
select * from clientes where email like "%@gmail.com%";


-- # 77 - Consultar os clientes filtrando por email que termine com ".com.br"
select * from clientes where email like "%.com.br";



-- # 78 - Adicionar uma coluna chamada "cidade" na tabela "clientes"
alter table clientes add COLUMN cidade Varchar(150);


Select * from clientes

-- # 79 - Atualizar todos os clientes definindo as seguintes cidades:
-- #       São Paulo para id 1
-- #       Rio de Janeiro para id 2
-- #       Belo Horizonte para id 3
-- #       Curitiba para id 4
-- #       Porto Alegre para id 5
-- #       Brasília para id 6
-- #       Salvador para id 7
-- #       Recife para id 8
-- #       Belém para id 9
-- #       São Paulo para id 10

update clientes set cidade = 'São Paulo' where id = 1;
update clientes set cidade = 'Rio de Janeiro' where id = 2;
update clientes set cidade = 'Belo Horizonte' where id = 3;
update clientes set cidade = 'Curitiba' where id = 4;
update clientes set cidade = 'Porto Alegre' where id = 5;
update clientes set cidade = 'Brasília' where id = 6;
update clientes set cidade = 'Salvador' where id = 7;
update clientes set cidade = 'Recife' where id = 8;
update clientes set cidade = 'Belém' where id = 9;
update clientes set cidade = 'São Paulo' where id = 10;



-- # 80 - Consultar os clientes filtrando por cidade "São Paulo"
select * from clientes where cidade like "%São Paulo%";


-- # 81 - Adicionar uma coluna chamada "data_cadastro" do tipo date na tabela "clientes"



-- # 82 - Atualizar todos os clientes definindo as seguintes datas de cadastro:
-- #       15/11/2024 para id 1
-- #       20/10/2024 para id 2
-- #       10/09/2024 para id 3
-- #       25/08/2024 para id 4
-- #       30/07/2024 para id 5
-- #       12/06/2024 para id 6
-- #       18/05/2024 para id 7
-- #       22/04/2024 para id 8
-- #       14/03/2024 para id 9
-- #       28/02/2024 para id 10
-- # 83 - Consultar os clientes cadastrados no mês de novembro
-- # 84 - Consultar os clientes cadastrados entre 01/03/2024 e 30/06/2024
-- # 85 - Consultar os clientes ordenando pela data de cadastro mais recente primeiro
-- # 86 - Consultar o ano da data de cadastro de todos os clientes (usar YEAR)
-- # 87 - Consultar o mês da data de cadastro de todos os clientes (usar MONTH)
-- # 88 - Consultar o dia da data de cadastro de todos os clientes (usar DAY)
-- # 89 - Consultar o nome do mês da data de cadastro em português (usar DATE_FORMAT com %M)
-- # 90 - Consultar o nome do dia da semana da data de cadastro (usar DATE_FORMAT com %W)
-- # 91 - Consultar a data de cadastro formatada como DD/MM/YYYY (usar DATE_FORMAT)
-- # 92 - Consultar quantos dias se passaram desde o cadastro de cada cliente (usar DATEDIFF com data atual)
-- # 93 - Consultar os clientes cadastrados há mais de 180 dias
-- # 94 - Consultar os clientes cadastrados há menos de 90 dias
-- # 95 - Consultar a data de cadastro adicionando 30 dias (usar DATE_ADD)
-- # 96 - Consultar a data de cadastro subtraindo 15 dias (usar DATE_SUB)
-- # 97 - Consultar os clientes que se cadastraram em dias pares do mês
-- # 98 - Consultar os clientes que se cadastraram em dias ímpares do mês
-- # 99 - Consultar os clientes formatando a data como "Mês Ano" exemplo: "Novembro 2024" (usar DATE_FORMAT)
-- # 100 - Adicionar uma coluna chamada "status" na tabela "clientes"
-- # 101 - Atualizar todos os clientes definindo os seguintes status:
-- #       Ativo para id 1
-- #       Ativo para id 2
-- #       Pendente para id 3
-- #       Ativo para id 4
-- #       Inativo para id 5
-- #       Ativo para id 6
-- #       Ativo para id 7
-- #       Pendente para id 8
-- #       Ativo para id 9
-- #       Inativo para id 10
-- # 102 - Consultar os clientes filtrando por status "Ativo"
-- # 103 - Consultar os clientes filtrando por status "Inativo" ou "Pendente"
-- # 104 - Adicionar uma coluna chamada "cpf" na tabela "clientes"
-- # 105 - Atualizar todos os clientes definindo os seguintes CPFs:
-- #       123.456.789-01 para id 1
-- #       234.567.890-12 para id 2
-- #       345.678.901-23 para id 3
-- #       456.789.012-34 para id 4
-- #       567.890.123-45 para id 5
-- #       678.901.234-56 para id 6
-- #       789.012.345-67 para id 7
-- #       890.123.456-78 para id 8
-- #       901.234.567-89 para id 9
-- #       012.345.678-90 para id 10
-- # 106 - Consultar os clientes filtrando por CPF que comece com "123"
-- # 107 - Consultar os clientes onde o CPF contenha "456"
-- # 108 - Adicionar uma coluna chamada "total_gasto" do tipo decimal na tabela "clientes"
-- # 109 - Atualizar o total gasto dos clientes definindo os seguintes valores:
-- #       R$ 1.250,00 para id 1
-- #       R$ 890,50 para id 2
-- #       R$ 2.340,00 para id 3
-- #       R$ 560,00 para id 4
-- #       R$ 3.120,75 para id 5
-- #       R$ 780,00 para id 6
-- #       R$ 1.890,00 para id 7
-- #       R$ 450,00 para id 8
-- #       R$ 2.670,00 para id 9
-- #       R$ 1.100,00 para id 10
-- # 110 - Consultar o valor total gasto por todos os clientes
-- # 111 - Consultar o menor valor gasto entre todos os clientes
-- # 112 - Consultar o maior valor gasto entre todos os clientes
-- # 113 - Consultar a média de valores gastos por todos os clientes
-- # 114 - Consultar os clientes com total gasto maior que R$ 1.000,00
-- # 115 - Consultar os clientes com total gasto menor que R$ 1.000,00
-- # 116 - Consultar os clientes ordenando pelo total gasto em ordem decrescente
-- # 117 - Consultar os 5 clientes que mais gastaram
-- # 118 - Adicionar uma coluna chamada "data_ultima_compra" do tipo date na tabela "clientes"
-- # 119 - Atualizar a data da última compra dos clientes definindo as seguintes datas:
-- #       10/11/2024 para id 1
-- #       15/11/2024 para id 2
-- #       20/10/2024 para id 3
-- #       05/09/2024 para id 4
-- #       18/08/2024 para id 5
-- #       22/07/2024 para id 6
-- #       30/06/2024 para id 7
-- #       12/05/2024 para id 8
-- #       08/04/2024 para id 9
-- #       25/03/2024 para id 10
-- # 120 - Consultar os clientes que fizeram a última compra há mais de 120 dias
-- # 121 - Consultar os clientes que fizeram a última compra no mesmo mês do cadastro
-- # 122 - Consultar a diferença em dias entre a data de cadastro e a última compra de cada cliente
-- # 123 - Consultar os clientes cadastrados em 2024
-- # 124 - Consultar os clientes cadastrados no primeiro semestre (janeiro a junho)
-- # 125 - Consultar os clientes cadastrados no segundo semestre (julho a dezembro)
-- # 126 - Consultar a data da última compra formatada como "DD de Mês de YYYY" exemplo: "10 de Novembro de 2024"
-- # 127 - Consultar os clientes onde o mês da última compra seja igual ao mês atual
-- # 128 - Consultar os clientes ordenando pela diferença entre cadastro e última compra (do maior para o menor)
-- # 129 - Consultar o trimestre da data de cadastro (usar QUARTER)
-- # 130 - Consultar os clientes cadastrados no mesmo trimestre
-- # 131 - Atualizar a data_ultima_compra para NULL do cliente com id 10 (simulando cliente que nunca comprou)
-- # 132 - Consultar os clientes que nunca compraram (data_ultima_compra NULL)
-- # 133 - Consultar a semana do ano em que cada cliente se cadastrou (usar WEEK)
-- # 134 - Consultar os clientes cujo nome contenha a letra "e"
-- # 135 - Consultar os clientes cujo email contenha "gmail" ou "hotmail"
-- # 136 - Atualizar o status para "Inativo" dos clientes com total gasto igual a zero
-- # 137 - Consultar os clientes filtrando por cidade ordenando por total gasto decrescente
-- # 138 - Consultar o dia do ano em que cada cliente se cadastrou (usar DAYOFYEAR)
-- # 139 - Consultar os clientes que se cadastraram em finais de semana (usar DAYOFWEEK)
-- # 140 - Consultar a data de cadastro no formato "AAAA-MM" para agrupar visualmente por mês/ano
-- # 141 - Consultar os clientes adicionando 1 ano à data de cadastro (aniversário de cliente)
-- # 142 - Consultar os clientes onde o ano da última compra seja diferente do ano de cadastro
-- # 143 - Consultar a data e hora atual do sistema (usar NOW)
-- # 144 - Consultar apenas a data atual do sistema (usar CURDATE)
-- # 145 - Consultar apenas o horário atual do sistema (usar CURTIME)
-- # 146 - Consultar todas as colunas dos clientes ordenando por data de cadastro, não utilizar wildcard
-- # 147 - Inserir um novo cliente com os seguintes valores:
-- #       nome: "Carlos Alberto Mendes"
-- #       telefone: "(85) 99123-4567"
-- #       email: "carlos.mendes@email.com"
-- #       cidade: "Fortaleza"
-- #       data_cadastro: 2024-12-01
-- #       status: "Ativo"
-- #       cpf: "987.654.321-00"
-- #       total_gasto: 1500.00
-- #       data_ultima_compra: 2024-12-15
-- # 148 - Consultar o último dia do mês de cadastro de cada cliente (usar LAST_DAY)
-- # 149 - Consultar os clientes convertendo a data de cadastro para timestamp (usar UNIX_TIMESTAMP)
-- # 150 - Consultar os clientes exibindo há quantos meses cada um se cadastrou (usar TIMESTAMPDIFF)
-- # 151 - Consultar os clientes que se cadastraram em meses com 31 dias
-- # 152 - Consultar os clientes exibindo a idade do cadastro em anos completos (usar TIMESTAMPDIFF com YEAR)
-- # 153 - Consultar a data de cadastro adicionando 6 meses (usar DATE_ADD com MONTH)
-- # 154 - Consultar os clientes onde a diferença entre cadastro e última compra seja menor que 30 dias
-- # 155 - Consultar os clientes formatando a data de cadastro como "Nome_do_Dia, DD/MM/YYYY"