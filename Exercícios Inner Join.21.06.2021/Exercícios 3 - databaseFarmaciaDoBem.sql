/*Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco
deverá ter o seguinte nome db_farmacia_do_bem, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia(não
esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).*/

create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria (

id biginT auto_increment,
departamento varchar(255),
comReceita boolean not null,
primary key (id)
);

insert into tb_categoria (departamento, comReceita) values ("Remédio", true); -- 1
insert into tb_categoria (departamento, comReceita) values ("Sprays", false); -- 2
insert into tb_categoria (departamento, comReceita) values ("Higiene", false); -- 3
insert into tb_categoria (departamento, comReceita) values ("Estética", false); -- 4
insert into tb_categoria (departamento, comReceita) values ("Saúde e Beleza", false); -- 5
insert into tb_categoria (departamento, comReceita) values ("Conveniência", false); -- 6

select * from tb_categoria;


create table tb_produtos (

id bigint auto_increment,
nomeFarmaceutico varchar(255),
dorCabeca varchar(255),
dorMuscular varchar(255),
tintaCabelo varchar(255),
esmalte varchar(255),
balas varchar(255),
saudeEbeleza varchar(255),
preco decimal (8,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("José", "Neosa", null, null, null, null, null, "11.90", 1);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("João", null, "Gelol Compre 6 pague 5", null, null, null, null, "89.90", 2);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Alcides", null, null, null, "Risqué Kit Manicure", null, null, "79.90", 4);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("José", null, null, "Embelleze", null, null, null, "29.90", 5);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Alencar", null, null, null, null, "Creme Dental", null, "2.90", 3);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("João", null, "Vodol", null, null, null, null, "49.90", 2);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Adriana", null, null, null, null, null, "Tablet Valda", "4.90", 6);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("José", "Aspirina", null, null, null, null, null, "5.90", 1);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("João", null, null, "Cor&Tom", null, null, null, "18.90", 5);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Alcides", null, null, null, "Dior", null, null, "19.90", 4);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Adriana", null, null, null, null, null, "Pirulitos", "2.50", 6);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Alencar", null, null, null, null, "Escova de Dente", null, "4.90", 3);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Alencar", null, null, null, null, "Sabonete", null, "3.90", 3);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Alcides", null, null, null, "Revlon", null, null, "16.90", 4);
insert into tb_produtos (nomeFarmaceutico, dorCabeca, dorMuscular, tintaCabelo, esmalte, balas, saudeEbeleza, preco, categoria_id) values ("Adriana", null, null, null, null, null, "Doces", "9.99", 6);

select * from tb_produtos;

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where dorCabeca like "c%" or "%c";
select * from tb_produtos where dorMuscular like "c%" or "%c";
select * from tb_produtos where tintaCabelo like "c%" or "%c";
select * from tb_produtos where esmalte like "c%" or "%c";
select * from tb_produtos where balas like "c%" or "%c";
select * from tb_produtos where saudeEbeleza like "c%" or "%c";

select tb_produtos.nomeFarmaceutico, tb_produtos.dorCabeca, tb_produtos.dorMuscular, tb_produtos.tintaCabelo, 
tb_produtos.esmalte, tb_produtos.balas, tb_produtos.saudeEbeleza, tb_produtos.preco, tb_produtos.categoria_id, tb_categoria.departamento 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

-- apenas Remédios para Dor de Cabeça: 
select tb_produtos.nomeFarmaceutico, tb_produtos.dorCabeca, tb_produtos.dorMuscular, tb_produtos.tintaCabelo, 
tb_produtos.esmalte, tb_produtos.balas, tb_produtos.saudeEbeleza, tb_produtos.preco, tb_produtos.categoria_id, tb_categoria.departamento 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 1;

-- apenas Produtos para Dor Muscular:
select tb_produtos.nomeFarmaceutico, tb_produtos.dorCabeca, tb_produtos.dorMuscular, tb_produtos.tintaCabelo, 
tb_produtos.esmalte, tb_produtos.balas, tb_produtos.saudeEbeleza, tb_produtos.preco, tb_produtos.categoria_id, tb_categoria.departamento 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 2;

-- apenas produtos para Higiene:
select tb_produtos.nomeFarmaceutico, tb_produtos.dorCabeca, tb_produtos.dorMuscular, tb_produtos.tintaCabelo, 
tb_produtos.esmalte, tb_produtos.balas, tb_produtos.saudeEbeleza, tb_produtos.preco, tb_produtos.categoria_id, tb_categoria.departamento 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 3;

-- apenas produtos para Saúde e Beleza:
select tb_produtos.nomeFarmaceutico, tb_produtos.dorCabeca, tb_produtos.dorMuscular, tb_produtos.tintaCabelo, 
tb_produtos.esmalte, tb_produtos.balas, tb_produtos.saudeEbeleza, tb_produtos.preco, tb_produtos.categoria_id, tb_categoria.departamento 
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where tb_produtos.categoria_id = 5;
