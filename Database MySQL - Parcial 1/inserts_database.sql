/*===========================================================*/
/*                          INSERTS                          */
/*===========================================================*/
/* CIUDAD*/
insert into CIUDAD (CIUDAD_NOMBRE) values ('Manta');
insert into CIUDAD (CIUDAD_NOMBRE) values ('Montecristi');
insert into CIUDAD (CIUDAD_NOMBRE) values ('Portoviejo');
insert into CIUDAD (CIUDAD_NOMBRE) values ('Quito');
insert into CIUDAD (CIUDAD_NOMBRE) values ('Guayaquil');

/* TIPO DE EMPLEADO*/
insert into TIPO_EMPLEADO (TIPO_EMPLEADO_NOMBRE) values ('Administrador');
insert into TIPO_EMPLEADO (TIPO_EMPLEADO_NOMBRE) values ('Tecnico de Mantenimiento');
insert into TIPO_EMPLEADO (TIPO_EMPLEADO_NOMBRE) values ('Empleado de Caja');
insert into TIPO_EMPLEADO (TIPO_EMPLEADO_NOMBRE) values ('Talento Humano');  

/* GENERO*/
insert into GENERO (GENERO_NOMBRE) values ('Masculino');
insert into GENERO (GENERO_NOMBRE) values ('Femenino');
insert into GENERO (GENERO_NOMBRE) values ('Heterosexual');

/* ESTADO DE LAVADORA*/
insert into ESTADO_LAVADORA (ESTADO_LAV_NOMBRE) values ('Buen Estado');
insert into ESTADO_LAVADORA (ESTADO_LAV_NOMBRE) values ('Mal Estado');
insert into ESTADO_LAVADORA (ESTADO_LAV_NOMBRE) values ('De Baja');

/* MARCA DE LAVADORA*/
insert into MARCA (MARCA_NOMBRE) values ('Electrolux');
insert into MARCA (MARCA_NOMBRE) values ('Indurama');
insert into MARCA (MARCA_NOMBRE) values ('LG');
insert into MARCA (MARCA_NOMBRE) values ('Mabe');
insert into MARCA (MARCA_NOMBRE) values ('Samsung');
insert into MARCA (MARCA_NOMBRE) values ('Whirlpool');

/* MODELO DE LAVADORA*/
insert into MODELO (MODELO_NOMBRE) values ('EWIF18E6CGSG');                            /*ELECTROLUX*/
insert into MODELO (MODELO_NOMBRE) values ('EWI12D3CGMG ');                            /*ELECTROLUX*/
insert into MODELO (MODELO_NOMBRE) values ('Automatica LRI-19DGR');                    /*INDURAMA*/
insert into MODELO (MODELO_NOMBRE) values ('Semi Automatica Doble Tina LRI-13BLSA');   /*INDURAMA*/
insert into MODELO (MODELO_NOMBRE) values ('WT18WSBP Blanco');                         /*LG*/
insert into MODELO (MODELO_NOMBRE) values ('WT18WSBP Cromada');                        /*LG*/
insert into MODELO (MODELO_NOMBRE) values ('LMDE3124PBAB0  Blanco');                   /*MABE*/
insert into MODELO (MODELO_NOMBRE) values ('MCL2040PSBB0 Blanco');                     /*MABE*/
insert into MODELO (MODELO_NOMBRE) values ('WA19T6260BY Gris');                        /*SAMSUNG*/
insert into MODELO (MODELO_NOMBRE) values ('WT14J4200MB/AP Silver');                   /*SAMSUNG*/
insert into MODELO (MODELO_NOMBRE) values ('7MWTW1950EW');                             /*WHIRLPOOL*/
insert into MODELO (MODELO_NOMBRE) values ('WWI18BBHLA Blanco');                       /*WHIRLPOOL*/


/* CLIENTE*/
insert into CLIENTES (CIUDAD_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDOS, CLIENTE_CEDULA, CLIENTE_TELEFONO, CLIENTE_CORREO, CLIENTE_CALLE, CLIENTE_CODE_POSTAL, CLIENTE_DESCRIPCION) 
      values (1, 'Robinette', 'Bonass', '2176442474', 9537749665, 'rbonass0@fema.gov', '463 Dwight Hill', 27449, null);
