CREATE DATABASE db_floricultura;

-- Acessar/Selecionar o Banco de Dados atual

USE db_floricultura;

-- Criar tabela

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
quantidade int,
cor varchar (255),
preco decimal (10,2),
PRIMARY KEY (id)
); 

-- Inserir dados na tabela

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Tulipa",100, "lilás", 38.00);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Rosa",20, "vermelha", 8.00);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Rosa",50, "branca", 8.00);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Orquídea",30, "rosa", 42.00);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Girassol",15, "amarelo", 15.00);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Samambaia",22, "verde", 32.50);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Pacová",22, "verde", 22.50);

INSERT INTO tb_produtos(nome, quantidade, cor, preco)
VALUES ("Lírio",22, "rosa", 25.80);

-- Visualizar todos os dados

SELECT * FROM tb_produtos;

-- Produtos com valor acima de 30 R$

 SELECT * FROM tb_produtos WHERE preco > 30;
 
 -- Produtos com valor abaixo de 30 R$
 
 SELECT * FROM tb_produtos WHERE preco < 30;
 
 -- Atualizar o preço da rosa vermelha na tabela
 
 UPDATE tb_produtos SET preco = 10.00 where id= 2;
  UPDATE tb_produtos SET preco = 50.00 where id= 4;