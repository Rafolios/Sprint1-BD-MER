CREATE DATABASE CINEMA;
GO

USE CINEMA;
GO

Create Table Genero(
	IDGenero tinyint PRIMARY KEY IDENTITY(1,1),
	NomeGenero varchar(30)
);
GO

Create Table Filme(
	IDFilme smallint PRIMARY KEY IDENTITY(1,1),
	IDGenero tinyint FOREIGN KEY REFERENCES Genero(IDGenero),
	TituloFilme varchar(70)
);
GO