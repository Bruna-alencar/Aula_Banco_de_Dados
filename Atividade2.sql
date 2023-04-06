CREATE DATABASE db_ecommerce;

CREATE TABLE tb_produtos (
ID BIGINT AUTO_INCREMENT,
Produto VARCHAR (255),
Categoria VARCHAR (255),
Preço DECIMAL (10,2),
Quantidade INT (3),

PRIMARY KEY (ID)
);

INSERT INTO tb_produtos (Produto, Categoria, Preço, Quantidade)
VALUES ("Sofá","Móvel",1100.00,4);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE Preço > 500;

SELECT * FROM tb_produtos WHERE Preço < 500;

UPDATE tb_produtos
SET Quantidade = 3
WHERE ID=8;
