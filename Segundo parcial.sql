/*Annethy Javier*/

create  database clinica_ABC;

Use clinica_ABC;

Create table paciente_1 (
id_paciente_1 int primary key auto_increment,
nombre_del_paciente varchar (100) not null,
apellido_del_paciente varchar (100) not null,
domicilio varchar (100) not null,
provinica varchar (100) not null, 
numero varchar (100) not null, 
correo_electronico varchar (100) not null,
edad varchar (100) not null, 
fecha_de_nacimiento varchar (100) not null, 
Genero varchar (100) not null, 
Estado_civil varchar (100) not null
);

create table medicos_1 (
id_medicos_1 int primary key auto_increment,
Nombre varchar (100) not null,
Apellido varchar (100) not null,
numero_de_indentificacion varchar (100) not null,
Especealidad varchar (100) not null,
cargo varchar (100) not null

);

create table citas_medicas_1 (
id_citas_medicas_1 int primary key auto_increment,
numero_seguridad_social varchar (100) not null,

id_paciente_1 int not null,
 INDEX idpaci (id_paciente_1),
    FOREIGN KEY (id_paciente_1)
        REFERENCES paciente_1(id_paciente_1),
        
	fecha varchar (100) not null, 
    hora varchar (100) not null,
    centro_medico varchar (100) not null,
	numero_de_planta varchar (100) not null,
    
    id_medicos_1 int not null,
 INDEX idme (id_medicos_1),
    FOREIGN KEY (id_medicos_1)
        REFERENCES medicos_1(id_medicos_1)

);


create table consulta_medicas_1 (
id_consulta_medicas_1 int primary key auto_increment,
id_paciente_1 int not null,
 INDEX idpaci (id_paciente_1),
    FOREIGN KEY (id_paciente_1)
        REFERENCES paciente_1(id_paciente_1),
        
sintomas varchar (100) not null,
padecimiento varchar (100) not null,
area_salud varchar (100) not null,

 id_citas_medicas_1 int not null,
 INDEX idcm (id_citas_medicas_1),
    FOREIGN KEY (id_citas_medicas_1)
        REFERENCES citas_medicas_1(id_citas_medicas_1),
        
         id_medicos_1 int not null,
 INDEX idme (id_medicos_1),
    FOREIGN KEY (id_medicos_1)
        REFERENCES medicos_1(id_medicos_1)

);

create table historial_clinico (
id_historial_clinico int primary key auto_increment,
id_paciente_1 int not null,
 INDEX idpaci (id_paciente_1),
    FOREIGN KEY (id_paciente_1)
        REFERENCES paciente_1(id_paciente_1),
        
 motivo_consulta varchar (100) not null,
 Enfermedad_diagnostica varchar (100) not null,
 Enfermedad_heredictaria varchar (100) not null,
 cirugia varchar (100) not null,
 tiempo_de_cirugia varchar (100) not null,
 medicamento varchar (100) not null,
 nombre_medicamento varchar (100) not null,
 alergia varchar (100) not null,
 Actividad_fisica varchar (100) not null,
 alimento_quenocosume varchar (100) not null,
 
  id_citas_medicas_1 int not null,
 INDEX idcm (id_citas_medicas_1),
    FOREIGN KEY (id_citas_medicas_1)
        REFERENCES citas_medicas_1(id_citas_medicas_1)
);


/*Los permisos*/
create user 'secretarias'@'localhost' identified by '1234';
show grants for 'secretarias'@'localhost';
grant select on clinica_abc.citas_medicas_1 to'secretarias'@'localhost';
grant select on clinica_abc.consulta_medicas_1 to'secretarias'@'localhost';
grant insert on clinica_abc.consulta_medicas_1 to'secretarias'@'localhost';
grant insert on clinica_abc.citas_medicas_1 to'secretarias'@'localhost';
grant delete on clinica_abc.citas_medicas_1 to'secretarias'@'localhost';
grant delete on clinica_abc.consulta_medicas_1 to'secretarias'@'localhost';

create user 'medicos'@'localhost' identified by '4545';
grant select on clinica_abc.citas_medicas_1 to 'medicos'@'localhost';
grant select on clinica_abc.consulta_medicas_1 to'medicos'@'localhost';
grant insert on clinica_abc.consulta_medicas_1 to  'medicos'@'localhost';
grant insert on clinica_abc.citas_medicas_1 to 'medicos'@'localhost';
grant insert on clinica_abc.historial_clinico to 'medicos'@'localhost';
grant select on clinica_abc.historial_clinico to 'medicos'@'localhost';




