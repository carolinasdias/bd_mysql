CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias (
    id_categoria bigint AUTO_INCREMENT,
    nome_categoria VARCHAR(50) NOT NULL,
    descricao_categoria VARCHAR(255),
    PRIMARY KEY(id_categoria)
);

INSERT INTO tb_categorias (nome_categoria, descricao_categoria) 
VALUES
('Salgada', 'Pizzas com recheios salgados'),
('Doce', 'Pizzas com recheios doces'),
('Vegetariana', 'Pizzas sem carne'),
('Especial', 'Pizzas especiais'),
('Tradicional', 'Pizzas clássicas');

CREATE TABLE tb_pizzas (
    id_pizza bigint AUTO_INCREMENT,
    nome_pizza VARCHAR(50) NOT NULL,
    descricao_pizza VARCHAR(255),
    valor DECIMAL(10, 2) NOT NULL,
    id_categoria bigint,
    PRIMARY KEY (id_pizza),
    FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id_categoria)
);

SELECT * FROM tb_pizzas;

INSERT INTO tb_pizzas (nome_pizza, descricao_pizza, valor, id_categoria) VALUES
('Margarita', 'Molho de tomate, mussarela e manjericão', 45.90, 5),
('Calabresa', 'Calabresa, cebola e mussarela', 38.50, 1),
('Chocolate', 'Chocolate ao leite e morango', 55.00, 2),
('Vegetariana', 'Tomate, cogumelos, pimentão e azeitonas', 49.90, 3),
('Frango com Catupiry', 'Frango desfiado, catupiry e milho', 42.75, 4),
('Mista', 'Presunto, mussarela, tomate e azeitonas', 40.00, 1),
('Quatro Queijos', 'Mussarela, gorgonzola, parmesão e provolone', 47.80, 5),
('Doce de Leite', 'Doce de leite, banana e canela', 65.00, 2);

-- SELECT para pizzas com valor maior que R$ 45,00
SELECT * FROM tb_pizzas WHERE valor > 45.00;

-- SELECT para pizzas com valor entre R$ 50,00 e R$ 100,00
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

-- SELECT utilizando LIKE para pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome_pizza LIKE '%M%';

-- SELECT utilizando INNER JOIN para unir dados de tb_pizzas e tb_categorias
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria;

-- SELECT utilizando INNER JOIN para unir dados de tb_pizzas e tb_categorias para uma categoria específica
SELECT * FROM tb_pizzas 
INNER JOIN tb_categorias 
ON tb_pizzas.id_categoria = tb_categorias.id_categoria 
WHERE tb_categorias.nome_categoria = 'Doce';