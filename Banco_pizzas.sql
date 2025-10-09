CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

-- Criar a tabela de categorias

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
descricao varchar(255),
PRIMARY KEY (id)
);

-- Inserir dados na tabela tb_categorias

INSERT INTO tb_categorias (nome, descricao) VALUES
('Salgada', 'Pizzas tradicionais com ingredientes salgados'),
('Doce', 'Pizzas com recheios doces'),
('Vegetariana', 'Pizzas sem carne, com vegetais e queijos'),
('Especial', 'Pizzas gourmet com ingredientes selecionados'),
('Light', 'Pizzas com menor teor calórico e massa integral');

SELECT * FROM tb_categorias;

-- Criar a Tabela tb_pizzas

CREATE TABLE tb_pizzas(
id BIGINT AUTO_INCREMENT, 
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL (10,2),
    tamanho VARCHAR(50),
    ingredientes VARCHAR(255),
    categoria_id BIGINT,
  PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_pizzas (nome, preco, tamanho, ingredientes, categoria_id) VALUES
('Margherita', 50.00, 'Média', 'Molho de tomate, mussarela, manjericão', 1),
('Calabresa', 44.80, 'Grande', 'Calabresa, mussarela, cebola', 1),
('Chocolate', 38.00, 'Pequena', 'Chocolate, leite condensado', 2),
('Portuguesa', 46.00, 'Média', 'Presunto, ovos, cebola, azeitonas', 1),
('Veggie', 48.50, 'Grande', 'Tomate, cebola, pimentão, milho, mussarela', 3),
('Frango com Catupiry', 45.00, 'Média', 'Frango desfiado, catupiry, milho', 1),
('Quatro Queijos', 60.00, 'Grande', 'Mussarela, provolone, gorgonzola, parmesão', 4),
('Abacaxi com Chocolate', 45.00, 'Média', 'Abacaxi, chocolate, leite condensado', 2);


SELECT * FROM tb_pizzas;

-- preço > 45
SELECT * FROM tb_pizzas WHERE preco > 45.00;

-- preço das pizzas entre 50.00 e 100.00
SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100;

-- pizzas com a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%m%";

-- unir os dados das duas tabelas
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id;

-- somente pizzas salgadas
SELECT * FROM tb_pizzas INNER JOIN tb_categorias ON tb_pizzas.categoria_id = tb_categorias.id WHERE tb_categorias.nome = 'Salgada';
