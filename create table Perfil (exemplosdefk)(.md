create table Perfil (

&nbsp;	id\_perfil int AUTO\_INCREMENT PRIMARY KEY,

&nbsp;   Nome varchar (50)

);





CREATE TABLE usuarios (

&nbsp;  id int AUTO\_INCREMENT PRIMARY KEY,

&nbsp;  nome varchar (100),

&nbsp;  id\_perfil int,

&nbsp;  FOREIGN KEY (id\_perfil) REFERENCES perfil(id\_perfil)

);





CREATE TABLE Pessoa (

&nbsp;   CPF char (11) PRIMARY key ,

&nbsp;   Nome  varchar (30) not null,

&nbsp;   Email varchar (50) 

&nbsp;   );



create TABLE Compra(

&nbsp;	ID int AUTO\_INCREMENT PRIMARY key,

&nbsp;   CPF char, FOREIGN key (CPF) REFERENCES pessoa (CPF),

&nbsp;   Datacompra date,

&nbsp;   Valor decimal

);





CREATE table Curso (

&nbsp;	id int AUTO\_INCREMENT PRIMARY KEY,

&nbsp;   Nome varchar (30)

);





CREATE table turma (

&nbsp;	id int AUTO\_INCREMENT PRIMARY key,

&nbsp;   Nome varchar (30),

&nbsp;   cursoid int, 

&nbsp;   FOREIGN key (cursoid) REFERENCES curso(id)



);



CREATE table aluno (

&nbsp;	id int AUTO\_INCREMENT PRIMARY key,

&nbsp;   Nome varchar (30),

&nbsp;   turmaid int, 

&nbsp;   FOREIGN key (turmaid) REFERENCES turma(id)



);



CREATE table livro(

&nbsp;	id int AUTO\_INCREMENT PRIMARY key,

&nbsp;   Título varchar (70) 

);



CREATE TABLE autor (

&nbsp;	id int AUTO\_INCREMENT PRIMARY key,

&nbsp;   Nome varchar (30)



);



CREATE TABLE livroautor(

&nbsp;	livroid int, FOREIGN key (livroid) REFERENCES livro(id),

&nbsp;       autorid int, FOREIGN key (autorid) REFERENCES autor(id),

&nbsp;	primary key (livroid, autorid)

);



----------------------------------------------------------------------------------------------------------------





**CREATE table pedido(**

	**id int AUTO\_INCREMENT PRIMARY key,**

    **clienteid int,**

    **Datapedido date,** 

    **FOREIGN key (clienteid) REFERENCES cliente(id) on delete CASCADE**

**);**











