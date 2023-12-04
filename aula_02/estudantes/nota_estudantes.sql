CREATE DATABASE db_escola;
USE db_escola;
CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
serie DECIMAL NOT NULL,
professor VARCHAR (255) NOT NULL,
materia VARCHAR(255) NOT NULL,
nota DECIMAL (6,2),

PRIMARY KEY (id)
);

INSERT INTO tb_estudantes (nome, serie, professor, materia, nota)
VALUES ("João", 2, "Hugo", "Física", 8.65),
("Mariana", 2, "Hugo", "Física", 6.70),
("Augusto", 2, "Hugo", "Física", 5.40),
("Bernardo", 2, "Hugo", "Física", 9.75),
("Joaquim", 2, "Hugo", "Física", 7.60),
("Henrique", 2, "Hugo", "Física", 7.00),
("Paloma", 2, "Hugo", "Física", 8.10),
("Danilo", 2, "Hugo", "Física", 6.80);

SELECT * FROM tb_estudantes WHERE nota >= 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes SET nota = 7 WHERE id = 2;
UPDATE tb_estudantes SET nota = 7 WHERE id = 8;
