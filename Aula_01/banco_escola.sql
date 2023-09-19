CREATE DATABASE db_escola

USE db_escola;

CREATE TABLE tb_alunos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Nota DECIMAL(6,2) NOT NULL,
	Materia VARCHAR(255) NOT NULL,
	Telefone INT,
	PRIMARY KEY(Id)
);

INSERT INTO tb_alunos
(Nome, Nota, Materia, Telefone)
VALUES
('Karina', 5, 'Portugues', 1321);

INSERT INTO tb_alunos
(Nome, Nota, Materia, Telefone)
VALUES
('Shomara', 9, 'Portugues', 654987),
('Lucas', 9, 'Historia', 987654),
('João', 7, 'Geografia', 654654),
('Sofia', 10, 'Ingles', 456654),
('Lara', 10, 'Portugues', 321654),
('Tamiko', 10, 'Portugues', 32165),
('Marcello', 10, 'Ingles', 987654),
('Monise', 10, 'Historia', 987654);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7;

SELECT * FROM tb_alunos WHERE nota < 7;

UPDATE tb_alunos SET nota = 10 WHERE Id = 4;