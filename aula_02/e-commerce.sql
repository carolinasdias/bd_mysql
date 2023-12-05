CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
tipo varchar(255),
valor decimal(6,2),
cor varchar(255),
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, tipo, valor, cor)
VALUES ("calça", "roupa", 100.00, "azul");

INSERT INTO tb_produtos(produto, tipo, valor, cor)
VALUES ("tênis", "calçado", 50.00, "preto");

INSERT INTO tb_produtos(produto, tipo, valor, cor)
VALUES ("blusa", "roupa", "90.00", "amarelo");

INSERT INTO tb_produtos(produto, tipo, valor, cor)
VALUES ("saia", "roupa", 70.00, "preto");

INSERT INTO tb_produtos(produto, tipo, valor, cor)
VALUES ("sandália", "calçado", 110.00, "rosa");

INSERT INTO tb_produtos(produto, tipo, valor, cor)
VALUES ("camiseta", "roupa", 40.00, "roxo");

SELECT * FROM tb_produtos WHERE valor > 100.00;

SELECT * FROM tb_produtos WHERE valor < 100.00;


SELECT * FROM tb_produtos;

UPDATE tb_produtos SET valor = 90.00 WHERE ID = 1;

