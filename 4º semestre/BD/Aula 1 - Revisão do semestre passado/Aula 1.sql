Create database oi;
use oi;
Create table aluno(
Matricula int(2) unsigned NOT NULL PRIMARY KEY,
Nome varchar(40),
Sexo char(01),
Endereco varchar(20)
);
Describe aluno; #ou desc 
INSERT INTO aluno (Matricula,Nome,Sexo,Endereco)VALUES
(1,'Magnolia','F','Rua A, 13'),
(2,'Epaminondas','M','Rua B, 14'),
(3,'Raymunda','F','Rua C, 15'),
(4,'Emengarda','F','Rua D, 16'),
(5,'Asdrubal','M','Rua E, 17'),
(6,'Emilio','M','Rua F, 16'),
(7,'Tiburcio','M','Rua G, 44')
;
#Exercicio 1
Select*from aluno; #1
Select Matricula,Nome from aluno; #2
Select Nome,Endereco from aluno; #3
Select*from aluno where Sexo='M'; #4
Select Matricula,Nome,Endereco from aluno where Sexo='F'; #5
Select*from aluno where Matricula>3; #6
Select*from aluno where Nome like 'E%';#7
Alter table aluno modify Endereco varchar(35);#8
Alter table aluno add column Curso varchar(30) after Nome;#9
Desc aluno;#10
Select*from aluno;#10
Alter table aluno add column Mensalidade float(7.2) after Curso;#11
Update aluno set Curso='Ciência da Computação', Mensalidade=721.80 where Matricula=4;#12
Select*from aluno;#13
delete from aluno where Matricula=2;#14

#Exercicio 2
Create database Ambulatorio;
use Ambulatorio;
Create table Medico (ID_Medico int(2) Primary key, Nome varchar(35), CRM varchar(15), Telefone char(15));
Create table Paciente (ID_Paciente int(2) Primary key, Nome varchar(35), Convenio varchar(20), Endereco varchar(40));
Create table Consulta (ID_Medico int(2), ID_Paciente int(2), DataC date, Hora time,Primary key(ID_Medico,ID_Paciente));
DESC Medico;
DESC Paciente;
DESC Consulta;
drop table Paciente;
Create table Prontuario (ID_Paciente int(2), DataConsulta date, HoraConsulta time, ID_Medico int(2),
ResConsulta varchar(256),Primary key(ID_Medico,ID_Paciente,DataConsulta,HoraConsulta));
alter table Prontuario add column NomePaciente varchar(40);  #2
alter table Prontuario add column EndPaciente char(40);  #3
Insert into Medico (ID_Medico,Nome,CRM,Telefone)VALUES   #4
	(111, 'Jose Dilva','1234567890','1111 11 11'),
	(112, 'Maria Souza','0987654321','2222 22 22'),
	(113,'Ana Bastos','4567893210','3333 33 33'),
	(114,'Ari Santos','7894561230','4444 44 44'),
	(115,'Eva Brown','3216549879','5555 55 55')
;
Insert into Paciente (ID_Paciente,Nome,Convenio,Endereco)VALUES   #5
	(1, 'Epaminondas','Unimed','Rua A'),
	(2, 'Asdrubal','Amico','Rua B'),
	(3,'Filisbina','Sulamerica','Rua C'),
    (4,'Gumercindo','Maritma','Rua D'),
    (5,'Cabrioca','Samaritano','Rua E')
;
Insert into Consulta (ID_Medico,ID_Paciente,DataC,Hora)VALUES   #6
    (114,3,'2009-08-01','10:05:00'),
    (111,1,'2009-08-01','09:00:00'),
    (112,3,'2009-08-01','11:15:00'),
    (115,3,'2009-08-01','07:45:00'),
    (113,2,'2009-08-02','07:00:00'),
    (111,4,'2009-08-02','09:08:00'),
    (112,2,'2009-08-01','10:20:00'),
    (111,5,'2009-08-03','08:00:00'),
    (113,5,'2009-08-03','09:05:00'),
    (112,5,'2009-08-03','10:05:00')
;
Select*from Medico;   #7
Select*from Paciente;   #7
Select*from Consulta;   #7
Select*from Prontuario;    #7
Update Medico set Nome='Jose Silva' where ID_Medico=111;  #8
Select*from Medico;   #9
Update Medico set Telefone='666 66 66' where ID_Medico=113; #10



