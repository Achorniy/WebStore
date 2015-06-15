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

insert into `webstore`.`product`(idProduct, description, name, price) values (1, 'French car', 'Renault Laguna', 13000);
insert into `webstore`.`product`(idProduct, description, name, price) values (2, 'Czech car', 'Skoda Rapid', 13000);
insert into `webstore`.`product`(idProduct, description, name, price) values (3, 'German car', 'BMW 735', 19000);
insert into `webstore`.`product`(idProduct, description, name, price) values (4, 'Chenese car', 'Cherry Tiggo', 9500);
insert into `webstore`.`product`(idProduct, description, name, price) values (5, 'Ukrainian car', 'ZAZ Vida', 7000);

SELECT * FROM webstore.product;