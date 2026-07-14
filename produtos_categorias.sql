CREATE DATABASE db_produtos_categorias;

USE db_produtos_categorias;

CREATE TABLE tb_categorias (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
  );
  
INSERT INTO tb_categorias (nome) VALUES
('Eletrônicos'),
('Eletrodomésticos'),
('Móveis e Decoração'),
('Moda e Vestuário'),
('Esporte e Lazer'),
('Beleza e Cuidados Pessoais'),
('Alimentos e Bebidas'),
('Brinquedos e Jogos'),
('Livros e Papelaria'),
('Ferramentas e Jardim');

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos (
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
preco DECIMAL(10, 2) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_produtos (nome, preco, categoria_id) VALUES
('Smartphone 5G 128GB', 2499.90, 1),
('Geladeira Frost Free 400L', 3200.00, 2),
('Sofá 3 Lugares Retrátil', 1899.00, 3),
('Camiseta de Algodão Básica', 59.90, 4),
('Chuteira de Campo Profissional', 289.90, 5),
('Perfume Importado Masculino 100ml', 450.00, 6),
('Café Gourmet Moído 500g', 32.50, 7),
('Jogo de Tabuleiro Estratégia', 159.90, 8),
('Livro Best-Seller de Ficção', 49.90, 9),
('Furadeira de Impacto Bivolt', 349.00, 10);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos
WHERE preco BETWEEN 30.00 AND 100.00;

UPDATE tb_produtos SET preco = 30.00 WHERE id = 7;

DELETE FROM tb_produtos WHERE id = 5;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;


