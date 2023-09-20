CREATE DATABASE db_cidade_das_carnes

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY (1,1),
	Tipo VARCHAR(255) NOT NULL,
	Disponibilidade VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Estoque INT,
	Preco DECIMAL(6,2),
	Marca VARCHAR(255) NOT NULL,
	PRIMARY KEY(id),
	Categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id), 
);

SELECT * FROM tb_categorias;

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (Tipo, Disponibilidade)
VALUES 
('Aves', 'Disponivel'),
('Linguiça', 'Indisponivel'),
('Bovino', 'Disponivel'),
('Suíno','Disponivel'),
('Emputidos','Indisponivel');

INSERT INTO tb_produtos
(Nome, Estoque, Preco, Marca, Categoria_id)
VALUES
('Linguiça Toscana', '0', 30.00,'Aurora', 2),
('Contra Filé Bovino','50', 70.00,'Aurora',3),
('Linguiça Toscana', '0', 30.00,'Sadia', 2),
('Linguiça Calabresa', '0', 30.00,'Ceratti',2),
('Meio Da Asa', '50', 80.00,'Aurora', 1),
('Coxão Mole', '0', 30.00,'Aurora', 2),
('Presunto', '0', 30.00,'Aurora', 5),
('Lagarto', '50', 30.00,'Aurora', 4);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_produtos.Categoria_id
WHERE tb_categorias.id = 4;