insert into paciente_1 (nombre_del_paciente, apellido_del_paciente,domicilio,provinica,numero, 
correo_electronico,edad, fecha_de_nacimiento, Genero, Estado_civil) values
/*1*/ ("Annethy", "Javier", "AVE.Darte", "Santo Domingo","809-912-3742", 
"annethy@gmail.com","21","19/02/2000","Mujer", "Soltera"),
/*2*/ ("Jimin", "Park", "AVE.Darte", "Santo Domingo","809-912-3900", 
"jiminp@gmail.com","21","15/02/2000","Hombre", "Soltero"),
/*3*/("Namjoon", "Kim", "AVE.Darte", "Santo Domingo","809-932-3042", 
"NamK@gmail.com","20","19/02/2001","Mujer", "Soltero"),
/*4*/("Amanda", "Garcia", "AVE.Darte", "Santo Domingo","809-452-3792", 
"amandag@gmail.com","21","21/02/2000","Mujer", "Soltera"),
/*5*/("Laura", "Robles", "AVE.Darte", "Santo Domingo","829-902-3742", 
"laurar@gmail.com","21","19/02/2000","Mujer", "Soltera"),
/*6*/("Jayleer", "Javier", "AVE.Darte", "Santo Domingo","829-342-3742",
 "javierjayleen@gmail.com","21","09/02/2000","Mujer", "Soltera"),
/*7*/("Pamela", "Javier", "AVE.Darte", "Santo Domingo","859-982-3842", 
"pam45@gmail.com","20","19/02/2001","Mujer", "Soltera"),
/*8*/("Maria", "Perez", "AVE.Darte", "Santo Domingo","809-312-4542", 
"mariap@gmail.com","17","19/02/2004","Mujer", "Soltera"),
/*9*/("Lola", "Lorenzo", "AVE.Darte", "Santo Domingo","809-758-3242", 
"lolalo@gmail.com","21","19/02/2000","Mujer", "Soltera"),
/*10*/("Nahuel", "Javier", "AVE.Darte", "Santo Domingo","809-467-3742", 
"hamon@gmail.com","21","23/03/2000","Mujer", "Soltera"),
/*11*/("Annely", "Perez", "AVE.Darte", "Santo Domingo","809-912-0005", 
"annelype@gmail.com","21","19/12/2000","Mujer", "Soltera"),
/*12*/("Sofia", "Perez", "AVE.Darte", "Santo Domingo","809-912-0042", 
"sofia-001@gmail.com","21","19/04/2000","Mujer", "Soltera"),
/*13*/("Manuela", "Juarez", "AVE.Darte", "Santo Domingo","809-672-3742", 
"manuela12@gmail.com","21","19/05/2000","Mujer", "Soltera"),
/*14*/("Pamela", "Gonzales", "AVE.Darte", "Santo Domingo","809-001-3742", 
"pamelagar@gmail.com","21","19/11/2000","Mujer", "Soltera"),
/*15*/("Liriany", "Perez", "AVE.Darte", "Santo Domingo","809-902-0942", 
"lirianype@gmail.com","21","19/10/2000","Mujer", "Soltera"),
/*16*/("Francisca", "Lara", "AVE.Darte", "Santo Domingo","809-007-3002", 
"francisca002@gmail.com","21","10/09/2000","Mujer", "Soltera"),
/*17*/("Paulina", "Rubio", "AVE.Darte", "Santo Domingo","819-092-3742", 
"paulina022@gmail.com","21","20/12/2000","Mujer", "Soltera"),
/*18*/("Martha", "Montero", "AVE.Darte", "Santo Domingo","810-006-3742", 
"martha044@gmail.com","21","19/02/2000","Mujer", "Soltera"),
/*19*/("Leslie", "Martinez", "AVE.Darte", "Santo Domingo","809-912-0206", 
"leslie092@gmail.com","21","09/12/2000","Mujer", "Soltera"),
/*20*/("Lorenia", "Herrera", "AVE.Darte", "Santo Domingo","809-912-9874", 
"loherra002@gmail.com","21","29/09/2000","Mujer", "Soltera");

