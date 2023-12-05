CREATE DATABASE db_cidade_das_carnes;
USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
cat_id BIGINT auto_increment,
origem_animal VARCHAR(255),
organico VARCHAR(255),
PRIMARY KEY(cat_id)
);

INSERT INTO tb_categorias(origem_animal, organico)
VALUES ("Bovino", "Não"),
("Suíno", "Não"),
("Suíno", "Sim"),
("Ave", "Não"),
("Ave", "Sim");

CREATE TABLE tb_produtos(
id BIGINT auto_increment,
tipo VARCHAR(255) NOT NULL,
peso_kg INT,
preco INT,
temperado VARCHAR(255),
categoria BIGINT,
PRIMARY KEY(id),
FOREIGN KEY (categoria) REFERENCES tb_categorias(cat_id)
);

INSERT INTO tb_produtos (tipo, peso_kg, preco, temperado, categoria)
VALUES ("Picanha",  100, 120, "Não", 1),
("Contra-filé",  200, 60, "Não", 3),
("Peito", 1000, 30, "Não", 5),
("Coração",  100, 36, "Sim", 5),
("Pé de galinha", 50, 10, "Não", 4),
("Lombo", 300, 28,"Sim", 2),
("Fraldinha",  500, 54, "Não", 1),
("Sobrecoxa",  600, 29, "Sim", 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50;
SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;
SELECT * FROM tb_produtos WHERE tipo Like "%c%";

SELECT tipo, peso_kg, preco, temperado, categoria, tb_categorias.origem_animal AS origem_animal, tb_categorias.organico AS organico
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria = tb_categorias.cat_id;

SELECT tipo, peso_kg, preco, temperado, categoria, tb_categorias.origem_animal AS origem_animal, tb_categorias.organico AS organico
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_produtos.categoria = tb_categorias.cat_id
WHERE origem_animal = "bovino";