insert into CLIENTES (CIUDAD_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDOS, CLIENTE_CEDULA, CLIENTE_TELEFONO, CLIENTE_CORREO, CLIENTE_CALLE, CLIENTE_CODE_POSTAL, CLIENTE_DESCRIPCION) 
      values (1, 'Granville', 'Baford', '4412144542', 9198735330, 'gbaford1@wiley.com', '83 Cherokee Street', 44271, '0x50a48c518e9fcbaa1fc27a0e763063a96766c8a1');
insert into CLIENTES (CIUDAD_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDOS, CLIENTE_CEDULA, CLIENTE_TELEFONO, CLIENTE_CORREO, CLIENTE_CALLE, CLIENTE_CODE_POSTAL, CLIENTE_DESCRIPCION) 
      values (5, 'Ekaterina', 'Texton', '7676338980', 1723177431, 'etexton2@youtube.com', '70760 Arkansas Pass', 48652, null);
insert into CLIENTES (CIUDAD_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDOS, CLIENTE_CEDULA, CLIENTE_TELEFONO, CLIENTE_CORREO, CLIENTE_CALLE, CLIENTE_CODE_POSTAL, CLIENTE_DESCRIPCION) 
      values (2, 'Guy', 'Hayto', '3339636524', 2262638667, 'ghayto3@technorati.com', '4489 Union Alley', 45364, '0x6dab4ac2c3c25ece0cf1947d44084f95963fbcba');
insert into CLIENTES (CIUDAD_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDOS, CLIENTE_CEDULA, CLIENTE_TELEFONO, CLIENTE_CORREO, CLIENTE_CALLE, CLIENTE_CODE_POSTAL, CLIENTE_DESCRIPCION) 
      values (1, 'Esdras', 'Water', '9641520148', 7128338004, 'ewater4@samsung.com', '559 Maywood Park', 21069, '0x9da7b82854ba5104ae3fcdb7fefe73695b1f78b5');
insert into CLIENTES (CIUDAD_ID, CLIENTE_NOMBRE, CLIENTE_APELLIDOS, CLIENTE_CEDULA, CLIENTE_TELEFONO, CLIENTE_CORREO, CLIENTE_CALLE, CLIENTE_CODE_POSTAL, CLIENTE_DESCRIPCION) 
      values (2, 'Yardley', 'Jurick', '8364180282', 6091974955, 'yjurick7@ucla.edu', '69 Claremont Plaza', 36345, null);


/*EMPLEADOS*/
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (1, 1, 'Erika Edna', 'Mandojana Miruena', '1133192718', 7994895918, '1992/11/27', 'erika69@lavatec.com', 'callarieci');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (2, 3, 'Consuelo Rigel', 'Obiaga Corro', '6913781164', 6424324958, '1996/08/18', 'consuelo30@lavatec.com', 'ashmatatin');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (4, 2, 'Emerson Nicolette', 'Merchan Terrilla', '1391862090', 7723257556, '2000/05/19', 'emerson45@lavatec.com', 'orranteten');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (3, 3, 'Jonely Deidi', 'Lomas Durana', '8232996080', 6752339725, '1997/02/07', 'jonely94@lavatec.com', 'litinessme');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (2, 1, 'Farid Vladimir', 'Bolilla Ferreiras', '5176056941', 7348725499, '1991/03/18', 'farid51@lavatec.com', 'renewiftyp');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (2, 1, 'Maite Marush', 'Cines Frenes', '1121950418', 7871453233, '1995/10/06', 'maite39@lavatec.com', 'plecksmene');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (3, 2, 'Casilda Iliana', 'Madariaga Labaja', '6687259903', 8582807526, '1996/07/02', 'casilda76@lavatec.com', 'entiondrel');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (4, 2, 'Nubia Silvana', 'Narganes Guere??o', '0747826153', 6200614876, '2002/04/05', 'nubia29@lavatec.com', 'eakelootel');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (2, 2, 'Alfredo Leonidas', 'Arecha Nougaro', '3247730508', 7946172000, '1995/09/17', 'alfredo84@lavatec.com', 'pialpheryo');
insert into EMPLEADO (TIPO_EMPLEADO_ID, GENERO_ID, EMPLEADO_NOMBRE, EMPLEADO_APELLIDOS, EMPLEADO_CEDULA, EMPLEADO_TELEFONO, EMPLEADO_FECHA_NACIMIENTO, EMPLEADO_CORREO, EMPLEADO_PASSWORD) 
      values (2, 1, 'Nohely Vilma', 'Luna Mezcano', '3083878923', 617467603, '1996/04/13', 'nohely33@lavatec.com', 'looketylar');

