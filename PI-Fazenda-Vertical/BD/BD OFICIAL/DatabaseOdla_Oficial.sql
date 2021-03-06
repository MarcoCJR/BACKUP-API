CREATE DATABASE Odla;
USE Odla;

CREATE TABLE Perfil (
idPerfil INT PRIMARY KEY AUTO_INCREMENT,
Permissao INT
);

CREATE TABLE Fazenda(
idFazenda INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(80),
Area INT,
Altura INT
);

CREATE TABLE Usuario(
idUsuario INT PRIMARY KEY AUTO_INCREMENT,
Nome VARCHAR(60),
Email VARCHAR(60) UNIQUE,
telefone CHAR(15) UNIQUE,
CNPJ CHAR(14) UNIQUE,
Senha VARCHAR(30),
fkFazenda INT,
FOREIGN KEY (fkFazenda) REFERENCES Fazenda (idFazenda),
fkPerfil INT,
FOREIGN KEY (fkPerfil) REFERENCES Perfil (idPerfil)
);

CREATE TABLE Sensor(
idSensor INT PRIMARY KEY AUTO_INCREMENT,
nmrColuna INT,
fkFazenda INT,
FOREIGN KEY (fkFazenda) REFERENCES Fazenda (idFazenda)
);

CREATE TABLE VerificacaoHora(
idVerificacaoHora INT PRIMARY KEY AUTO_INCREMENT,
dataHora DATETIME,
Lux INT,
fkSensor INT,
FOREIGN KEY (fkSensor) REFERENCES Sensor (idSensor)
);