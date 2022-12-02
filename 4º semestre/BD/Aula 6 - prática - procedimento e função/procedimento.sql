create database proc;
use proc;

Create table funcionário (
cd_func varchar(39), 
​nome varchar(30),
 ​sobrenome varchar(30),
 salario varchar(10),
status varchar(30)
 );

DELIMITER $$
Create procedure proc_cola()
begin 
Select ('Olá Mundo');
END;$$

call proc_cola();

DELIMITER $$
Create procedure change_status(p_cod varchar(30))
begin 
Update funcionário set status= 'Demitido' where cd_func = p_cod;
END;$$

call change_status(100);

1
Create table Aluno2 (
Nome varchar(39), 
​Sobrenome varchar(30),
Cd_aluno INT(30) PRIMARY KEY,
status varchar(30)
 );
 
 create sequence SQL_aluno
 MINVALUE 1,
 MAXVALUE 1000,
 START WITH 1,
 INCREMENT BY 10,
 cache 5;
 
Insert into Aluno VALUES ('Diego','Reis',"10",'Aprovado');
Insert into Aluno VALUES ('Olivia','Rodrigo','100','Reprovado');
Insert into Aluno VALUES ('Osvaldo','Azevedo', SQL_aluno_nextval,'Aprovado');
Insert into Aluno VALUES ('Gobitta','Numsei', SQL_aluno_nextval,'Reprovado');
Insert into Aluno VALUES ('Deigoo','Novaes', SQL_aluno_nextval,'Aprovado');

2
DELIMITER $$
Create procedure APROVA_ALUNO(p_aluno varchar(10))
begin 
Update Aluno set status='Aprovado' where Cd_aluno=p_aluno;
END;$$

call APROVA_ALUNO('100');
Select*from Aluno

3
DELIMITER $$
Create procedure DELETA_ALUNO(n_aluno varchar(30))
begin 
DELETE from Aluno where lower(Nome)=n_aluno;
END;$$

call DELETA_ALUNO('olivia');
Select*from Aluno




