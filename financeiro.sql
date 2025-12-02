/* Criar as seguintes tabelas, categorias, entradas e saidas (sistema financeiro)
- tabela de categorias com as seguintes colunas
- id, nome
Criar 10 categorias

- tabela de entrada com as seguintes colunas:
-id, id ctegoria, nome e valor
criar 4 entradas

- tabela de saida com as seguintes colunas
- id, id_catgoria, nome, valor, data de vencimento, status (pendente ou pago)
Criar 5 saidas
*/

drop database if exists financeiro;
create database financeiro;
use financeiro;

CREATE TABLE categorias (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100)
);

INSERT INTO categorias (nome) VALUES
('Alimentação'),
('Transporte'),
('Lazer'),
('Saúde'),
('Educação'),
('Moradia'),
('Internet'),
('Energia'),
('Roupas'),
('Impostos');

SELECT * FROM categorias;

-- Tabela ENTRADAS corrigida
CREATE TABLE entradas (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_categoria INT,
	nome VARCHAR(100),
	valor DECIMAL(10,2),
	FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO entradas (id_categoria, nome, valor) VALUES
(1, 'Venda de produto', 350.00),
(2, 'Salário', 4500.00),
(3, 'Reembolso', 150.00),
(4, 'Freelancer', 900.00);

SELECT * FROM entradas;

CREATE TABLE saidas (
	id INT PRIMARY KEY AUTO_INCREMENT,
	id_categoria INT,
	nome VARCHAR(100),
	valor DECIMAL(10,2),
	data_vencimento DATE,
	status ENUM('pendente', 'pago'),
	FOREIGN KEY (id_categoria) REFERENCES categorias(id)
);

INSERT INTO saidas (id_categoria, nome, valor, data_vencimento, status) VALUES
(5, 'Curso online', 120.00, '2025-02-10', 'pendente'),
(6, 'Aluguel', 1500.00, '2025-02-05', 'pago'),
(7, 'Internet fibra', 99.90, '2025-02-12', 'pendente'),
(8, 'Conta de luz', 210.00, '2025-02-08', 'pago'),
(1, 'Supermercado', 320.50, '2025-02-03', 'pendente');

SELECT * FROM saidas;


