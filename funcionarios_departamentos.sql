CREATE DATABASE db_funcionarios_departamentos;

USE db_funcionarios_departamentos;

CREATE TABLE tb_departamentos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
  );
  
INSERT INTO tb_departamentos (nome) VALUES
('Recursos Humanos'),
('Tecnologia da Informação'),
('Financeiro'),
('Marketing e Comunicação'),
('Vendas e Comercial'),
('Operações e Logística'),
('Jurídico'),
('Atendimento ao Cliente'),
('Pesquisa e Desenvolvimento'),
('Qualidade e Compliance');

SELECT * FROM tb_departamentos;

CREATE TABLE tb_funcionarios (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
salario DECIMAL(10, 2) NOT NULL,
departamento_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (departamento_id) REFERENCES tb_departamentos(id)
);

INSERT INTO tb_funcionarios (nome, salario, departamento_id) VALUES
('Amanda Costa Lima', 4500.00, 1),
('Rodrigo Alves Pereira', 7800.00, 2),
('Camila Souza Melo', 5200.00, 3),
('Lucas Oliveira Santos', 4100.00, 4),
('Juliana Barbosa Dias', 3900.00, 5),
('Ricardo Vieira Rocha', 4800.00, 6),
('Beatriz Martins Gomes', 8500.00, 7),
('Thiago Silva Ferreira', 3200.00, 8),
('Larissa Carvalho Neves', 9200.00, 9),
('Felipe Augusto Ribeiro', 5500.00, 10);

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios INNER JOIN tb_departamentos
ON tb_funcionarios.departamento_id = tb_departamentos.id;

SELECT * FROM tb_funcionarios WHERE salario > 5000.00;

UPDATE tb_funcionarios SET salario = 5500.00 WHERE id = 3;

DELETE FROM tb_funcionarios WHERE id = 8;
