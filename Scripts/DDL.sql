--DDL

CREATE DATABASE inLock_games_manha;

USE inLock_games_manha;

CREATE TABLE Estudio (
	IdEstudio INT PRIMARY KEY IDENTITY,
	NomeEstudio VARCHAR(250) NOT NULL UNIQUE
);

CREATE TABLE Jogo (
	IdJogo INT PRIMARY KEY IDENTITY,
	IdEstudio INT FOREIGN KEY REFERENCES Estudio(IdEstudio),
	NomeJogo VARCHAR(250) NOT NULL UNIQUE,
	Descricao VARCHAR(1500) NOT NULL,
	DataLancamento DATE NOT NULL,
	Valor SMALLMONEY NOT NULL,
);

CREATE TABLE TipoUsuario (
	IdTipoUsuario INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(100) NOT NULL
);

CREATE TABLE Usuario (
	IdUsuario INT PRIMARY KEY IDENTITY,
	IdTipoUsuario INT FOREIGN KEY REFERENCES TipoUsuario (IdTipoUsuario),
	Email VARCHAR(250) NOT NULL UNIQUE,
	Senha VARCHAR(50) NOT NULL
);