insert into medicos_1 (Nombre,Apellido,numero_de_indentificacion,Especealidad,cargo) values
/*1*/ ('Luis', 'Perez', '0010','cardiologia','Cardiologo'),
/*2*/ ('Pedro','Suarez','0020','cardiologia','cardiologo'),
/*3*/ ('Hector','Suarez','0030','cardiologia','cardiologo'),
/*4*/ ('Amelia','Suarez','0040','cardiologia','cardiologo'),
/*5*/ ('Nuria','Sanchez','0050','cardiologia','cardiologo'),
/*6*/ ('Lorena','Robles','0060','cardiologia','cardiologo'),
/*7*/ ('Laura','Garcia','0070','cardiologia','cardiologo'),
/*8*/ ('Pedro','Martinez','0080','cardiologia','cardiologo'),
/*9*/ ('Suana','Suarez','0090','cardiologia','cardiologo'),
/*10*/ ('Paola','Mendez','0100','cardiologia','cardiologo'),
/*11*/ ('Pedro','Javier','0110','cardiologia','cardiologo'),
/*12*/ ('Lorena','Jimenez','0120','cardiologia','cardiologo'),
/*13*/ ('Park','Jimin','0130','cardiologia','cardiologo'),
/*14*/ ('Kim','Namjoon','0140','cardiologia','cardiologo'),
/*15*/ ('Kim','SeokJin','0150','cardiologia','cardiologo'),
/*16*/ ('Jeon','Jungkook','0160','cardiologia','cardiologo'),
/*17*/ ('Min','Yoongi','0170','cardiologia','cardiologo'),
/*18*/ ('Perth','Tanapon','0180','cardiologia','cardiologo'),
/*19*/ ('Gun','Napat','0190','cardiologia','cardiologo'),
/*20*/ ('Fluke','Natouch','0200','cardiologia','cardiologo');


insert into citas_medicas_1 (numero_seguridad_social,id_paciente_1,fecha,hora,centro_medico,
numero_de_planta,id_medicos_1) values
/*1*/ ('001-002-003',1,'30/02/2020','03:00 P.M','Santa Fe','piso #1', 1),
/*2*/ ('004-005-006',2,'31/03/2020','04:00 P.M','Santa Fe','piso #1', 2),
/*3*/ ('007-008-009',3,'02/02/2020','03:00 P.M','Santa Fe','piso #2', 3),
/*4*/ ('010-011-012',4,'03/04/2020','02:00 P.M','Santa Fe','piso #2', 4),
/*5*/ ('013-014-015',5,'01/04/2020','03:00 P.M','Santa Fe','piso #1', 5),
/*6*/ ('016-017-018',6,'11/02/2020','01:00 P.M','Santa Fe','piso #4', 6),
/*7*/ ('019-020-021',7,'12/02/2020','03:00 P.M','Santa Fe','piso #5', 7),
/*8*/ ('022-023-024',8,'13/02/2020','02:00 P.M','Santa Fe','piso #4', 8),
/*9*/ ('025-026-027',9,'14/02/2020','04:00 P.M','Santa Fe','piso #2', 9),
/*10*/ ('028-029-030',10,'15/02/2020','02:00 P.M','Santa Fe','piso #1', 10);

insert into consulta_medicas_1 (id_paciente_1,sintomas,padecimiento,area_salud, 
id_citas_medicas_1, id_medicos_1) values
/*1*/ (20,'Edemas en las piernas', 'Insuficiencia cardiaca', 'Cardiologia', 2, 4),
/*2*/ (1,'Dolor de cabeza fuerte', 'Hipertension arterial', 'Cardiologia', 3, 5),
/*3*/ (2,'Latidos del corazon inrregulares', 'Insuficiencia cardiaca', 'Cardiologia', 4, 6),
/*4*/ (3,'Nauseas y vomitos', 'Hipertension arterial', 'Cardiologia', 5, 7),
/*5*/ (14,'sangrado nasal y dolor fuerte de cabeza', 'Hipertension arterial', 'Cardiologia', 6, 8),
/*6*/ (15,'fatiga y nauseas', 'angina de pecho', 'Cardiologia', 7, 9),
/*7*/ (16,'falta de aire', 'angina de pecho', 'Cardiologia', 7, 10),
/*8*/ (17,'fatiga y nauseas', 'angina de pecho', 'Cardiologia', 8, 11),
/*9*/ (18,'sangrado nasal', 'Hipertension arterial', 'Cardiologia', 9, 12),
/*10*/ (19,'dolor fuerte de cabeza', 'Hipertension arterial', 'Cardiologia', 9, 13),
/*11*/ (10,'latidos cardiacos acelerados', 'taticardia', 'Cardiologia', 6, 14),
/*12*/ (11,'sangrado nasal y dolor fuerte de cabeza', 'Hipertension arterial', 'Cardiologia', 9, 15),
/*13*/ (12,'fatiga', 'transtorno del ritmo cardiaco', 'Cardiologia', 6, 16),
/*14*/ (13,'sangrado nasal', 'Hipertension arterial', 'Cardiologia', 6, 17),
/*15*/ (5,'latidos cardiacos lentos', 'bradicardia', 'Cardiologia', 6, 18),
/*16*/ (6,'vahidos o mareos', 'transtorno del ritmo cardiaco', 'Cardiologia', 6, 19),
/*17*/ (7,'dolor fuerte de cabeza', 'Hipertension arterial', 'Cardiologia', 6, 20),
/*18*/ (8,'latidos cardiacos lentos', 'bradicardia', 'Cardiologia', 6, 2),
/*19*/ (9,'sangrado nasal y dolor fuerte de cabeza', 'Hipertension arterial', 'Cardiologia', 6, 3),
/*20*/ (10,'sudoracion y desmayo', 'trastorno del ritmo cardiaco', 'Cardiologia', 6, 1);

