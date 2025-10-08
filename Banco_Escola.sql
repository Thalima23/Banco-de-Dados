CREATE DATABASE db_Escola;

USE db_Escola;

CREATE TABLE tb_atributos(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
idade int NOT NULL,
turma varchar (255),
email varchar (255),
PRIMARY KEY (id)
); 

INSERT INTO tb_atributos (nome, idade, turma, email)
VALUES('Ana Silva', 14, '8º Ano', 'ana.silva@email.com'),
('Bruno Souza', 15, '9º Ano', 'bruno.souza@email.com'),
('Carla Mendes', 13, '7º Ano', 'carla.mendes@email.com'),
('Diego Lima', 14, '8º Ano', 'diego.lima@email.com'),
('Eduarda Rocha', 16, '1º Ano EM', 'eduarda.rocha@email.com'),
('Fábio Santos', 15, '9º Ano', 'fabio.santos@email.com'),
('Gabriela Costa', 13, '7º Ano', 'gabriela.costa@email.com'),
('Hugo Martins', 16, '1º Ano EM', 'hugo.martins@email.com');

SELECT * FROM tb_atributos;

SELECT * FROM tb_atributos WHERE idade > 15;
SELECT * FROM tb_atributos WHERE idade < 15;

 UPDATE tb_atributos SET turma = '8º ano' where id= 3;
