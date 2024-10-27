CREATE DATABASE transferencias;
USE transferencias;

CREATE TABLE equipe(
    nome VARCHAR(100),
    nacao CHAR(3),
    PRIMARY KEY(nome)
);

INSERT INTO equipe VALUES('real madrid','ESP' );
INSERT INTO equipe VALUES('barcelona','ESP');
INSERT INTO equipe VALUES('bayern','ALE');
INSERT INTO equipe VALUES('psg','FRA');
INSERT INTO equipe VALUES('inter miami','EUA');
INSERT INTO equipe VALUES('man city','ING');
INSERT INTO equipe VALUES('man united','ING');
INSERT INTO equipe VALUES('west ham','ING');
INSERT INTO equipe VALUES('atletico de madrid','ESP');
INSERT INTO equipe VALUES('borussia dortmund','ALE');

CREATE TABLE jogador(
    id INT(3),
    nome VARCHAR(100),
    equipe VARCHAR(100),
    valor INT(12),
    salario INT(9),
    PRIMARY KEY(id),
    FOREIGN KEY(equipe) REFERENCES equipe(nome)
);

INSERT INTO jogador VALUES(1, 'vini jr','real madrid', 180000000, 2000000 );
INSERT INTO jogador VALUES(47,'dembele', 'psg', 70000000, 1000000);
INSERT INTO jogador VALUES(4, 'bellingham', 'real madrid', 150000000, 1400000);
INSERT INTO jogador VALUES(87, 'messi', 'inter miami', 30000000, 150000);
INSERT INTO jogador VALUES(35, 'lamine yamal', 'barcelona', 130000000, 800000);
INSERT INTO jogador VALUES(21, 'haaland', 'man city', 110000000, 1200000);
INSERT INTO jogador VALUES(30, 'onana', 'man united', 60000000, 700000);
INSERT INTO jogador VALUES(12, 'paqueta', 'west ham', 50000000, 600000);
INSERT INTO jogador VALUES(2, 'griezzman', 'atletico de madrid', 35000000, 1100000);
INSERT INTO jogador VALUES(64, 'kane', 'bayern', 50000000, 1500000);
INSERT INTO jogador VALUES(321, 'sule', 'borussia dortmund', 26000000, 1000000);