insert into historial_clinico (id_paciente_1,motivo_consulta,Enfermedad_diagnostica,
Enfermedad_heredictaria,cirugia,tiempo_de_cirugia,medicamento,Nombre_medicamento,alergia,
Actividad_fisica,alimento_quenocosume,id_citas_medicas_1) values
 /*1*/ (1,'malestar','Insuficiencia cardiaca','ninguna','ninguna','0 tiempo','si','Inotropos','ninguna','ninguna','ninguno',1),
/*2*/ (2,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 2),
/*3*/ (3, 'malestar','Insuficiencia cardiaca','ninguna','cirugia de la nariz','3 años','si','Diureticos','ninguno','ninguna','berenjena',3),
/*4*/ (4,'malestar','Hipertension arterial','Diabetes', 'ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','salsa de tomate', 4),
/*5*/ (5,'malestar','Hipertension arterial','ninguna', 'ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguna', 5),
/*6*/(6,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 6),
/*7*/(7,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 7),
/*8*/ (8,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 8),
/*9*/ (9,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 9),
/*10*/ (10,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 10),
/*11*/ (11,'malestar','Insuficiencia cardiaca','ninguna','ninguna','0 tiempo','si','Inotropos','ninguna','ninguna','ninguno',1),
/*12*/ (12,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 2),
/*13*/ (13, 'malestar','Insuficiencia cardiaca','ninguna','cirugia de la nariz','3 años','si','Diureticos','ninguno','ninguna','berenjena',3),
/*14*/ (14,'malestar','Hipertension arterial','Diabetes', 'ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','salsa de tomate', 4),
/*15*/ (15,'malestar','Hipertension arterial','ninguna', 'ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguna', 5),
/*16*/(16,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 6),
/*17*/(17,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 7),
/*18*/ (18,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 8),
/*19*/ (19,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 9),
/*20*/ (20,'malestar', 'Hipertension arterial','ninguna','ninguna','0 tiempo','si','Digoxina','ninguna','ninguna','ninguno', 10);

select * from paciente_1;
select * from citas_medicas_1;
select * from consulta_medicas_1;
select * from historial_clinico;
select * from medicos_1;
/*Código*/
/*Annethy Javier | 2020-10518*/
/*Creación Base de datos*/
drop database sistema_ventas_Ann;
create database sistema_ventas_Ann;
use sistema_ventas_Ann;

/*crear tablas */
/*Tabla Empleados*/
create table empleados_1(
id_empleados_1 int primary key auto_increment,
nombre varchar (100) not null,
apellido varchar (100) not null,
cedula varchar (100) not null,
email varchar (100) not null,
direccion varchar (100) not null,
fecha_nacimiento date not null,
cargo varchar (100) not null,
salario varchar (100) not null
);
/*Tabla Producto*/
create table productos_1 (
id_producto_1 int primary key auto_increment,
nombre_producto varchar (100) not null,
categoria varchar (100) not null,
num_existencial int not null,
num_factura int not null,
 descripcion_producto varchar (200) not null
);
/*Tabla Proveedores*/
create table proveedor_1 (
id_proveedor_1 int primary key auto_increment,
Empresa_proveedora varchar (100) not null,
contacto_1  varchar (100) not null,
contacto2 varchar (100) not null,
email varchar (100) not null,
Fecha_entrega date not null,
 Descripcion_empresa varchar ( 300) not null,
 tipo_de_empaque varchar (300) not null
);

