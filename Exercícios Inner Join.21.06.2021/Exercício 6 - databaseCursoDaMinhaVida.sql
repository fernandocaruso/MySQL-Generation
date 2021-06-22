/* Crie um banco de dados para um serviço de um site de cursos onlines, o nome do banco
deverá ter o seguinte nome db_cursoDaMinhaVida, onde o sistema trabalhará com as
informações dos produtos desta empresa.
O sistema trabalhará com 2 tabelas tb_curso e tb_categoria.
siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos
relevantes do tb_categoria para se trabalhar com o serviço deste site de cursos onlines.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5
atributos relevantes dos tb_produto para se trabalhar com o serviço de um site de cursos
onlines(não esqueça de criar a foreign key de tb_categoria nesta tabela).
Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.
Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
Faça um select utilizando LIKE buscando os Produtos com a letra J.
Faça um um select com Inner join entre tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria Java).*/

create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria (
id bigint auto_increment,
areaCurso varchar(255),
modalidade varchar(255),
primary key (id)
);

insert into tb_categoria (areaCurso, modalidade) values ("Empresarial", "Intensivo EAD");
insert into tb_categoria (areaCurso, modalidade) values ("Bacharel", "Presencial");
insert into tb_categoria (areaCurso, modalidade) values ("Tecnólogo", "EAD");

select * from tb_categoria;


create table tb_curso (
id biginT auto_increment,
descricao varchar(255),
preco decimal(8,2),
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_curso (descricao, preco, categoria_id) values ("Administração C/ Comércio Exterior", 399.90, 1);
insert into tb_curso (descricao, preco, categoria_id) values ("Edificações", 199.90, 3);
insert into tb_curso (descricao, preco, categoria_id) values ("Ciências Contábeis", 299.90, 2);
insert into tb_curso (descricao, preco, categoria_id) values ("Excel Avançado", 49.90, 1);
insert into tb_curso (descricao, preco, categoria_id) values ("Contabilidade", 69.90, 3);
insert into tb_curso (descricao, preco, categoria_id) values ("Photoshop", 37.90, 1);
insert into tb_curso (descricao, preco, categoria_id) values ("Redes", 239.90, 3);
insert into tb_curso (descricao, preco, categoria_id) values ("Arquitetura", 354.90, 2);

select * from tb_curso;

select * from tb_curso where preco > 50;

select * from tb_curso where preco between 3 and 60;

select * from tb_curso where descricao Like "%j%";

select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id;

-- condição apenas cursos voltados para a área Empresarial: 
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_curso.categoria_id = 1;

-- condição apenas cursos com Bacharel: 
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_curso.categoria_id = 2;

-- condição apenas cursos Tecnólogos à Distância: 
select * from tb_curso inner join tb_categoria on tb_categoria.id = tb_curso.categoria_id where tb_curso.categoria_id = 3;
