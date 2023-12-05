-- criar banco
CREATE DATABASE db_rh;

USE db_rh;

-- criar tabela
CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_nascimento date,
cargo varchar(255),
salario decimal(6,2) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("JOÃO", "1990-10-10", "gerente", 4000.00);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES("maria", "1991-11-06", "assistente", 2000.00);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES("carla", "1990-10-05", "assistente", 1500.00);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("andreia", "1985-10-09", "coordenadora", 3000.00);

INSERT INTO tb_funcionarios(nome, data_nascimento, cargo, salario)
VALUES ("paula", "2000-05-03", "estagiaria", 1000.00);

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

UPDATE tb_funcionarios SET salario = 4200.00 WHERE ID = 1;

SELECT * FROM tb_funcionarios;

DROP DATABASE db_rh
