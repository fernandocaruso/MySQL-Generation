-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
-- informações dos produtos deste ecommerce.
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
-- relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
-- coloque no seu GitHuB pessoal e compartilhe esta atividade.

create database db_ecommerce;

use db_ecommerce;

create table tb_ecommerce (

id bigint auto_increment,
nome varchar (255),
departamento varchar(255),
genero varchar (255),
preço decimal (2),
quantEstoque int,
primary key (id)
);

insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Bola", "Esportes", "Neutro", 39.90, "178");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Tênis Masculinos", "Vestuário", "Masculino", 49.90, "70");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Tênis Femininos", "Vestuário", "Feminino", 49.90, "71");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Televisão", "Eletrônicos", "Neutro", 999.90, "47");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Celulares", "Eletrônicos", "Neutro", 799.90, "64");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Sofás", "Móveis", "Neutro", 499.90, "100");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Panelas AntiAderentes", "Cozinha", "Neutro", 89.90, "231");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Frigideiras AntiAderentes", "Cozinha", "Neutro", 109.90, "46");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Poltronas", "Móveis", "Neutro", 299.90, "205");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Vestidos", "Vestuário", "Neutro", 59.90, "200");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Aparelho de Barbear Elétrico", "Eletrônicos", "Masculino", 89.90, "94");
insert into tb_ecommerce (nome, departamento, genero, preço, quantEstoque) values ("Notebooks", "Eletrônicos", "Neutro", 1499.90, "480");

select * from tb_ecommerce;

alter table tb_ecommerce modify preço decimal (15,2);
-- perguntar ao professor como não arredondar o produto e manter o valor inicial!

select * from tb_ecommerce where preço > 500;

select * from tb_ecommerce where preço < 500;


