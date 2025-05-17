CREATE DATABASE IF NOT EXISTS basketmetrics;
USE basketmetrics;

CREATE TABLE IF NOT EXISTS jogador (
idjogador INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
sobrenome VARCHAR(45) NOT NULL,
telefone CHAR(14) NOT NULL,
email VARCHAR(45) NOT NULL,
senha VARCHAR(45) NOT NULL,
PRIMARY KEY (idjogador)
);

CREATE TABLE IF NOT EXISTS skill (
idskill INT NOT NULL AUTO_INCREMENT,
idade INT NOT NULL,
altura DECIMAL(5,2) NOT NULL,
posicao VARCHAR(45) NOT NULL,
arremesso INT NOT NULL,
passe INT NOT NULL,
drible INT NOT NULL,
controle INT NOT NULL,
defesa INT NOT NULL,
Mediageral DECIMAL NOT NULL,
fkjogador INT NOT NULL UNIQUE,
PRIMARY KEY (idskill),
FOREIGN KEY (fkjogador)
REFERENCES jogador(idjogador)
);

CREATE TABLE IF NOT EXISTS tecnico (
idtecnico INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
sobrenome VARCHAR(45) NOT NULL,
telefone CHAR(14) NOT NULL,
email VARCHAR(45) NOT NULL,
senha VARCHAR(45) NOT NULL,
PRIMARY KEY (idtecnico)
);

SELECT posicao, COUNT(*) AS total
FROM skill
INNER JOIN jogador ON idjogador = fkjogador
GROUP BY posicao;

SELECT j.idjogador, j.nome, j.telefone, s.idade, s.altura, s.arremesso, s.passe, s.drible, s.controle, s.defesa, s.Mediageral
FROM skill s
INNER JOIN jogador j ON s.fkjogador = j.idjogador 
WHERE posicao = 'Armador';

SELECT j.idjogador, j.nome, j.telefone, s.idade, s.altura, s.arremesso, s.passe, s.drible, s.controle, s.defesa, s.Mediageral
FROM skill s
INNER JOIN jogador j ON s.fkjogador = j.idjogador 
WHERE posicao = 'Ala-armador';

SELECT j.idjogador, j.nome, j.telefone, s.idade, s.altura, s.arremesso, s.passe, s.drible, s.controle, s.defesa, s.Mediageral
FROM skill s
INNER JOIN jogador j ON s.fkjogador = j.idjogador 
WHERE posicao = 'Ala';

SELECT j.idjogador, j.nome, j.telefone, s.idade, s.altura, s.arremesso, s.passe, s.drible, s.controle, s.defesa, s.Mediageral
FROM skill s
INNER JOIN jogador j ON s.fkjogador = j.idjogador 
WHERE posicao = 'Ala-pivô';

SELECT j.idjogador, j.nome, j.telefone, s.idade, s.altura, s.arremesso, s.passe, s.drible, s.controle, s.defesa, s.Mediageral
FROM skill s
INNER JOIN jogador j ON s.fkjogador = j.idjogador 
WHERE posicao = 'Pivô';

select * from jogador;
select * from tecnico;
select * from skill;

INSERT INTO jogador (nome, sobrenome, telefone, email, senha) VALUES
('Lucas', 'Silva', '(11)99999-0001', 'lucas.silva@email.com', 'senha123'),
('Matheus', 'Santos', '(11)99999-0002', 'matheus.santos@email.com', 'senha123'),
('Pedro', 'Oliveira', '(11)99999-0003', 'pedro.oliveira@email.com', 'senha123'),
('Rafael', 'Costa', '(11)99999-0004', 'rafael.costa@email.com', 'senha123'),
('Bruno', 'Lima', '(11)99999-0005', 'bruno.lima@email.com', 'senha123'),
('João', 'Rocha', '(11)99999-0006', 'joao.rocha@email.com', 'senha123'),
('Carlos', 'Ferreira', '(11)99999-0007', 'carlos.ferreira@email.com', 'senha123'),
('Henrique', 'Souza', '(11)99999-0008', 'henrique.souza@email.com', 'senha123'),
('Tiago', 'Mendes', '(11)99999-0009', 'tiago.mendes@email.com', 'senha123'),
('Eduardo', 'Barros', '(11)99999-0010', 'eduardo.barros@email.com', 'senha123');

INSERT INTO skill (idade, altura, posicao, arremesso, passe, drible, controle, defesa, Mediageral, fkjogador) VALUES
(17, 1.78, 'Armador', 8, 9, 9, 8, 7, 8.2, 1),
(18, 1.80, 'Armador', 7, 8, 8, 8, 7, 7.6, 2),

(16, 1.85, 'Ala-Armador', 8, 7, 8, 7, 8, 7.6, 3),
(17, 1.87, 'Ala-Armador', 9, 6, 8, 7, 8, 7.6, 4),

(18, 1.90, 'Ala', 9, 6, 7, 8, 8, 7.6, 5),
(17, 1.88, 'Ala', 8, 6, 7, 7, 9, 7.4, 6),

(17, 1.95, 'Ala-Pivô', 7, 5, 6, 7, 9, 6.8, 7),
(18, 1.96, 'Ala-Pivô', 6, 5, 6, 7, 9, 6.6, 8),

(18, 2.03, 'Pivô', 6, 4, 4, 6, 10, 6.0, 9),
(17, 2.05, 'Pivô', 5, 4, 5, 6, 9, 5.8, 10);

INSERT INTO tecnico (nome, sobrenome, telefone, email, senha) VALUES
('Gustavo', 'Keniti', '(11)12345-0001', 'keniti@gmail.com', '123123');