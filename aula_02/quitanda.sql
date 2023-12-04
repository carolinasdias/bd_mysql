-- Criar Banco de Dados
CREATe DATABASE db_quitanda;

-- Acessar/Selecionar o Banco de Dados
USE db_quitanda;

-- Criar tabela
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int,
data_validade date,
preco decimal(6,2) NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela
INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("tomate",100, "2023-12-20", 8.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("maçã", 20, "2023-12-24", 5.00);

INSERT INTO tb_produtos(nome, quantidade, data_validade, preco)
VALUES ("banana", 100, "2023-12-25", 8.99);


-- Visualizar dados
SELECT * FROM tb_produtos;