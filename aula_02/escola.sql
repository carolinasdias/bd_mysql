CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255),
sobrenome varchar (255),
idade int,
nota decimal(4,2),
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, sobrenome, idade, nota)
VALUES ("maria", "silva", 14, 7.00),
("joao", "dias", 15, 8.00),
("paulo", "soares", 14, 5.00),
("marcos", "tenório", 13, 9.00),
("carlos", "manoel", 15, 10.00),
("vitor", "correia", 13, 6.5);

SELECT * FROM  tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.00;
SELECT * FROM tb_alunos WHERE nota < 7.00;

UPDATE tb_alunos SET nota = 8.00 WHERE id = 1;

DROP DATABASE db_escola
