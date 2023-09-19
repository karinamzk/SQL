CREATE DATABASE db_quitanda;

USE db_quitanda;

-- CRIANDO A TABELA PRODUTOS

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL NOT NULL,
	PRIMARY KEY(id)
);


INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Laranja', 20, '2023-09-18', 8.00);



INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Maçã', 10, '2023-09-18', 15.25);

-- INSERIR DADOS NA TABELA PRODUTOS

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Couve', 35, '2023-09-18', 5.00),
('Banana', 25, '2023-09-18', 16.00);

-- SELECIONAR A TABELA PRODUTOS

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Id = 1;

SELECT * FROM tb_produtos WHERE Nome = 'banana';

SELECT Nome, Quantidade, Preco FROM tb_produtos WHERE Nome = 'banana';

SELECT * FROM tb_produtos WHERE Id = 1 or Id = 2 or Id =3;

SELECT * FROM tb_produtos WHERE preco >4 AND preco <10;

ALTER TABLE tb_produtos ALTER COLUMN preco DECIMAL(6,2);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco)
VALUES
('Milho', 10, '2023-09-18', 10.25);

-- ADICIONAR UMA COLUNA COM O 'ADD'

ALTER TABLE tb_produtos ADD Descricao VARCHAR(255);

-- ATUALIZANDO A DESCRIÇÃO COM UPDATE

UPDATE tb_produtos SET Descricao ='Milho verde organico' WHERE Id = 5;

-- DELETANDO UM ID

DELETE FROM tb_produtos WHERE Id = 6;

SELECT Nome as 'Nome do produto', Descricao as 'Descrição' FROM tb_produtos;

