CREATE DATABASE db_escola;

CREATE TABLE tb_alunos (
ID BIGINT AUTO_INCREMENT,
Nome VARCHAR (255),
Ano VARCHAR (2),
Sexo VARCHAR (1),
Idade INT (2),
Nota DECIMAL (3,2),
 
 PRIMARY KEY (ID)
 );
 
 INSERT INTO tb_alunos (Nome,Ano,Sexo,Idade,Nota)
 VALUES ("Monalisa Silva","2º","F",16,2.0);
 
 SELECT * FROM tb_alunos;
 
 SELECT * FROM tb_alunos WHERE nota > 7.0;

 SELECT * FROM tb_alunos WHERE nota < 7.0;
 
 UPDATE tb_alunos
SET nota = 3.0
WHERE id=3;