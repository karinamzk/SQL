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

-- ORDENAR A TABELA ENTRE OS PREÇOES DE 5 A 15

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

-- SELECIONAR UMA PALAVRA COM O INICIO COM O B

SELECT * FROM tb_produtos WHERE nome LIKE 'b%';

--SELECIONAR UMA PALAVRA COM O FINAL COM A

SELECT * FROM tb_produtos WHERE nome LIKE '%A';

--SELECIONAR AS PALAVRAS COM O A NO FINAL 

SELECT * FROM tb_produtos WHERE nome LIKE '%A%';

--CONTA QUANTAS LINHAS A TABELA TEM

SELECT COUNT (*) AS 'Numero de linhas' FROM tb_produtos;

-- SOMAR TODOS OS VALORES DA COLUNA PREÇO 

SELECT SUM(Preco) AS 'Valor total dos produtos' FROM tb_produtos;

-- DA A MEDIA DE VALORES DA COLUNA PREÇO 

SELECT AVG (preco) AS 'Média de preço' FROM tb_produtos;

-- SELECIONA O VALOR MAXIMO NA COLUNA PREÇO 

SELECT MAX (preco) AS 'Valor maximo' FROM tb_produtos;

--SELECIONA O VALOR MENOR NA COLUNA PREÇO 

SELECT AVG (preco) AS 'Valor minimo' FROM tb_produtos;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

SELECT * FROM tb_categorias;

-- Insere dados na tabela tb_categoriasINSERT INTO tb_categorias (Descricao)VALUES ('Frutas');INSERT INTO tb_categorias (Descricao)VALUES ('Verduras');INSERT INTO tb_categorias (Descricao)VALUES ('Legumes');INSERT INTO tb_categorias (Descricao)VALUES ('Temperos');INSERT INTO tb_categorias (Descricao)VALUES ('Ovos');INSERT INTO tb_categorias (Descricao)VALUES ('outros');--APAGAR A TABELA DROP TABLE tb_produtos;-- CRIAR UMA TABELA COM A CHAVE ESTRANGEIRA 'FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 'CREATE TABLE tb_produtos(
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
VALUES ('Maçã', 1000, '2022-03-07', 1.99, 1),('Banana', 1300, '2022-03-08', 5.00, 1),('Batata doce', 2000, '2022-03-09', 10.00, 3),('Alface', 300, '2022-03-10', 7.00, 2),('Cebola', 1020, '2022-03-08', 5.00, 3),('Ovo Branco', 1000, '2022-03-07', 15.00, 5),('Agrião', 1500, '2022-03-06', 3.00, 2),('Cenoura', 1800, '2022-03-09', 3.50, 3),('Pimenta', 1100, '2022-03-15', 10.00, 4),('Alecrim', 130, '2022-03-10', 5.00, 4),('Manga', 200, '2022-03-07', 5.49, 1),('Laranja', 3000, '2022-03-13', 10.00, 1);--RELACIONANDO AS TABELAS SELECT * FROM tb_produtos INNER JOIN tb_categoriasON tb_categorias.Id = tb_produtos.Categoria_id;--RELACIONANDO A TABELA DA ESQUERDA COM O MAIOR PESOSELECT * FROM tb_categorias LEFT JOIN tb_produtosON tb_categorias.Id = tb_produtos.Categoria_id;--INCLUINDO O DADOS NA TABELAINSERT INTO tb_produtos (Nome, Quantidade, Preco)VALUES ('Panela', 1118,150.80);--RELACIONANDO A TABELA DA DIREITO COM O MAIOR PESOSELECT * FROM tb_categorias RIGHT JOIN tb_produtosON tb_categorias.Id = tb_produtos.Categoria_idWHERE Nome like '%n%'ORDER BY nome ASC;