CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
ID BIGINT AUTO_INCREMENT,
Soldados VARCHAR (255),
Cavaleiros VARCHAR (255),

PRIMARY KEY (ID)
);

CREATE TABLE tb_personagens (
ID BIGINT AUTO_INCREMENT,
Nome VARCHAR (255),
Ataque BIGINT (4),
Saúde INT (2),
Defesa BIGINT (4),

classes_ID BIGINT,
PRIMARY KEY (ID),
FOREIGN KEY (classes_ID) REFERENCES tb_classes(ID)
);

ALTER TABLE tb_classes
RENAME COLUMN Soldados to Básicos;

ALTER TABLE tb_classes
RENAME COLUMN Cavaleiros to Comuns;

INSERT INTO tb_classes (Básicos)
VALUES ("Guerreiro");
INSERT INTO tb_classes (Básicos)
VALUES ("Mago");
INSERT INTO tb_classes (Básicos)
VALUES ("Ladrão");
INSERT INTO tb_classes (Comuns)
VALUES ("Bárbaro");
INSERT INTO tb_classes (Comuns)
VALUES ("Bruxo");

SELECT * FROM tb_classes;

INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Magnus", 1000, 07, 900, 2);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Afrodite", 1900, 09, 2000, 5);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Noah", 2000, 10, 2000, 1);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Adric", 1000, 06, 1500, 3);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Thanos", 1700 , 08, 1900, 4);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Zeus", 950, 05, 700, 2);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Harry", 1300, 04, 300, 1);
INSERT INTO tb_personagens (Nome, Ataque, Saúde, Defesa, classes_ID)
VALUES ("Cedrico", 600, 07, 900, 4);

SELECT * FROM tb_personagens;

SELECT * FROM tb_personagens WHERE Ataque > 1000;

SELECT * FROM tb_personagens WHERE Defesa BETWEEN 1000 AND 2000;

SELECT * FROM tb_personagens WHERE Nome LIKE "%c%";

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_ID = tb_classes.ID; 

SELECT * FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_ID = tb_classes.ID
WHERE tb_classes.ID = 2;