/* PROVEEDORES*/
insert into PROVEEDOR (CIUDAD_ID, PROVEEDOR_NOMBRE, PROVEEDOR_TELEFONO, PROVEEDOR_CORREO, PROVEEDOR_DIR_DESCRIP, PROVEEDOR_CODE_POSTAL)
      values( 5,'Humesa', 812469609, 'raspling1@senate.gov', 'V??a Lorem, 24A', 14331);
insert into PROVEEDOR (CIUDAD_ID, PROVEEDOR_NOMBRE, PROVEEDOR_TELEFONO, PROVEEDOR_CORREO, PROVEEDOR_DIR_DESCRIP, PROVEEDOR_CODE_POSTAL)
      values( 1,'Flacso S.A', 6989113076, 'bcaves2@blogspot.com', 'Glorieta Lorem, 63 17??E', 49720);
insert into PROVEEDOR (CIUDAD_ID, PROVEEDOR_NOMBRE, PROVEEDOR_TELEFONO, PROVEEDOR_CORREO, PROVEEDOR_DIR_DESCRIP, PROVEEDOR_CODE_POSTAL)
      values( 5,'Distril', 8652898232, 'nshipston3@icq.com', 'Urbanizaci??n Lorem, 16 12??G', 19831);
insert into PROVEEDOR (CIUDAD_ID, PROVEEDOR_NOMBRE, PROVEEDOR_TELEFONO, PROVEEDOR_CORREO, PROVEEDOR_DIR_DESCRIP, PROVEEDOR_CODE_POSTAL)
      values( 2,'Divoso', 7664594942, 'nalleyne4@blogspot.com', 'V??a Lorem ipsum, 200B', 28015);
insert into PROVEEDOR (CIUDAD_ID, PROVEEDOR_NOMBRE, PROVEEDOR_TELEFONO, PROVEEDOR_CORREO, PROVEEDOR_DIR_DESCRIP, PROVEEDOR_CODE_POSTAL)
      values( 3,'Korazo', 6801548040, 'lhuegett5@cbc.ca', 'C. Comercial Lorem, 277 12??E', 46024);

/* PROFORNA */
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(3, '2021/02/04', '2021/02/19');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(4, '2021/05/13', '2021/05/28');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(5, '2021/02/05', '2021/02/20');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(4, '2021/02/07', '2021/02/22');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(3, '2021/06/05', '2021/06/20');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(5, '2021/04/02', '2021/04/17');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(3, '2021/02/12', '2021/02/27');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(1, '2021/04/05', '2021/04/15');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(2, '2021/05/14', '2021/05/29');
insert into PROFORMA(PROVEEDOR_ID, PROFORMA_FECHA, PROFORMA_FECHA_VENC)
      values(3, '2021/02/07', '2021/02/22');

/*LAVADORA*/
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 4, 1, 1,'Electrolux - EWIF18E6CGSG', 18 , 12.00, 'N9TT-9G0A-B7FQ-RANC', 2, '2021-01-24');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 2, 1, 2,'Electrolux - EWI12D3CGMG', 12 , 8.00, 'QK6A-JI6S-7ETR-0A6C', 2, '2020-12-19');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 4, 2, 3,'Indurama - Automatica LRI-19DGR', 16 , 10.00,'SXFP-CHYK-ONI6-S89U', 1, '2020-11-30');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 1, 2, 4,'Indurama - Semi Automatica Doble Tina LRI-13BLSA', 11 , 7.00,'XNSS-HSJW-3NGU-8XTJ', 2, '2021-02-06');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 5, 3, 5,'LG - WT18WSBP Blanco', 18, 12.00, 'NHLE-L6MI-4GE4-ETEV', 3, '2020-12-06');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 4, 3, 6,'LG - WT18WSBP Cromada', 13 , 8.50, '6ETI-UIL2-9WAX-XHYO', 3, '2020-10-09');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 5, 4, 7,'Mabe - LMDE3124PBAB0  Blanco', 20 , 15.00, '2E62-E3SR-33FI-XHV3', 1, '2021-01-23');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 1, 4, 8,'Mabe - MCL2040PSBB0 Blanco', 19, 14.00, '7EIQ-72IU-2YNV-3L4Y', 3, '2021-01-20');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 3, 5, 9,'Samsung - WA19T6260BY Gris', 14, 9.00, 'VD23-Y64N-B7GC-FYDL', 1, '2021-03-16');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 1, 5, 10,'Samsung - WT14J4200MB/AP Silver', 19 , 20.00, 'XPTU-PE5R-BUVV-E3SB', 2, '2020-11-11');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 2, 6, 11,'Whirlpool - 7MWTW1950EW', 18 , 12.00,'CLBN-BEVN-YY34-AKX9', 1, '2021-01-15');
insert into LAVADORA (PROVEEDOR_ID, MARCA_ID, MODELO_ID, LAVADORA_DESCRIP, LAVADORA_PESO_KG, LAVADORA_PRECIO_DIA, LAVADORA_NUM_SERIE, ESTADO_LAV_ID, LAVADORA_DATE_ADQ)
      values( 3, 6, 12,'Whirlpool - WWI18BBHLA Blanco', 19 , 19.00,'6S9E-JN93-7U4X-Q8EN', 1, '2021-03-26');


