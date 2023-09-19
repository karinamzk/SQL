USE db_quitanda

SELECT * FROM tb_produtos;

-- ORDENADAR POR ORDEM CRESCENTE A COLUNA NOME

SELECT * FROM tb_produtos ORDER BY nome ASC;

-- ORDENADAR POR ORDEM DECRESCENTE A COLUNA NOME

SELECT * FROM tb_produtos ORDER BY Preco DESC;

-- ORDENAR TUDO MENOS O INDICE 1

SELECT * FROM tb_produtos WHERE NOT id=1;

-- PARA ORDENAR PRIMEIRO PASAMOS OS CRITERIOS E DEPOIS O ORDER BY

SELECT * FROM tb_produtos WHERE preco IN(5,2,8) ORDER BY nome ASC;

-- ORDENAR A TABELA ENTRE OS PRE�OES DE 5 A 15

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

-- SELECIONAR UMA PALAVRA COM O INICIO COM O B

SELECT * FROM tb_produtos WHERE nome LIKE 'b%';

--SELECIONAR UMA PALAVRA COM O FINAL COM A

SELECT * FROM tb_produtos WHERE nome LIKE '%A';

--SELECIONAR AS PALAVRAS COM O A NO FINAL 

SELECT * FROM tb_produtos WHERE nome LIKE '%A%';

--CONTA QUANTAS LINHAS A TABELA TEM

SELECT COUNT (*) AS 'Numero de linhas' FROM tb_produtos;

-- SOMAR TODOS OS VALORES DA COLUNA PRE�O 

SELECT SUM(Preco) AS 'Valor total dos produtos' FROM tb_produtos;

-- DA A MEDIA DE VALORES DA COLUNA PRE�O 

SELECT AVG (preco) AS 'M�dia de pre�o' FROM tb_produtos;

-- SELECIONA O VALOR MAXIMO NA COLUNA PRE�O 

SELECT MAX (preco) AS 'Valor maximo' FROM tb_produtos;

--SELECIONA O VALOR MENOR NA COLUNA PRE�O 

SELECT AVG (preco) AS 'Valor minimo' FROM tb_produtos;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categorias
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	DataValidade DATE,
	Preco DECIMAL(6,2),
	PRIMARY KEY(id),
	Categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 
);

SELECT * FROM tb_produtos;

SELECT * FROM tb_categorias;

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Categoria_id)
VALUES
('Milho', 10, '2023-09-18', 10.25, 3),
('Abacate', 45, '2023-09-22', 5.25, 3);

INSERT INTO tb_produtos
(Nome, Quantidade, DataValidade, Preco, Categoria_id)
VALUES ('Ma��', 1000, '2022-03-07', 1.99, 1),