CREATE DATABASE basketmetrics;
USE basketmetrics;

CREATE TABLE usuario (
idusuario INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(45) NOT NULL,
telefone VARCHAR(45) NOT NULL,
email VARCHAR(45) NOT NULL,
senha VARCHAR(45) NOT NULL,
fkendereco INT NOT NULL,
fkskill INT NOT NULL,
PRIMARY KEY (idusuario),
CONSTRAINT fk_usuario_endereco
FOREIGN KEY (fkendereco)
REFERENCES mydb.endereco (idendereco),
CONSTRAINT fk_usuario_skill1
FOREIGN KEY (fkskill)
REFERENCES skill (idskill)
);

CREATE TABLE endereco (
idendereco INT NOT NULL AUTO_INCREMENT,
rua VARCHAR(45) NOT NULL,
numero INT NOT NULL,
bairro VARCHAR(45) NOT NULL,
cidade VARCHAR(45) NOT NULL,
PRIMARY KEY (idendereco)
);

CREATE TABLE skill (
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