/* FACTURA*/
insert into FACTURA (CLIENTE_ID, FACTURA_FECHA)
      values(3, '2021-04-02 08:07:10');
insert into FACTURA (CLIENTE_ID, FACTURA_FECHA)
      values(4, '2021-05-01 10:08:01');
insert into FACTURA (CLIENTE_ID, FACTURA_FECHA)
      values(6, '2021-04-06 15:09:34');
insert into FACTURA (CLIENTE_ID, FACTURA_FECHA)
      values(2, '2021-03-13 15:12:15');
insert into FACTURA (CLIENTE_ID, FACTURA_FECHA)
      values(4, '2020-12-13 10:12:09');

/* FACTURA DETALLE*/
insert into FACTURA_DETALLE(FACTURA_ID, LAVADORA_ID, FAC_DET_DIAS_ALQUILER, FAC_DET_PRECIO_FINAL)
      values(1, 10, 1, 12.00);
insert into FACTURA_DETALLE(FACTURA_ID, LAVADORA_ID, FAC_DET_DIAS_ALQUILER, FAC_DET_PRECIO_FINAL)
      values(2, 9, 2, 40.00);
insert into FACTURA_DETALLE(FACTURA_ID, LAVADORA_ID, FAC_DET_DIAS_ALQUILER, FAC_DET_PRECIO_FINAL)
      values(3, 7, 4, 28.00);
insert into FACTURA_DETALLE(FACTURA_ID, LAVADORA_ID, FAC_DET_DIAS_ALQUILER, FAC_DET_PRECIO_FINAL)
      values(4, 3, 8, 80.00);
insert into FACTURA_DETALLE(FACTURA_ID, LAVADORA_ID, FAC_DET_DIAS_ALQUILER, FAC_DET_PRECIO_FINAL)
      values(5, 10, 3, 60.00);


/*MANTENIMIENTO*/
insert into MANTENIMIENTO(EMPLEADO_ID, LAVADORA_ID, MANTENIMIENTO_FECHA, MANTENIMIENTO_COSTO)
      values(9, 9, '2021-05-07', 39.00);
insert into MANTENIMIENTO(EMPLEADO_ID, LAVADORA_ID, MANTENIMIENTO_FECHA, MANTENIMIENTO_COSTO)
      values(2, 7, '2021-04-16', 50.00);
insert into MANTENIMIENTO(EMPLEADO_ID, LAVADORA_ID, MANTENIMIENTO_FECHA, MANTENIMIENTO_COSTO)
      values(9, 10, '2021-04-09', 33.00);
insert into MANTENIMIENTO(EMPLEADO_ID, LAVADORA_ID, MANTENIMIENTO_FECHA, MANTENIMIENTO_COSTO)
      values(10, 6, '2021-03-30', 48.00);
insert into MANTENIMIENTO(EMPLEADO_ID, LAVADORA_ID, MANTENIMIENTO_FECHA, MANTENIMIENTO_COSTO)
      values(5, 3, '2021-03-17', 12.00);
insert into MANTENIMIENTO(EMPLEADO_ID, LAVADORA_ID, MANTENIMIENTO_FECHA, MANTENIMIENTO_COSTO)
      values(2, 4, '2021-02-25', 45.00);