/*tabla inventario*/
create table Inventario_1 (
id_inventario_1 int primary key auto_increment,
id_producto_1 int not null,
INDEX idp (id_producto_1),
 FOREIGN KEY (id_producto_1)
 REFERENCES productos_1(id_producto_1),
 sctok_inicial int not null,
 Entrada int not null,
 cantidad_vendida int not null,
 fecha_compra date not null,
precio_compra int not null,
precio_venta  int not null,

id_proveedor_1 int not null,
INDEX idpro (id_proveedor_1),
foreign key (id_proveedor_1)
references proveedor_1 (id_proveedor_1)
);
/*tabla Formas de pago*/
create table formas_pago_1 (
id_FP int primary key auto_increment,
nombre varchar (100) not null
);
/*Tabla Clientes*/
create table cliente_1(
id_cliente_1 int primary key auto_increment,
nombre varchar (100) not null,
apellido varchar (100) not null,
cedula varchar (100) not null,
email  varchar (100) not null,
direccion varchar (100) not null,
Fecha_nacimiento date not null,
cantidad_comprada int not null,

id_FP int not null,
INDEX idFP (id_FP),
 FOREIGN KEY (id_FP)
 REFERENCES formas_pago_1(id_FP),
 id_producto_1 int not null,
INDEX idp (id_producto_1),
 FOREIGN KEY (id_producto_1)
 REFERENCES productos_1(id_producto_1),
 
 id_empleados_1 int not null,
INDEX idempl (id_empleados_1),
foreign key (id_empleados_1)
references empleados_1 (id_empleados_1)
);

/*Tabla Facturacion*/
create table Facturacion_1(
id_facturacion_1 int primary key auto_increment,
num_factura int not null,
id_cliente_1 int not null,
INDEX idcli (id_cliente_1),
FOREIGN KEY (id_cliente_1)
REFERENCES cliente_1 (id_cliente_1),
fecha date not null
);
/*Insertar datos*/

/*datos de la tabla productos*/
insert into productos_1 (nombre_producto,categoria,num_existencial,num_factura,descripcion_producto) values 
/*1*/('Teclado','Objectos_informatica','001','0101','Teclado en inglés para PC'),
/*2*/('Mouse','Objectos_informatica','002','0102','Mouse informatico'),
/*3*/('CPU','Objectos_informatica','003','0103','CPU para PC'),
/*4*/('laptop','Objectos_informatica','004','0104','laptop Lenovo'),
/*5*/('Proyectores','Objectos_informatica','005','0105','proyectores'),
/*6*/('Usb','Objectos_informatica','006','0106','memoria USB 8gb'),
/*7*/('Usb','Objectos_informatica','007','0107','memoria USB 16gb'),
/*8*/('Usb','Objectos_informatica','008','0108','Memoria USB 32gb'),
/*9*/('Audidos Inalambricos','Objectos_informatica','009','0109','Audifonos Bluetooh'),
/*10*/('Air Pods Pro','Objectos_informatica','010','0110','Air Pods Pro Bluetooh'),

/*11*/('Florero Dorado','Artesanales','110','1010','Floredo dorado artesanal'),
/*12*/('Floreo Marques','Artesanlaes','120','1020','Floreo Original de Marques'),
/*13*/('Leche de soja','bebida-Lacteos','201','1201','Leche de Soja coreana'),
/*14*/('Caramelos de fresa','comida-dulces','120','1210','Paquete caramelo de fresas'),
/*15*/('Leche Fresa','bebida-lacteos','202','1202','botella leche de fresa'),
/*16*/('Leche chocolate','bebida-lacteos','203','1203','botella leche de chocolate'),
/*17*/('Jugo de naranja','bebidas-jugos','204','1204','botella de jugo dee naranja'),
/*18*/('Cuaderno BTS #1','escolares','205','1205','Cuaderno BTS 200 PAGINAS'),
/*19*/ ('Cuaderno BTS #2','escolares','206','1206','Cuaderno BTS 200 PAGINAS'),
/*20*/ ('Cuaderno BTS #3','escolares','207','1207','Cuaderno BTS 200 PAGINAS'),

/*21*/ ('Cuaderno BTS #4','escolares','208','1208','Cuaderno BTS 200 PAGINAS'),
/*22*/ ('Cuaderno TWICE #1','escolares','209','1209','Cuaderno BTS 200 PAGINAS'),
/*23*/ ('Cuaderno TWICE #1','escolares','210','1210','Cuaderno BTS 200 PAGINAS'),
/*24*/ ('Lapicero azul','escolares','211','1211','Lapicero tinta azul'),
/*25*/ ('Lapicero negro','escolares','212','1212','Lapicero tinta negra'),
/*26*/ ('Lapicero verde','escolares','213','1213','Lapicero tinta verde'),
/*27*/ ('Lapicero rosa','escolares','214','1214','Lapicero tinta rosa'),
/*28*/ ('Caja de lapiceros,','escolares','215','1215','Caja de lapiceros diferentes colores'),
/*29*/ ('Lapicero purpura','escolares','216','1216','Lapicero tinta purpura'),
/*30*/ ('Caja de colores','escolares','217','1217','Caja de colores 30 colores');

