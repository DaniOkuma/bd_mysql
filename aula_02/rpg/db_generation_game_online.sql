CREATE DATABASE db_generation_game_online;
USE db_generation_game_online;

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
ataque DECIMAL NOT NULL,
defesa DECIMAL NOT NULL,
phabilidade DECIMAL NOT NULL,
hp DECIMAL NOT NULL,
mp DECIMAL NOT NULL,
classeid BIGINT,

PRIMARY KEY (id)
);

INSERT INTO tb_personagens (nome, ataque, defesa, phabilidade, hp, mp, classeid)
VALUES ("Asukari",  1000, 2000, 7000, 3000, 5500, 5),
("Kyou",  1000, 2200, 6000, 3500, 6000, 1),
("Madoka", 900, 2100, 5000, 2500, 7000, 5),
("Ren",  9500, 4000, 2000, 5000, 5000, 3),
("Aoi", 15000, 1500, 6000, 2500, 4000, 4),
("Himari", 1500, 2000, 6500, 2500, 5000, 5),
("Tsuki",  900, 8000, 4000, 10000, 1900, 2),
("Kazuma",  2000, 9000, 3000, 12000, 2000, 2);

CREATE TABLE tb_classes(
id BIGINT auto_increment PRIMARY KEY,
classe VARCHAR(255) NOT NULL,
arma VARCHAR(255) NOT NULL
);

INSERT INTO tb_classes(classe, arma)
VALUES ("Mago", "Cajado"),
("Tank", "Escudo"),
("Guerreiro", "Espada"),
("Assassino", "Adaga"),
("Sacerdotisa", "Cajado");

ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes 
FOREIGN KEY (classeid) REFERENCES tb_classes (id);

SELECT * FROM tb_personagens;


SELECT * FROM tb_personagens WHERE ataque >= 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000 ORDER BY nome;
SELECT * FROM tb_personagens WHERE nome Like "%c%";

SELECT nome, ataque, defesa, phabilidade, hp, mp, tb_classes.classe AS classe, tb_classes.arma AS arma
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id;

SELECT nome, ataque, defesa, phabilidade, hp, mp, tb_classes.classe AS classe, tb_classes.arma AS arma
FROM tb_personagens INNER JOIN tb_classes 
ON tb_personagens.classeid = tb_classes.id
WHERE classe = "sacerdotisa";


