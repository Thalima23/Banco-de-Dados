-- Criar tabela

CREATE DATABASE db_rh;

-- Acessar/Selecionar o Banco de Dados atual

USE db_rh;

-- Criar Tabela

CREATE TABLE tb_colaboradores(
id bigint AUTO_INCREMENT,
nome varchar (255) NOT NULL,
cargo varchar (255),
departamento varchar (255),
salario decimal (10,2),
data_admissao date,
PRIMARY KEY (id)
); 
-- Inserir dados na tabela

INSERT INTO tb_colaboradores(nome, cargo, departamento, salario, data_admissao)
VALUES ("Ana Souza", "Analista de RH", "Recursos Humanos", 3200.00, "2022-03-10"),
("Carlos Pereira", "Assistente Administrativo", "Administrativo", 1800.00, "2023-01-15"),
("Camila Costa", "Desenvolvedora Jr", "TI", 4500.00, "2021-07-22"),
("Rubia Lima", "Estagiária", "Marketing", 1600.00, "2024-02-01"),
("Fernanda Alves", "Coordenadora de Projetos", "Operações", 6200.00, "2020-11-05");

/* Visualizar os dados*/ -- Visualiza todos os dados

	SELECT * FROM tb_colaboradores;
    
-- Visualizar somente o nome e o preço

SELECT * FROM tb_colaboradores WHERE salario > 2000;
SELECT * FROM tb_colaboradores WHERE salario < 2000;

-- Atualizar o salario de Carlos na tabela

UPDATE tb_colaboradores SET salario = 1900.00 where id= 2;