/*datos tabla Proveedor*/
insert into proveedor_1 (Empresa_proveedora,contacto_1,contacto2,email,Fecha_entrega,
Descripcion_empresa, tipo_de_empaque)values
/*1*/('Informatic_Mix','809912001','8099123456','InformaticMix@gmail.com','2021-04/10','Empresa fabricadora de productos informaticos','mixto'),
/*2*/('Artessme','8092345678','8090034578','Artessme@gmail.com','2021-04/10','Empresa que fabrica productos artesanales','mixto'),
/*3*/('JuiceTwice','8204598001','8290040067','JuiceTwice@gmail.com','2021-04/12','Fabrica de jugos naturales','botellas-cajas'),
/*4*/('BTS-CARAMELOS','8099912345','8099897890','caramelosBTS@gmail.com','2021-04/12','Fabrica de caramelos','paquetes(bolsas plasticas)'),
/*5*/('MilkLove','8096780909','8090089908','milklove@gtmail.com','2021-04/11','Fabrica de leche','botellas-cajas'),
/*6*/('Apolo','8095678909','8097652345','apolo@gmail.com','2021-04/11','Empresa de cuadernos','paquetes(bolsas plasticas)'),
/*7*/('Escolres rey','8095678900','8091234567','escolares_rey001@gmail.com','2021-04/11','Empresa de utilices escolares,','mixto');

/*datos tabla inventario*/
insert into Inventario_1 (id_producto_1,sctok_inicial,Entrada,cantidad_vendida,fecha_compra, precio_compra,
precio_venta,id_proveedor_1) values
/*ENTRADA SIGINIFICA LA CANTIDAD D PRODUCTOS QUE QUEDAN DISPONILBES*/
/*1*/ (1,'10','50','20','2021-03-25','100','200',1),
/*2*/ (2,'10','70','10','2021-03-25','70','300',1),
/*3*/ (3,'10','100','5','2021-03-26','2000','500',1),
/*4*/ (4,'10','30','10','2021-03-24','10000','35000',1),
/*5*/ (5,'10','40','20','2021-04-14','15000','45000',1),
/*6*/ (6,'10','300','250','2021-03-24','150','300',1),
/*7*/ (7,'10','300','200','2021-03-24','200','550',1),
/*8*/ (8,'10','100','45','2021-03-24','450','750',1),
/*9*/ (9,'10','200','50','2021-03-24','500','850',1),
/*10*/ (10,'10','100','60','2021-03-24','500','1500',1),

/*11*/ (11,'10','45','20','2021-03-23','450','700',2),
/*12*/ (12,'10','30','20','2021-03-20','300','580',2),
/*13*/ (13,'10','50','40','2021-04-20','50','120',5),
/*14*/ (14,'10','70','40','2021-04-20','40','90',4),
/*15*/ (15,'10','60','50','2021-04-21','100','120',5),
/*16*/ (16,'10','100','100','2021-03-24','120','145',5),
/*17*/ (17,'10','50','50','2021-04-20','30','60',3),
/*18*/ (18,'10','40','40','2021-03-21','50','75',6),
/*19*/ (19,'10','40','40','2021-03-25','50','75',6),
/*20*/ (20,'10','40','40','2021-03-25','50','75',6),

/*21*/ (21,'10','100','30','2021-04-14','50','75',7),
/*22*/ (22,'10','100','30','2021-04-14','5','10',7),
/*23*/ (23,'10','100','30','2021-04-14','5','10',7),
/*24*/ (24,'10','100','30','2021-04-14','5','10',7),
/*25*/ (25,'10','100','20','2021-04-14','5','10',7),
/*26*/ (26,'10','100','25','2021-04-14','5','10',7),
/*27*/ (27,'10','100','30','2021-04-14','5','10',7),
/*28*/ (28,'10','100','10','2021-04-14','100','150',7),
/*29*/ (29,'10','100','20','2021-04-14','5','10',7),
/*30*/ (30,'10','100','90','2021-04-14','150','205',7);

