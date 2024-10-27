CREATE DATABASE loja;
USE loja;

CREATE TABLE produto(
    codigo INT(),
    descricao VARCHAR(100) NOT NULL,
    valor DECIMAL(10,2),
    qtdEstoque INT,
    PRIMARY KEY (codigo)
);
CREATE TABLE venda(
    id INT,
    dataVenda DATE NOT NULL,
    nrNF VARCHAR(100),
    PRIMARY KEY (id)
);
CREATE TABLE venda_itens(
    produto_codigo INT,
    venda_id INT,
    qtdVenda INT,
    PRIMARY KEY (produto_codigo, venda_id),
    FOREIGN KEY (produto_codigo) REFERENCES produto (codigo), 
    FOREIGN KEY (venda_id) REFERENCES venda (id) 
);

/* 02
- Cadastrar 18 produtos (sugestão no slide seguinte); */
INSERT INTO produto (descricao, valor, qtdEstoque)
VALUES ('Camiseta Polo', 49.99, 100),
('Calça Jeans', 89.99,0),
('Vestido Floral', 69.99, 60),
('Moletom com Capuz', 79.99, 70),
('Sapato Social', 149.99, 40),
('Bolsa de Couro', 99.99, 90),
('Óculos de Sol', 59.99, 110),
('Jaqueta de Couro', 199.99, 30),
('Saia Plissada', 39.99, 80),
('Blusa de Tricô', 49.99, 70),
('Calçado Infantil', 29.99, 120),
('Blazer Feminino', 89.99, 50),
('Calça Social', 79.99, 60),
('Relógio de Pulso', 149.99, 40),
('Bermuda Esportiva', 34.99,0),
('Meia Esportiva', 9.99, 150),
('Chapéu de Praia', 19.99, 100),
('Carteira de Couro', 39.99, 80);