CREATE DATABASE basketmetrics;
USE basketmetrics;

CREATE TABLE IF NOT EXISTS endereco (
idendereco INT NOT NULL AUTO_INCREMENT,
rua VARCHAR(45) NOT NULL,
numero INT NOT NULL,
bairro VARCHAR(45) NOT NULL,
cidade VARCHAR(45) NOT NULL,
PRIMARY KEY (idendereco)
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
PRIMARY KEY (idskill)
);

CREATE TABLE IF NOT EXISTS jogador (
idjogador INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
sobrenome VARCHAR(45) NOT NULL,
telefone CHAR(14) NOT NULL,
email VARCHAR(45) NOT NULL,
senha VARCHAR(45) NOT NULL,
fkendereco INT NOT NULL,
fkskill INT NOT NULL,
PRIMARY KEY (idjogador),
CONSTRAINT fk_usuario_endereco1
FOREIGN KEY (fkendereco)
REFERENCES endereco (idendereco),
CONSTRAINT fk_jogador_copy1_skill1
FOREIGN KEY (fkskill)
REFERENCES skill (idskill)
);

CREATE TABLE IF NOT EXISTS tecnico (
idtecnico INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
sobrenome VARCHAR(45) NOT NULL,
telefone CHAR(14) NOT NULL,
email VARCHAR(45) NOT NULL,
senha VARCHAR(45) NOT NULL,
fkendereco INT NOT NULL,
PRIMARY KEY (idtecnico),
CONSTRAINT fk_usuario_endereco2
FOREIGN KEY (fkendereco)
REFERENCES endereco (idendereco)
);