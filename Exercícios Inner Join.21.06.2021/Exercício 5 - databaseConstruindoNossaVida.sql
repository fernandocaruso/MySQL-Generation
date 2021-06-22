/* Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome
do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema
trabalhará com as informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
Siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
Crie uma tabela de tb_produto e utilize a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).*/

create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;


create table tb_categoria (
id bigint auto_increment,
departamento varchar(255),
emPromocao boolean not null,
primary key (id)
);

insert into tb_categoria (departamento, emPromocao) values ("Casa&Lazer", true);
insert into tb_categoria (departamento, emPromocao) values ("Serviços Hidráulicos", false);
insert into tb_categoria (departamento, emPromocao) values ("Obras", true);

select * from tb_categoria;


create table tb_produtos (
id biginT auto_increment,
descricao varchar(255),
preco decimal(8,3),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (descricao, preco, categoria_id) values ("Sofás", 399.90, 1);
insert into tb_produtos (descricao, preco, categoria_id) values ("Cadeira de Sol", 299.90, 1);
insert into tb_produtos (descricao, preco, categoria_id)values ("Vaso Sanitário", 99.90, 2);
insert into tb_produtos (descricao, preco, categoria_id) values ("Cano PVC 80m", 129.90, 2);
insert into tb_produtos (descricao, preco, categoria_id) value ("Torneira p/ Pia", 29.90, 2);
insert into tb_produtos (descricao, preco, categoria_id) value ("Espelho de Tomada", 7.90, 3);
insert into tb_produtos (descricao, preco, categoria_id) value ("Filtro de Água", 39.90, 2);
insert into tb_produtos (descricao, preco, categoria_id) value ("Cimento 25kg", 24.90, 3);

select * from tb_produtos;

alter table tb_produtos modify preco decimal(8,2);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where descricao Like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- condição apenas produtos para Casa&Lazer: 
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 1;

-- condição apenas produtos Hidraulicos:
select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 2;
