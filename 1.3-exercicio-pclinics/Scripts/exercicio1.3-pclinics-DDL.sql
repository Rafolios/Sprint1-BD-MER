CREATE DATABASE RegistroVeterinario;
GO 

USE RegistroVeterinario;
GO 

CREATE TABLE clinica(
  idClinica INT PRIMARY KEY IDENTITY(1,1),
  nomeClinica VARCHAR(30) NOT NULL,
  enderecoClinica VARCHAR (70)
);
GO

CREATE TABLE veterinario(
idFuncionario INT PRIMARY KEY IDENTITY(1,1),
idClinica INT FOREIGN KEY REFERENCES clinica(idClinica),
nomeFuncionario VARCHAR(30) NOT NULL,
cpfFuncionario CHAR(11) NOT NULL
);
GO 

CREATE TABLE dono(
  idDono INT PRIMARY KEY IDENTITY(1,1),
  nomeDono VARCHAR(30) NOT NULL,
  cpfDono CHAR(11) NOT NULL
);
GO

CREATE TABLE tipoPet(
  idTipo INT PRIMARY KEY IDENTITY(1,1),
  nomeTipo VARCHAR(30) NOT NULL,
);
GO

CREATE TABLE ra�a(
idRa�a INT PRIMARY KEY IDENTITY(1,1),
idTipo INT FOREIGN KEY REFERENCES tipoPet(idTipo),
nomeRa�a VARCHAR(30) NOT NULL,
);

CREATE TABLE pet(
idPet INT PRIMARY KEY IDENTITY(1,1),
idRa�a INT FOREIGN KEY REFERENCES ra�a(idRa�a),
idDono INT FOREIGN KEY REFERENCES dono(idDono),
nomePet VARCHAR(30) NOT NULL,
dataNascimentoPet DATE NOT NULL
);
GO 

CREATE TABLE atendimento(
idAtendimento INT PRIMARY KEY IDENTITY(1,1),
idPet INT FOREIGN KEY REFERENCES pet(idPet),
idFuncionario INT FOREIGN KEY REFERENCES veterinario(idFuncionario),
dataAtendimento DATE NOT NULL,
valorAtendimento MONEY NOT NULL,
descri��o VARCHAR(50)
);
GO 