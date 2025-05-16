CREATE DATABASE basketmetrics;
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

SELECT arremesso, passe, drible, controle, defesa, Mediageral
FROM skill
WHERE posicao = 'Armador';

SELECT arremesso, passe, drible, controle, defesa, Mediageral
FROM skill
WHERE posicao = 'Ala-armador';

SELECT arremesso, passe, drible, controle, defesa, Mediageral
FROM skill
WHERE posicao = 'Ala';

SELECT arremesso, passe, drible, controle, defesa, Mediageral
FROM skill
WHERE posicao = 'Ala-pivô';

SELECT arremesso, passe, drible, controle, defesa, Mediageral
FROM skill
WHERE posicao = 'Pivô';

select * from jogador;
select * from tecnico;
select * from skill;