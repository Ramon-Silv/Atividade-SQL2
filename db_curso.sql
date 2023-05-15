create database db_curso;
use db_curso; 

create table tb_instrutor(
	id_Instrutor int auto_increment PRIMARY KEY,
	NomeInstrutor varchar(100),
	SexoInstrutor char(1),
	DataNascimento date,
	DataAdmissao date,
	SalarioInstrutor decimal(8,2)
);

select * from tb_instrutor;

insert into tb_instrutor values(null, 'Rubens Alexandre', 'M', '1966-05-15', '2000-04-01', '8990.00');
insert into tb_instrutor values(null, 'Alessandra Oliveira', 'F', '1997-08-19', '2019-08-17', '11000.00');
insert into tb_instrutor values(null, 'Ramon Augusto', 'M', '1970-05-14', '1997-10-21', '9000.00');
insert into tb_instrutor values(null, 'Antônia Fagundes', 'F', '1986-02-22', '2006-01-30', '10050.00');
insert into tb_instrutor values(null, 'Kleber José', 'M', '1994-03-23', '2008-10-22', '4500.00');
insert into tb_instrutor values(null, 'Lívia Grecov', 'F', '1988-05-12', '2012-08-01', '4220.00');
insert into tb_instrutor values(null, 'Mariana Andrade', 'F', '1975-09-13', '2002-02-09', '8770.00');
insert into tb_instrutor values(null, 'Karla Faustino', 'F', '1989-10-28', '2015-03-30', '3010.00');
insert into tb_instrutor values(null, 'Roger Gonzaga', 'M', '1999-11-26', '2012-01-28', '5900.00');
insert into tb_instrutor values(null, 'Cleide Bueno', 'F', '1990-04-16', '2011-02-24', '9300.00');
insert into tb_instrutor values(null, 'Maria Eduarda', 'F', '1986-05-19', '2004-04-01', '8970.00');
insert into tb_instrutor values(null, 'Alessandro Costa', 'M', '1991-08-02', '2011-06-13', '12300.00');
insert into tb_instrutor values(null, 'Mariana Chaves', 'F', '2002-05-07', '2019-10-21', '7900.00');
insert into tb_instrutor values(null, 'Mayara Lima', 'F', '1996-02-22', '206-01-30', '13050.00');
insert into tb_instrutor values(null, 'Robson Souza', 'M', '1983-03-23', '2008-03-30', '8800.00');
insert into tb_instrutor values(null, 'Diego Andrade', 'F', '1988-05-12', '2012-08-01', '3360.00');
insert into tb_instrutor values(null, 'Heloísa Prates', 'F', '1975-09-13', '2002-02-09', '8740.00');
insert into tb_instrutor values(null, 'Julia Soares', 'F', '1989-10-28', '2015-03-30', '2010.00');
insert into tb_instrutor values(null, 'Rogerio Silva', 'M', '1992-12-28', '2012-01-28', '6700.00');
insert into tb_instrutor values(null, 'Maisa Diaz', 'F', '1999-04-16', '2018-07-25', '3400.00');

alter table tb_instrutor
add column Email varchar(50);

alter table tb_instrutor
add column Celular varchar(20);

alter table tb_instrutor
add column Nacionalidade varchar(30);

select * from tb_instrutor;

alter table tb_instrutor
drop column DataNascimento;

update tb_instrutor
set Nacionalidade = 'Brasileira';

update tb_instrutor 
set SalarioInstrutor = SalarioInstrutor + '320' where DataAdmissao < '2013-01-01';

update tb_instrutor 
set SalarioInstrutor = SalarioInstrutor + '100' where SexoInstrutor = 'F';

delete from tb_instrutor where id_Instrutor in (10, 15, 20);