/*Crie um banco de dados para um serviço de pizzaria de uma empresa, o nome do banco
deverá ter o seguinte nome db_pizzaria_legal, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço dessa pizzaria.
Crie uma tabela de tb_pizza e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos tb_produto para se trabalhar com o serviço dessa pizzaria(não esqueça de
criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela pizza com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 45 reais.
Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra C.
Faça um um select com Inner join entre tabela categoria e pizza.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos
os produtos que são pizza doce).*/

create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id biginT auto_increment,
tipo varchar (255) not null,
borda boolean not null,
primary key (id)
);

insert into tb_categoria (tipo, borda) values ("Salgada Popular", true); -- 1
insert into tb_categoria (tipo, borda) values ("Salgada Especial", true); -- 2
insert into tb_categoria (tipo, borda) values ("Doce", false); -- 3
insert into tb_categoria (tipo, borda) values ("Brotinho", true); -- 4
insert into tb_categoria (tipo, borda) values ("Calzone", true); -- 5

select * from tb_categoria;

create table tb_pizza (
id bigint auto_increment,
nomePizza varchar (255) not null,
preco decimal(8,2) not null,
tamanho char,
ingredientes varchar(255),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Portuguesa", 39.90, "G", "Rodelas de cebola, sob queijo mussarela, presunto, cebola, pimentão, tomate, ovos, orégano e azeitonas", 1);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Calabresa", 39.90, "M", "Calabresa fatiada sob queijo mussarela e especiarias", 1);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Frango C/ Catupiry", 49.90, "G", "Frango desfiado com Catupiry Original®", 2);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Três Queijos", 62.90, "G", "Mussarela, Brie, Parmesão", 2);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Brigadeiro com Banana", 59.90, "M", "Chocolate com pedaços de Banana", 3);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Abacaxi Flambado", 63.90, "M", "Pedaços de Abacaxi com canela flambada", 3);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Brotinho Portuguesa", 19.90, "P", "MiniPizza Portuguesa", 4);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Brotinho Especial Frango C/ Catupiry", 19.90, "P", "MiniPizza de Frango C/ Catupiry", 4);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Calzone Presunto e Queijo", 69.90, "G", "Pizza Fechada sabor Presunto e Queijo", 5);
insert into tb_pizza (nomePizza, preco, tamanho, ingredientes, categoria_id) values ("Calzone Italiano", 69.90, "G", "Pizza Fechada sabor Especiarias Italianas", 5);

select * from tb_pizza;

select * from tb_pizza where preco > 45;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where nomePizza like "c%" or "%c";

select * from tb_pizza where nomePizza like "%c%";

select tb_pizza.nomePizza, tb_pizza.preco, tb_pizza.tamanho, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

-- condição de Pizzas Salgadas Populares
select tb_pizza.nomePizza, tb_pizza.preco, tb_pizza.tamanho, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.categoria_id = 1;

-- condição de Pizzas Salgadas Especiais
select tb_pizza.nomePizza, tb_pizza.preco, tb_pizza.tamanho, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.categoria_id = 2;

-- condição de Pizzas Doces
select tb_pizza.nomePizza, tb_pizza.preco, tb_pizza.tamanho, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.categoria_id = 3;

-- condição Brotinhos
select tb_pizza.nomePizza, tb_pizza.preco, tb_pizza.tamanho, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.categoria_id = 4;

-- condição Calzones
select tb_pizza.nomePizza, tb_pizza.preco, tb_pizza.tamanho, tb_pizza.ingredientes, tb_pizza.categoria_id, tb_categoria.tipo from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id
where tb_pizza.categoria_id = 5;









 

