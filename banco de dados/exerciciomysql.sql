create database escola;

create table aluno(
id serial primary key,
nome varchar(30) not null,
matricula int not null,
email varchar(60) not null,
endereco varchar(100) not null,
telefone varchar(10) not null
);

insert into aluno (id,nome,matricula,email,endereco,telefone) values
	(1,'João Carlos',1234,'jcarlos@gmail.com','Rua 13 de maio', '(11)7825-4489'),
	(2,'José Vitor',2345,'jvitor@gmail.com','Rua da Saudade','(11)7825-6589'),
	(3,'Paulo André',3456,'pandr@gmail.com','Rua do Sol','(11)7825-4495');

alter table aluno change column telefone telefone varchar(30);

create table emprestimo(
codigo int unsigned not null auto_increment,
data_hora datetime not null,
matric_aluno int not null,
data_devolucao date not null,
primary key (codigo)
);

insert into emprestimo(data_hora,matric_aluno,data_devolucao) values
	('2022-03-12 15:25', 1234, '2022-03-15'),
    ('2022-03-15 14:32', 3456, '2022-03-17'),
    ('2022-03-20 03:51', 2345, '2022-03-22');
    
create table livro(
cod_livro int unsigned not null,
titulo varchar(100) not null,
autor varchar(100) not null,
cod_sessao int not null,
primary key(cod_livro)
);
create table sessao(
codigo int unsigned not null,
descricao varchar(500) not null,
localizacao varchar(50) not null,
primary key (codigo)
);

create table livro_emprestimo(
cod_livro int unsigned not null,
cod_emprestimo int not null,
primary key (cod_livro)
);

insert into livro (cod_livro,titulo, autor, cod_sessao) values
	(1,'Modelo conceitual e Diagramas ER','Pressman, Roger S.', 3),
    (2,'Livro 2: Modelo Relacional e Álgebra Relacional','Heuser, Carlos Alberto',1),
    (3,'Livro 3: Linguagem SQL','Beighley, Lynn',2);
    
insert into sessao(codigo,descricao,localizacao) values
	(1,'sessao 1', 'Prateleira 1'),
    (2,'sessao 2', 'Prateleira 2'),
    (3, 'sessao 3', 'Prateleira 3');
    
    insert into livro_emprestimo(cod_livro,cod_emprestimo) values
		(3,1),
        (1,3),
        (2,2);

show tables


    
