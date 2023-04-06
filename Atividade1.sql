CREATE DATABASE db_rh;

CREATE TABLE tb_colaboradores (
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255),
idade INT,
salario DECIMAL(10,2),
cargo VARCHAR(255),

PRIMARY KEY (id)
);
INSERT INTO tb_colaboradores (nome,idade,salario,cargo) 
VALUES ("Bruna",22,2000.00,"estágio");

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000;

SELECT * FROM tb_colaboradores WHERE salario < 2000;

UPDATE tb_colaboradores
SET salario = 9000.00
WHERE id=1;