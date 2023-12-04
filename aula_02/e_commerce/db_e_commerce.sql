CREATE DATABASE db_e_commerce;
USE db_e_commerce;
CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
tipo VARCHAR(255) NOT NULL,
preco DECIMAL (6,2) NOT NULL,
validade DATE,
pesoKG DECIMAL (3,2),

PRIMARY KEY (id)
);

INSERT INTO tb_produtos (nome, tipo, preco, validade, pesoKG)
VALUES ("Creme para mãos", "Cosmético", 30.00, "2025-02-21", 0.05),
("Shampoo", "Cosmético", 15.00, "2025-05-30", 0.2),
("Pão australiano", "Alimento", 12.00, "2023-12-25", 0.5),
("Camisa xadrez", "Vestuário", 150.00, null , 0.15),
("Boneca", "Brinquedo", 100.00 , null , 0.25),
("Panetone", "Alimento", 90.00, "2023-12-30", 1.00),
("Perfume", "Cosmético", 700.00, "2026-01-17", 0.15),
("Playstation 5", "Eletrônico", 4000.00, null, 3.4);

SELECT * FROM tb_produtos WHERE preco > 500.00;
SELECT * FROM tb_produtos WHERE preco < 500.00;

UPDATE tb_produtos SET preco = 600.00 WHERE id = 7;


