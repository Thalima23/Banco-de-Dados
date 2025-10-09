CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

-- Criar a Tabela de Categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    PRIMARY KEY (id)
);

-- Inserir dados na tabela tb_categorias

INSERT INTO tb_categorias (nome, descricao) VALUES
('Medicamentos', 'Remédios com e sem prescrição médica.'),
('Cosméticos', 'Produtos de beleza, cuidados com a pele e cabelo.'),
('Higiene Pessoal', 'Itens de limpeza e cuidados pessoais.'),
('Suplementos', 'Vitaminas e produtos nutricionais.'),
('Infantil', 'Produtos destinados ao público infantil.');

SELECT * FROM tb_categorias;

-- Criar a Tabela de Produtos

CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    marca VARCHAR(100),
    quantidade INT,
    preco DECIMAL(10,2),
    id_categoria BIGINT,
    PRIMARY KEY (id),
FOREIGN KEY (id_categoria) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, marca, quantidade, preco, id_categoria) VALUES
('Dipirona Sódica 500mg', 'EMS', 100, 8.50, 1),
('Paracetamol 750mg', 'Neo Química', 80, 9.90, 1),
('Shampoo Anticaspa', 'Clear', 40, 27.90, 2),
('Creme Hidratante Corporal', 'Nivea', 30, 35.00, 2),
('Escova Dental Macia', 'Colgate', 50, 12.00, 3),
('Vitamina C 500mg', 'Sundown', 60, 59.90, 4),
('Leite Infantil em Pó', 'Nestlé', 25, 89.90, 5),
('Protetor Solar FPS 50', 'La Roche-Posay', 20, 79.90, 2),
('Body Splash Flor de Cerejeira', 'Arvensis', 5, 70.56, 2);


SELECT * FROM tb_produtos;

-- preço > 50
SELECT * FROM tb_produtos WHERE preco > 50.00;

-- produtos com preço entre 5.00 e 60.00
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

-- produtos que possuam a letra "C" no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

-- unir os dados das duas tabelas
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id;

-- somente cosméticos
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.id_categoria = tb_categorias.id WHERE tb_categorias.nome = 'Cosméticos';