/*datos tabla Formas de pago*/
insert into formas_pago_1 (nombre) values 
/*1*/('Efectivo'),
/*2*/('Cheque'),
/*3*/('Tarjecta Credito'),
/*4*/('Tarjecta Debito'),
/*5*/('Trasferencia Electronica'),
/*6*/('PayPal');

/*Datos Tabla Empleados*/
INSERT INTO empleados_1(nombre,apellido,cedula,email,direccion,fecha_nacimiento,cargo,salario)values
/*1*/('Nahuel', 'Montero','1 011-012-013','hanuel0056@gmail.com','AV.Duarte','2001-12-22','Gerente','RD$50,000'),
/*2*/('NamJoon', 'Kim','2 012-013-014','kimnam093@gmail.com','AV.Mella','2002-12-12','Gerenete contador','RD40,000'),
/*3*/('Perth', 'Tanapon','3 013-014-015','001perthta@gmail.com','AV.Mella','2004-2-12','Axuliar contabilidad','RD$30,000'),
/*4*/('Saint', 'Supassit','4 014-015-016','ssaintss0@gmail.com','AV.Duarte','2000-2-22','Axuliar contabilidad','RD$30,000'),
/*5*/('Plan', 'Ravhict','6 016-017-018','plan56r@gmail.com','AV.Duarte','2000-2-22','Conserje','RD20,000'),
/*6*/('Minho', 'Lee','7 017-018-019','min670@gmail.com','AV.España','1995-9-9','Cajero','RD$15,000'),
/*7*/('Maisa', 'Silva','8 018-019-020','silvama001@gmail.com','AV.España','1995-6-6','Cajero','RD15,000'),
/*8*/('Santiago', 'Daneluz','9 019-020-021','sanda623@gmail.com','AV.Mella','1995-7-12','Carjero','RD15,000'),
/*9*/('Lucas', 'Santos','1 021-022-023','lusanto09@gmail.com','AV.Duarte','1995-11-21','Cajero','RD15,000'),
/*10*/('Annethy', 'Javier','2 022-0230-024','00nnethy34@gmail.com','AV.Duarte','2001-12-13','Cajero','RD20,000'); 

/*Datos tabla Clientes*/
insert into cliente_1(nombre,apellido,cedula,email,direccion,Fecha_nacimiento,cantidad_comprada,id_FP,
id_producto_1,id_empleados_1 )values
/*1*/('Jose','Alcantara','1 0001-002-003','josealca@gmail.com','AV.Mella','2001-7-20','5',6,1,6),
/*2*/('Pablo', 'Lara','2 002-002-003','pl00@gmail.com','AV.Duarte','2000-9-01','10',6,21,6),
/*3*/('Jimin', 'Park','3 003-004-005','pakj1@gmail.com','AV.Mella','2001-2-02','10',6,2,6),
/*4*/('Taehyung', 'Kim','4 004-005-006','kimtae3@gmail.com','AV.Mella','1999-3-19','20',6,2,7),
/*5*/('JungKook', 'Jeong','5 005-006-007','jeongkook56@gmail.com','AV.Duarte','2000-2-22','25',1,3,7),
/*6*/('Hoseok', 'Jung','6 006-007-008','jung909@gmail.com','AV.España','2000-2-22','30',1,3,7),
/*7*/('Yoongi', 'Min','7 007-008-009','yoongi45@gmail.com','AV.España','2004-2-12','24',3,4,8),
/*8*/('SeokJin', 'Kim','8 008-009-010','kimseok09023@gmail.com','AV.Duarte','1995-2-12','3',1,5,8),
/*9*/('Pedro', 'Tavarez','9 009-010-011','pedrotava234@gmail.com','AV.España','2000-2-22','4',1,6,8),
/*10*/('Laura', 'Robles','1 010-011-012','lauraroo56@gmail.com','AV.Mella','2004-2-12','6',1,7,6),

