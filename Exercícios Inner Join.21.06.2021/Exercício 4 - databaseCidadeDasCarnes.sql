create database db_cidade_das_carnes;

use db_cidade_das_carnes;

create table tb_categoria(
id bigint auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, ativo) values ("Bovino", true);
insert into tb_categoria (descricao, ativo) values ("Suino", true);
insert into tb_categoria (descricao, ativo) values ("Aves", true);
insert into tb_categoria (descricao, ativo) values ("Pertence Feijoada", true);
insert into tb_categoria (descricao, ativo) values ("Imbutidos", true);
insert into tb_categoria (descricao, ativo) values ("Soja", true);
insert into tb_categoria (descricao, ativo) values ("Outros", true);

select * from tb_categoria;

create table tb_produtos (
id bigint auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qtproduto int not null,
dtvalidade date,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Picanha Nobre", 80.00, 30, "2021-11-08", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Asa de Frango", 20.00, 30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Coxa de Frango", 30.00, 30, "2021-11-07", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Bacon", 60.00, 30, "2021-11-09", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Hamburguer", 70.00, 30, "2021-09-07", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Cupim", 30.00, 30, "2021-11-10", 1);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Peito de frango", 29.00, 30, "2021-11-09", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Orelha de porco", 30.00, 30, "2021-11-07", 4);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Salame", 24.00, 30, "2021-11-21", 5);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Medalhao", 57.00, 30, "2021-11-15", 3);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Mocoto", 22.00, 30, "2021-10-05", 2);
insert into tb_produtos (nome, preco, qtProduto, dtvalidade, categoria_id) values ("Chuleta", 19.00, 30, "2021-10-07", 1);
insert into tb_produtos (nome, preco, qtProduto) values ("Acendedor de Churrasqueira", 10.00, 30);
insert into tb_produtos (nome, preco, qtProduto) values ("Soprador de Churrasqueira", 15.00, 30);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome Like "%c%";

-- condição que mostre apenas categoria Bovinos:
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 1;
 
 -- condição que mostre apenas produtos pertencentes à Feijoada:
 select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria, tb_categoria.ativo as estado_da_categoria
 from tb_produtos inner join tb_categoria on  tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 4;


