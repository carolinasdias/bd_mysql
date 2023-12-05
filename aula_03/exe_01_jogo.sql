CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classes (
    id_classe bigint AUTO_INCREMENT,
    nome_classe VARCHAR(50) NOT NULL,
    descricao_classe VARCHAR(255),
    PRIMARY KEY(id_classe)
    );
    
    INSERT INTO tb_classes (nome_classe, descricao_classe) VALUES
('Guerreiro', 'Luta para se defender'),
('Mago', 'Magia para se defender'),
('Arqueiro', 'Ataques à distância'),
('Ladrão', 'Agil e furtiva'),
('Cavaleiro', 'Habilidades de carga');

CREATE TABLE tb_personagens (
    id_personagem bigint AUTO_INCREMENT,
    nome_personagem VARCHAR(50) NOT NULL,
    nivel INT,
    poder_ataque INT,
    poder_defesa INT,
    id_classe BIGINT,
    PRIMARY KEY (id_personagem),
    FOREIGN KEY (id_classe) REFERENCES tb_classes(id_classe)
);

INSERT INTO tb_personagens (nome_personagem, nivel, poder_ataque, poder_defesa, id_classe) VALUES
('Herói1', 10, 2500, 1500, 1),
('Magus', 8, 1800, 1200, 2),
('Atirador', 12, 2200, 1800, 3),
('Ladino', 6, 1600, 900, 4),
('Cavaleiro1', 15, 2800, 2000, 5),
('Herói2', 11, 2100, 1600, 1),
('Arqueira', 9, 2000, 1500, 3),
('Ladrão2', 7, 1700, 1000, 4);

SELECT * FROM tb_personagens;

-- SELECT para personagens com poder de ataque maior que 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- SELECT para personagens com poder de defesa entre 1000 e 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- SELECT para personagens com letra C no nome
SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

-- SELECT utilizando INNER JOIN para unir dados de tb_personagens e tb_classes
SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id_classe;

-- SELECT utilizando INNER JOIN para unir dados de tb_personagens e tb_classes para uma classe específica
SELECT * FROM tb_personagens 
INNER JOIN tb_classes 
ON tb_personagens.id_classe = tb_classes.id_classe 
WHERE tb_classes.nome_classe = 'Arqueiro';

DROP DATABASE db_generation_game_online;