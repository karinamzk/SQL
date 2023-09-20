CREATE DATABASE bd_curso_da_minha_vida;

USE bd_curso_da_minha_vida;

CREATE TABLE tb_categorias(
	Id BIGINT IDENTITY(1,1),
	Trilhas VARCHAR (255) NOT NULL,
	Modalidade VARCHAR (255) NOT NULL,
	PRIMARY KEY(Id)
);

CREATE TABLE tb_cursos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Duracao INT,
	Preco DECIMAL(6,2),
	Avaliacao DECIMAL(6,2),
	PRIMARY KEY(id),
	Categoria_id BIGINT,
	FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (trilhas, Modalidade)
VALUES ('Front-end', 'Online'),
('UX-Desing', 'Presencial'),
('Data Science', 'Presencial'),
('Mobile','Online'),
('Inovação e Gestão','Presencial');

SELECT * FROM tb_categorias;

SELECT * FROM tb_cursos;

INSERT INTO tb_cursos
(Nome, Duracao, Preco, Categoria_id, Avaliacao)
VALUES 
('Html e Css', 08, 400.00, 1, 4.6),
('SQL e Banco de dados',12, 550.00, 3,4.6),
('Video e Motion',12, 500.00, 2,4.6),
('React Native',15, 750.00, 4, 4.6),
('Metodos Ageis',12, 550.00, 5, 4.9),
('Sotfskills',12, 550.00, 5, 4.9),
('NoSQL',12, 750.00, 3,4.6),
('React',12, 550.00, 1, 4.9);

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE '%s%';

SELECT nome, duracao, preco, Categoria_id, Avaliacao, trilhas, Modalidade FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.Categoria_id;

SELECT nome, duracao, preco, Categoria_id, Avaliacao, trilhas, Modalidade FROM tb_cursos INNER JOIN tb_categorias
ON tb_categorias.Id = tb_cursos.Categoria_id
WHERE tb_categorias.id = 5;