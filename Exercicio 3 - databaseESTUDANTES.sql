-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
-- informações dos estudantes deste registro dessa escola.
-- Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos estudantes para se trabalhar com o serviço dessa escola.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne o/as estudantes com a nota maior do que 7.
-- Faça um select que retorne o/as estudantes com a nota menor do que 7.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

create database db_escola;

use db_escola;

create table tb_estudantes (
id bigint auto_increment,
nome varchar(255),
serie varchar(255),
professor varchar(255),
notaProvaMatematica int,
notaProvaRedacao int,
primary key (id)
);

insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Caruso", "3º Ano", "Rafael", 8, 8);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Lucia", "2º Ano", "Rafael", 5, 7);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Madalena", "1º Ano", "Tati", 3, 4);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Fernando", "3º Ano", "Rafael", 6, 7);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Polianna", "3º Ano", "Marina", 10, 10);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Jeff", "3º Ano", "Jefferson", 7, 9);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Ravenna", "2º Ano", "FeCaruso", 5, 6);
insert into tb_estudantes (nome, serie, professor, notaProvaMatematica, notaProvaRedacao) values ("Zatanna", "2º Ano", "FeCaruso", 6, 8);

select * from tb_estudantes;

-- diferente do java, a opção de "e" ou "ou" no MySQL é denominada por "and" ou "or". 
select * from tb_estudantes where notaProvaMatematica > 7; 
select * from tb_estudantes where notaProvaRedacao > 7;

select * from tb_estudantes where notaProvaMatematica < 7;
select * from tb_estudantes where notaProvaRedacao < 7; 

update tb_estudantes set notaProvaRedacao = 8 where id = 5;
