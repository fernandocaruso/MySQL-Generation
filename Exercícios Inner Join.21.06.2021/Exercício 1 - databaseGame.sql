/* Crie um banco de dados para um serviço de um game Online , o nome do banco deverá ter
o seguinte nome: db_generation_game_online, onde, o sistema trabalhará com as
informações dos personagens desse game.
**** O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.
Siga exatamente esse passo a passo:
**Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game Online.
***************************
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5 atributos relevantes dos personagens para se trabalhar com o serviço desse game Online
(não esqueça de criar a foreign key de tb_classe nesta tabela).
Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.
***Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
******Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
****Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagem de uma classe específica (exemplo todos os personagens que são arqueiros).*/

create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(

id BIGINT auto_increment,
descricao varchar(255),
subClasse varchar(255),
regiao varchar(255),
ultimate varchar(255),
PRIMARY KEY (id)
);

insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Mago", "Magia", "Wizard", "Campo Gravitacional"); -- 1
insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Arqueiro", "Distância", "Arrow", "Chuva Lunas de Flechas"); -- 2
insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Orc", "Tanque", "Shrek", "Slow Pântano"); -- 3
insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Warrior", "Guerreiro", "Castle", "Espada da Glória"); -- 4
insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Assassin", "Furtividade", "Netuno", "Transfusor"); -- 5
insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Elfo", "Inteligência", "Scalandra", "Dobby's Sock"); -- 6
insert into tb_classe (descricao, subClasse, regiao, ultimate) value ("Paladino", "Suporte", "Eternum", "Consagração Cintilante"); -- 7

-- lembrar de perguntar ao professor, como eu posso fazer pra identificar a linha 432, por exemplo, caso eu tenha um banco de dados com mil linhas.
-- se utiliza naturalmente o identificador justamente pelo mysql trabalhar com registros e não com linhas.

select * from tb_classe;

create table tb_personagens(

id BIGINT auto_increment,
nome varchar(255),
arma varchar(255),
velAtaque int not null,
danoMagico int not null,
escudo int not null,
danoVerdadeiro int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

alter table tb_personagens add velMovimento int not null;

insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Zatanna", "Cajado Mágico", 1000, 2200, 1200, 1700, 1, 1200);
insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Panz", "Kanabo", 600, 300, 2100, 1850, 3, 500);
insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Vodca", "Chisa Katana Dupla", 2200, 100, 500, 1700, 5, 2200);
insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Azazel", "Espelho dos Favores", 1300, 1700, 1600, 300, 7, 1200);
insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Madalena", "Lança da Luz", 1500, 1650, 1500, 900, 6, 1100);
insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Cedric", "Espada XVII",  1100, 600, 1600, 1700, 4, 1100);
insert into tb_personagens (nome, arma, velAtaque, danoMagico, escudo, danoVerdadeiro, classe_id, velMovimento) value ("Spitcz", "ArkinWood", 2200, 1200, 800, 1400, 2, 1500);

select * from tb_personagens where danoVerdadeiro > 2000;

select * from tb_personagens where escudo between 1000 and 2000;

select * from tb_personagens where danoMagico and danoVerdadeiro > 1000;

-- condição onde tem C no começo e no fim;
select * from tb_personagens where nome like "c%" or "%c";
-- condição onde tenha C no nome do personagem em qualquer lugar.
select * from tb_personagens where nome like "%c%";

-- inner join todos os personagens
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;


-- condição Maguinho
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 1;

-- condição Arqueiro
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 2;

-- condição Orc
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 3;

-- condição Warrior
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 4;

-- condição Assasin
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 5;

-- condição Elfo
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 6;

-- condição Paladino
select tb_personagens.nome, tb_personagens.arma, tb_personagens.velAtaque, tb_personagens.danoMagico, tb_personagens.escudo, tb_personagens.danoVerdadeiro, tb_personagens.classe_id, tb_personagens.velMovimento, 
tb_classe.descricao from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id where tb_personagens.classe_id = 7; 