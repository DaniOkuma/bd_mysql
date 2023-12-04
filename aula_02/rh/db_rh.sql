CREATE DATABASE db_rh;
USE db_rh;
CREATE TABLE tb_colaboradores(
id BIGINT AUTO_INCREMENT,
funcao VARCHAR(255) NOT NULL,
nome VARCHAR(255) NOT NULL,
salario DECIMAL NOT NULL,
aniversario DATE,
entradaempresa DATE NOT NULL,

PRIMARY KEY (id)
);

INSERT INTO tb_colaboradores (funcao, nome, salario, aniversario, entradaempresa)
VALUES ("Secretária", "Alexa", 3000.00, "1987-02-21", "2019-05-20"),
("Gerente", "Maurício", 10000.00, "1979-01-14", "2015-08-10"),
("Desenvolvedor", "Patrícia", 7000.00, "1982-12-30", "2020-02-12"),
("Porteiro", "José", 2500.00, "1970-08-02", "2010-01-29"),
("Designer", "Osvaldo", 5500.00, "1990-09-16", "2021-01-22");


SELECT * FROM tb_colaboradores WHERE salario > 2000.00;
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 6000.00 WHERE id = 5;

