/*Annethy Javier, MA: 2020-10518*/
/*Creacion de la base de datos*/

show databases;
Use pratica_4;

/*Creacion de las tablas y sus relaciones*/
/*Creacion de la tabla factura*/
Create table Factura(
ID_factura int primary Key auto_increment,
Fecha varchar(60) not null,
Cliente varchar (65) not null 
); 

/*Creacion de la tabla factura_detalle*/
Create table Factura__Detalle (
 id int primary key AUTO_INCREMENT,
nombre_producto varchar(70) not null,
precio double not null,
cantidad int not null,
id_factura int not null,
 INDEX idfact (id_factura),
    FOREIGN KEY (id_factura)
        REFERENCES Factura(id_factura)
);

     /*Insertar 5 registos en la tabla factura*/
     /*Fecha y cliente*/
insert into Factura(fecha,cliente)
values("20/ FEB/ 2020 ","Luis Mota");
insert into Factura(fecha,cliente)
values("12/MAR / 2020","Abel Perez");
insert into Factura(fecha,cliente)values
("31/ MAR / 2020","Vielka Lara");
insert into Factura(fecha,cliente)values
("25/ FEB / 2020","Nahuel Montero");
insert into Factura(fecha,cliente)values
("30/ ABRIL / 2020 ","Sonia Devis");

/*Insertar 20 registros en la tabla factura_Detalle (agregar mas de un registro por factura)*/
/*Nombre del producto, Precio, Cantidad y ID_ factura*/
/*1*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Vestido Blanco", 850, 2 , 001);
/*2*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Pantalon", 200 , 3 , 002);
/*3*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Pastel de chocolate", 550 , 1 ,003);
/*4*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Jugo de fresa", 300 , 2 ,004);
/*5*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Compona", 75 , 10 ,005);
/*6*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Blusa roja", 450, 2 , 006);
/*7*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Cartea Guchi", 4000, 1, 007);
/*8*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Funda de almohada", 300, 4, 008);
/*9*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Compota Grande", 100, 50, 009);
/*10*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Gabetero", 2000, 4, 0010);
/*11*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Gelatina mediana", 50, 10, 0011);
/*12*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Chocolate Rocky", 95, 5, 0012);
/*13*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Cargadores Iphone", 500, 2, 0013);
/*14*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Cargadores para PC", 2,500, 1, 0014);
/*15*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Forros Iphone 7Plus", 680, 7 , 0015);
/*16*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Forros Iphone 6Plus", 560, 3 , 0016);
/*17*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Forros Iphone 6s", 600, 2 , 0017);
/*18*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Forros Iphone 7s", 700, 8 , 0018);
/*19*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Forros Iphone 8Plus", 800, 10, 0019);
/*20*/ insert into Factura_Detalle(nombre_producto,precio,cantidad,id_factura)
values("Paquete de fresas", 150, 50, 0020);

/* Realizar una consulta que devuelva la factura de mayor monto*/
SELECT id_factura, precio from `Factura_Detalle` where precio >(select min(precio) from `Factura_Detalle`);

/* Realizar una consulta que devuelva la suma de todo lo facturado*/
 SELECT sum(precio)from `Factura_Detalle`;

/* Editar la tabla factura y renombrar el campo cliente a 'nombre_cliente'*/
ALTER TABLE `Pratica_4`.`Factura` 
CHANGE COLUMN `cliente` `nombre_cliente` VARCHAR(75) NOT NULL ;


/*FIN*/