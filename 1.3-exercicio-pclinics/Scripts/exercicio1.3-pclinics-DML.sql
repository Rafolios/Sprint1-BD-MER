USE RegistroVeterinario;
GO 

INSERT INTO clinica (nomeClinica,enderecoClinica)
VALUES ('SenaiPet','Rua dos bobos, 0'),('DevMed','Blvd. of broken dreams, 1');

INSERT INTO veterinario (idClinica,nomeFuncionario,cpfFuncionario)
VALUES (1,'Saulo', 11223344550),(2,'Lucas', 22334455667);

INSERT INTO dono (nomeDono,cpfDono)
VALUES ('Miguel', 11223344551),('Giovana', 11223344556);

INSERT INTO tipoPet (nomeTipo)
VALUES ('Cachorro'),('Gato');

INSERT INTO raça(idTipo,nomeRaça)
VALUES (1,'poodle'),(1,'labrador'),(2,'siamês');

INSERT INTO pet(idRaça,idDono, nomePet, dataNascimentoPet)
VALUES (2,1,'Luke',DATEFROMPARTS(2020,02,01)), (3,2,'Juno',DATEFROMPARTS(2020,10,05)), (1,2,'Cassy',DATEFROMPARTS(2020,06,15));

INSERT INTO atendimento(idPet,idFuncionario,dataAtendimento,valorAtendimento,descrição)
VALUES (2,1,DATEFROMPARTS(2020,11,02),50.00, 'Check-up'),(3,1,DATEFROMPARTS(2021,01,29),53.00, 'Check-up'),(1,2,DATEFROMPARTS(2021,05,16),70.00, 'Administração de medicação') ;