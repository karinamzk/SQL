CREATE DATABASE db_pizzaria_legal

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Tipo VARCHAR (255) NOT NULL,
	Tamanho VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE tb_pizzas(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	Preco DECIMAL(6,2),
	PRIMARY KEY(id),
	Categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 
);

INSERT INTO tb_categorias (Tipo, Tamanho)
VALUES ('Entrada', 'Inteiro'),('Pizza Tradicional', 'Inteiro'),('Pizza Vegana', 'Inteiro'),('Pizza Doce', 'Inteiro'),('Pizza Kids', 'Meia');

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas
(Nome, Quantidade, Preco, Categoria_id)
VALUES 
('Milho', 2, 40.00, 2),
('Brocolis',1, 55.00, 3),
('Palmito', 1, 44.00, 3),
('Mussarela', 2, 60.00, 2),
('MM s', 1, 43.00, 5),
('Chocolate', 1, 43.00, 4),
('Shimeji e Shitake', 1, 100.00, 3),
('Pão Italiano', 1, 15.00, 1);

SELECT * FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE '%M%';

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categoria_id
WHERE tb_categorias.id = 4;

SELECT nome, Quantidade AS 'Estoque', Preco, tipo, tamanho FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.Id = tb_pizzas.Categoria_id;

DROP TABLE tb_pizzas;

DROP TABLE tb_categorias;