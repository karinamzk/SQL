CREATE DATABASE bd_ecommerce;

USE bd_ecommerce;

CREATE TABLE tb_produtos(
	Id BIGINT IDENTITY(1,1),
	Nome VARCHAR(255) NOT NULL,
	Quantidade INT,
	Preco decimal NOT NULL,
	Avalicao INT,
	Vendidos INT,
	Nota DECIMAL(6,2) NOT NULL,
	Descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY(Id)
);

DROP TABLE tb_produtos;

INSERT INTO tb_produtos
(Nome, Quantidade, Preco, Avalicao, Vendidos, Nota, Descricao)
VALUES
('Tênis Adidas', 50, 250, 500, 1.2, 4.8, 'Tenis Adidas Original');

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos
(Nome, Quantidade, Preco, Avalicao, Vendidos, Nota, Descricao)
VALUES
('Micro-ondas',100 ,600 ,137 ,207 ,4 ,'Micro-ondas 34 litros 1400 watts espelhado - MO-02-34-E - Mondial'),
('Espremedor de Frutas',250 ,599 ,456 ,500 ,5 ,'Espremedor de frutas 1,25L dupla rotação Power Turbo Citrus - E-01 - Mondial'),
('Panela elétrica de arroz',100 ,167 ,356 ,400 ,5 ,'Espremedor de frutas 1,25L dupla rotação Power Turbo Citrus - E-01 - Mondial'),
('Liquidificador com Filtro Mondial',112 ,599 ,456 ,500 ,5 ,'Liquidificador com Filtro Mondial L-99-FB 500W 2.2L Preto 127V'),
('Batedeira Planetária',229 ,50 ,456 ,500 ,5 ,'Batedeira Planetária Philco Turbo Branca'),
('Creatina Monohidratada',200 ,599 ,456 ,500 ,5 ,'Creatina Monohidratada Pura 1kg, 500g, 300g e 150g Dark Lab - Creatine, Creatina 100% Pura'),
('Caixa Térmica',169 ,599 ,456 ,500 ,5 ,'Caixa Térmica Unitermi Cooler Floripa Com Alça');

SELECT * FROM tb_produtos WHERE preco >500;

SELECT * FROM tb_produtos WHERE preco <500;

UPDATE tb_produtos SET Preco = 300 WHERE Id= 1;