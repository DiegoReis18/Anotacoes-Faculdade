create database funcao;
use funcao

1
DELIMITER $$
create function minparahoras(minutos int(20))
returns int
begin
return minutos/60;
end;$$

select minparahoras(120) from dual;

2
DELIMITER $$
create function salminimo(salario float(20))
returns float
begin
return salario/960;
end;$$

select salminimo(10000) from dual;


3
DELIMITER $$
create function Par_Imp(num int(20))
returns varchar(30)
begin
if num%2=0 then
return 'PAR';
else 
return 'IMPAR';
end if;
end;$$

select Par_Imp(11) from dual;


4
DELIMITER $$
create function Media(m1 int(20),m2 int(20))
returns float
begin
return (m1+m2)/2;
end;$$

select Media(10,9) from dual;

5
drop function Media;
DELIMITER $$
create function Media(m1 int(20),m2 int(20))
returns varchar(30)
aux int;
begin
aux int = (m1+m2)/2
if (m1+m2)/2>=7 then 
return 'Aprovado';
else 
return 'Reprovado';
end if;
end;$$

select Media(10,9) from dual;

