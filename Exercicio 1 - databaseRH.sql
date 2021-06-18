-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
-- trabalhará com as informações dos funcionaries desta empresa.
-- Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
-- atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionaries com o salário maior do que 2000.
-- Faça um select que retorne os funcionaries com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

create database db_rh;

use db_rh;

create table tb_funcionarios (
id bigint auto_increment,
nome varchar(255) not null,
cargo varchar(255),
salario decimal not null,
supervisor varchar(255),
primary key (id)
);

insert into tb_funcionarios (nome, cargo, salario, supervisor) values ("Caruso", "Dev Java Jr", 3.000, "Rafael");
insert into tb_funcionarios (nome, cargo, salario, supervisor) values ("Lucia", "Estagiaria", 1.000, "Johnny");
insert into tb_funcionarios (nome, cargo, salario, supervisor) values ("Fernando", "Dev Java Senior", 8.000, "Mauro");
insert into tb_funcionarios (nome, cargo, salario, supervisor) values ("Madalena", "Dar trabalho", 1.000, "FeCaruso");
insert into tb_funcionarios (nome, cargo, salario, supervisor) values ("Polianna", "Psicóloga de e-Sports", 10.000, "Marina");

-- lembrar de perguntar ao professor: caso eu queira colocar o salário como 800, como mudar isso?
-- lembrar de perguntar ao professor: caso eu queria introduzir uma nova categoria, como tempoDeCasa, como fazer isso?

select * from tb_funcionarios;

alter table tb_funcionarios modify salario decimal (6,3);

select * from tb_funcionarios where salario > 2.000;

select * from tb_funcionarios where salario < 2.000;

