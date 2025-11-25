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





