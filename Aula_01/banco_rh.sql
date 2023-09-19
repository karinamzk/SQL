CREATE DATABASE db_funcionarios;

USE db_funcionarios;

CREATE TABLE tb_rh(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Cpf DECIMAL,
	Cargo VARCHAR(255) NOT NULL,
	Salario DECIMAL,
	PRIMARY KEY(Id)
);

INSERT INTO tb_rh
(Nome, Cpf, Cargo, Salario)
VALUES
('Karina Akina ', 12365498, 'Desenvolvedor Junior', 1800);

DROP TABLE tb_rh;

INSERT INTO tb_rh
(Nome, Cpf, Cargo, Salario)
VALUES
('Shomara Quispe', 98765487, 'Desenvolvedor Junior', 5000),
('Lucas Paixão', 65432154, 'Desenvolvedor Junior', 2500),
('João Maia', 32165421, 'Desenvolvedor Junior', 1800),
('Sofia Miyazaki', 654321564, 'Desenvolvedor Junior', 5000);

SELECT * FROM tb_rh;

SELECT * FROM tb_rh WHERE Salario > 2000;

SELECT * FROM tb_rh WHERE Salario < 2000;

UPDATE tb_rh SET Salario = 5000 WHERE Id = 1;

