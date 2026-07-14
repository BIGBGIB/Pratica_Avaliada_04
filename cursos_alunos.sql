CREATE DATABASE db_cursos_alunos;

USE db_cursos_alunos;

CREATE TABLE tb_cursos (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  carga_horaria int,
  PRIMARY KEY (id)
  );
  
INSERT INTO tb_cursos (nome, carga_horaria) VALUES
('Desenvolvimento Web Full Stack', 400),
('Introdução à Ciência de Dados', 120),
('Banco de Dados SQL Avançado', 80),
('Desenvolvimento Mobile com Flutter', 150),
('Segurança da Informação e Cibersegurança', 200),
('Machine Learning e Inteligência Artificial', 180),
('Metodologias Ágeis e Scrum', 40),
('UX/UI Design Foundations', 100),
('Programação em Python para Iniciantes', 60),
('Administração de Infraestrutura em Nuvem (AWS)', 160);

SELECT * FROM tb_cursos;

CREATE TABLE tb_alunos (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
idade int, 
curso_id bigint, 
PRIMARY KEY (id),
FOREIGN KEY (curso_id) REFERENCES tb_cursos(id)
);

INSERT INTO tb_alunos (nome, idade, curso_id) VALUES
('Ana Silva Souza', 21, 1),
('Bruno Gonçalves Dias', 28, 2),
('Carlos Eduardo Lima', 35, 3),
('Diana de Oliveira', 19, 4),
('Eduardo Henrique Rocha', 42, 5),
('Fernanda Costa Montenegro', 24, 6),
('Gabriel Almeida Santos', 31, 7),
('Helena Martins Fonseca', 22, 8),
('Igor Rodrigues Ferreira', 27, 9),
('Julia Vasconcelos de Melo', 30, 10);

SELECT * FROM tb_alunos;

UPDATE tb_alunos SET idade = 17 WHERE id = 1;
UPDATE tb_alunos SET idade = 16 WHERE id = 4;

SELECT * FROM tb_alunos WHERE idade > 17;

DELETE FROM tb_alunos WHERE id = 5;

SELECT * FROM tb_alunos INNER JOIN tb_cursos
ON tb_alunos.curso_id = tb_cursos.id;