CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

-- Criar a tabela de classes

CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);

-- Inserir dados na tabela tb_classes

INSERT INTO tb_classes (nome, descricao) VALUES
('Guerreiro', 'Especialista em combate e uso de espadas'),
('Mago', 'Usa feitiços e magias poderosas'),
('Arqueiro', 'Ataca à distância com precisão e agilidade'),
('Curandeiro', 'Responsável por curar e apoiar os aliados'),
('Assassino', 'Ágil e mortal em ataques');

SELECT * FROM tb_classes;

-- Criar a Tabela tb_personagens

CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    nivel INT NOT NULL,
    poder_ataque INT,
    poder_defesa INT,
    classe_id BIGINT,
  PRIMARY KEY (id),
FOREIGN KEY (classe_id) REFERENCES tb_classes(id)
);

INSERT INTO tb_personagens (nome, nivel, poder_ataque, poder_defesa, classe_id) VALUES
('Arthas', 25, 350, 200, 1),
('Morgana', 30, 500, 150, 2),
('Legolas', 22, 300, 180, 3),
('Elora', 28, 200, 250, 4),
('Kayn', 35, 600, 220, 5),
('Darius', 27, 400, 230, 1),
('Sylas', 33, 550, 160, 2),
('Thalia', 20, 280, 190, 3);

SELECT * FROM tb_personagens;

-- poder de ataque > 200
SELECT * FROM tb_personagens WHERE poder_ataque > 200;

-- poder de ataque entre 100 e 200
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 100 AND 200;

-- personagens com a letra Y no nome
SELECT * FROM tb_personagens WHERE nome LIKE "%y%";

-- unir os dados das duas tabelas
SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id;

-- personagens da classe Arqueiro

SELECT * FROM tb_personagens INNER JOIN tb_classes ON tb_personagens.classe_id = tb_classes.id WHERE tb_classes.nome = 'Arqueiro';
