DROP DATABASE IF EXISTS aula11;
CREATE DATABASE aula11;
USE aula11;

CREATE TABLE veiculo (
    cor VARCHAR(15),
    ano VARCHAR(4),
    fabricante VARCHAR(20),
    mod_ VARCHAR(20),
    valordecusto DECIMAL(9,2)
);

INSERT INTO veiculo VALUES 
('prata', 1998, 'porsche', 'boxter', 1799254),
(NULL, 2000, 'jaguar', 'XJ', 1599500),
('vermelho', 2002, 'cadillac', 'escalade', 4021590);

ALTER TABLE veiculo
ADD COLUMN id INT AUTO_INCREMENT NOT NULL, /*esqueci do first */
ADD PRIMARY KEY (id);

ALTER TABLE veiculo
MODIFY COLUMN id INT AUTO_INCREMENT NOT NULL FIRST;

ALTER TABLE veiculo
ADD COLUMN chassi VARCHAR(30) AFTER id;

ALTER TABLE veiculo
MODIFY COLUMN fabricante VARCHAR(20) AFTER chassi;

ALTER TABLE veiculo
CHANGE COLUMN mod_ modelo VARCHAR(20) AFTER fabricante;

ALTER TABLE veiculo
MODIFY COLUMN fabricante VARCHAR(50) AFTER chassi;

CREATE TABLE dono (
    cpf VARCHAR(11),
    nome VARCHAR(45),
    telefone VARCHAR(11),
    cidade VARCHAR(45)
);

INSERT INTO pessoa (cpf, nome, telefone, cidade) VALUES
('12345678900', 'money king', '77788899912', 'pelotas'),
('12322278900', 'pitor', '75577899912', 'pelotas'),
('12345698700', 'maicuel', '76688899912', 'pelotas');

ALTER TABLE dono
ADD COLUMN id_dono INT AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id_dono);

ALTER TABLE dono
RENAME TO pessoa;

TRUNCATE TABLE pessoa;

ALTER TABLE pessoa
ADD COLUMN id_veiculo INT; 

ALTER TABLE veiculo
MODIFY COLUMN fabricante VARCHAR(50) AFTER valordecusto;

ALTER TABLE veiculo
CHANGE COLUMN valordecusto valor DECIMAL(9,2) AFTER ano;