/*11*/('Nahuel', 'Montero','1 011-012-013','hanuel0056@gmail.com','AV.Duarte','2001-12-22','9',6,8,6),
/*12*/('NamJoon', 'Kim','2 012-013-014','kimnam093@gmail.com','AV.Mella','2002-12-12','8',1,9,6),
/*13*/('Perth', 'Tanapon','3 013-014-015','001perthta@gmail.com','AV.Mella','2004-2-12','1',6,8,6),
/*14*/('Saint', 'Supassit','4 014-015-016','ssaintss0@gmail.com','AV.Duarte','2000-2-22','2',1,20,9),
/*15*/('Plan', 'Ravhict','6 016-017-018','plan56r@gmail.com','AV.Duarte','2000-2-22','2',1,13,9),
/*16*/('Minho', 'Lee','7 017-018-019','min670@gmail.com','AV.España','1995-9-9','2',1,15,9),
/*17*/('Maisa', 'Silva','8 018-019-020','silvama001@gmail.com','AV.España','1995-6-6','5',1,17,10),
/*18*/('Santiago', 'Daneluz','9 019-020-021','sanda623@gmail.com','AV.Mella','1995-7-12','4',1,18,10),
/*19*/('Lucas', 'Santos','1 021-022-023','lusanto09@gmail.com','AV.Duarte','1995-3-11','2',3,19,10),
/*20*/('Annethy', 'Javier','2 022-0230-024','00nnethy34@gmail.com','AV.Duarte','2001-3-20','2',2,16,10); 
insert into Facturacion_1(num_factura,id_cliente_1,fecha) values
/*1*/('0101',1,'2021-01-21'),
/*2*/('0102',2,'2021-01-21'),
/*3*/('0103',3,'2021-01-21'),
/*4*/('0104',4,'2021-01-22'),
/*5*/('0105',5,'2021-01-22'),
/*6*/('0106',6,'2021-01-23'),
/*7*/('0107',7,'2021-01-24'),
/*8*/('0108',8,'2021-01-25'),
/*9*/('0109',9,'2021-01-26'),
/*10*/('0110',10,'2021-01-27'),

/*11*/('1010',11,'2020-01-21'),
/*12*/('1020',12,'2020-01-11'),
/*13*/('1201',13,'2020-01-2'),
/*14*/('1210',14,'2020-01-3'),
/*15*/('1202',15,'2020-01-4'),
/*16*/('1203',16,'2020-01-15'),
/*17*/('1204',17,'2020-01-16'),
/*18*/('1205',18,'2020-01-17'),
/*19*/('1206',19,'2020-01-28'),
/*20*/('1207',20,'2020-01-5'); 
/*Consulta que devuelva los 10 artículos más vendidos de los últimos 30 días ordenados de mayor a menor*/
select productos_1.nombre_producto, productos_1.descripcion_producto, inventario_1.cantidad_vendida from inventario_1 inner join  productos_1 on 
inventario_1.id_producto_1 = productos_1.id_producto_1 where fecha_compra between curdate()-interval 30 day and curdate() order by cantidad_vendida desc limit 10 ;
 
/*Consulta que devuelva a los proveedores de 10 artículos más vendidos de los últimos 15 días*/

select proveedor_1.empresa_proveedora as nombre_empresa, proveedor_1.descripcion_empresa, productos_1.nombre_producto,inventario_1.cantidad_vendida
from inventario_1 inner join  proveedor_1 on 
inventario_1.id_proveedor_1 = proveedor_1.id_proveedor_1 inner join  productos_1 on 
inventario_1.id_producto_1 = productos_1.id_producto_1 where fecha_compra between curdate()-interval 15 day and curdate() order by cantidad_vendida desc limit 10 ;

/*Consulta que devuelva el monto total del articulo más vendido en los últimos 15 días*/
select productos_1.nombre_producto, inventario_1.cantidad_vendida,inventario_1.precio_venta, (cantidad_vendida*precio_venta) as monto_total from inventario_1 inner join  productos_1 on inventario_1.id_producto_1 = productos_1.id_producto_1 where fecha_compra between curdate()-interval 15 day and curdate() order by cantidad_vendida desc limit 1;
 
/*Consulta que devuelva los 10 artículos menos vendidos, con el monto vendido en los últimos 15 días*/
select productos_1.nombre_producto, productos_1.descripcion_producto,inventario_1.cantidad_vendida, inventario_1.precio_venta,(precio_venta*cantidad_vendida) as monto_total from inventario_1 inner join  productos_1 on 
inventario_1.id_producto_1 = productos_1.id_producto_1 where fecha_compra between curdate()-interval 15 day and curdate() order by cantidad_vendida  and monto_total asc limit 10 ;

/*Consulta que devuelva los 10 artículos de mayor ganancia, ordenando de mayor a menor*/

select distinct productos_1.nombre_producto, productos_1.descripcion_producto, inventario_1.cantidad_vendida, (precio_venta-precio_compra)
 as ganacia_total from inventario_1 inner join  productos_1 on 
inventario_1.id_producto_1 = productos_1.id_producto_1 where fecha_compra 
between curdate()-interval 15 day and curdate() order by  ganacia_total desc limit 10;


/*fin*/




