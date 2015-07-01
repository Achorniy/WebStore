Drop database if exists `WebStore`;

Create schema `WebStore`;
Use `WebStore`;

Create table if not exists`WebStore`.`Customer`(
`idCustomer` int not null auto_increment,
`login` varchar(45) not null,
`email` varchar(45) not null,
`telephoneNumber` varchar(45) not null,
`password` varchar(45) not null,
primary key(`idCustomer`));

Create table if not exists `WebStore`.`Product`(
`idProduct` int not null auto_increment,
`name` varchar(45) not null,
`price` int not null,
`description` varchar(45) not null,
`pic` varchar(200),
primary key(`idProduct`));

Create table if not exists `WebStore`.`Orders`(
`idOrder` int not null auto_increment,
`addressOfDelievery` varchar(45) not null,
`customerLogin` varchar(45) not null,
primary key(`idOrder`));

Create table if not exists `WebStore`.`Order_Product`(
`idOrder_Product` int not null auto_increment,
`idOrder` int,
`idProduct` int,
primary key(`idOrder_Product`));

insert into `webstore`.`product`(idProduct, description, name, price, pic) values (1, 'French car', 'Renault Laguna', 13000, 'http://newavtology.avtology.lclients.ru/img/news/03-30-Renault%20Laguna.jpg');
insert into `webstore`.`product`(idProduct, description, name, price, pic) values (2, 'Czech car', 'Skoda Rapid', 13000, 'http://www.kolesa.ru/uploads/bnnews/2014/02/28/25749_1393601520_23467x482774-995x663.665-90.jpg');
insert into `webstore`.`product`(idProduct, description, name, price, pic) values (3, 'German car', 'BMW 735', 19000, 'http://auto.dmir.ru/logo/1/21021/chery-tiggo-21021.jpg');
insert into `webstore`.`product`(idProduct, description, name, price, pic) values (4, 'Chenese car', 'Cherry Tiggo', 9500, 'http://autoback.ru/wp-content/uploads/2011/02/BMW-735.jpg');
insert into `webstore`.`product`(idProduct, description, name, price, pic) values (5, 'Ukrainian car', 'ZAZ Vida', 7000, 'http://autocentre.ua/images/stories//march12/Zaz_Vida_2.jpg');
insert into `webstore`.`product`(idProduct, description, name, price, pic) values (6, 'Japanese car', 'Honda Accord', 17000, 'http://images.thecarconnection.com/med/honda-accord-coupe-hf-s-and-hfp-at-sema_100217762_m.jpg');


SELECT * FROM webstore.product;

