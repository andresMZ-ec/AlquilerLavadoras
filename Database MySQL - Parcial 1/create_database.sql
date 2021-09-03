/*==============================================================*/
/* GBD name:       MySQL 5.0                                    */
/* DB name:        alquiler-lavadoras                           */
/* Autor:          Moncayo Zambrano Andrés Alejandro            */
/*==============================================================*/

drop table if exists CIUDAD;

drop table if exists CLIENTE;

drop table if exists EMPLEADO;

drop table if exists ESTADO_LAVADORA;

drop table if exists FACTURA;

drop table if exists FACTURA_DETALLE;

drop table if exists GENERO;

drop table if exists LAVADORA;

drop table if exists MANTENIMIENTO;

drop table if exists MARCA;

drop table if exists MODELO;

drop table if exists PROFORMA;

drop table if exists PROVEEDOR;

drop table if exists TIPO_EMPLEADO;

/*==============================================================*/
/* Table: CIUDAD                                                */
/*==============================================================*/
create table CIUDAD
(
   CIUDAD_ID           int not null auto_increment,
   CIUDAD_NOMBRE        char(20),
   primary key (CIUDAD_ID)
);

/*==============================================================*/
/* Table: CLIENTE                                              */
/*==============================================================*/
create table CLIENTE
(
   CLIENTE_ID           int not null auto_increment,
   CIUDAD_ID            int not null,
   CLIENTE_NOMBRE       char(30),
   CLIENTE_APELLIDOS    char(30),
   CLIENTE_CEDULA       char(15),
   CLIENTE_TELEFONO     numeric(10,0),
   CLIENTE_CORREO       char(20),
   CLIENTE_CALLE        char(25),
   CLIENTE_CODE_POSTAL  numeric(6,0),
   CLIENTE_DESCRIPCION  char(25),
   CLIENTE_PASSWORD     text,
   primary key (CLIENTE_ID)
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO
(
   EMPLEADO_ID          int not null auto_increment,
   TIPO_EMPLEADO_ID     int not null,
   GENERO_ID            int not null,
   EMPLEADO_NOMBRE      text,
   EMPLEADO_APELLIDOS   text,
   EMPLEADO_CEDULA      char(15),
   EMPLEADO_TELEFONO    numeric(10,0),
   EMPLEADO_FECHA_NACIMIENTO date,
   EMPLEADO_CORREO      text,
   EMPLEADO_PASSWORD    text,
   primary key (EMPLEADO_ID)
);

/*==============================================================*/
/* Table: ESTADO_LAVADORA                                       */
/*==============================================================*/
create table ESTADO_LAVADORA
(
   ESTADO_LAV_ID        int not null auto_increment,
   ESTADO_LAV_NOMBRE    text,
   primary key (ESTADO_LAV_ID)
);

/*==============================================================*/
/* Table: FACTURA                                               */
/*==============================================================*/
create table FACTURA
(
   FACTURA_ID           int not null auto_increment,
   CLIENTE_ID           int,
   FACTURA_FECHA        datetime,
   primary key (FACTURA_ID)
);

/*==============================================================*/
/* Table: FACTURA_DETALLE                                       */
/*==============================================================*/
create table FACTURA_DETALLE
(
   FAC_DET_ID               int not null auto_increment,
   FACTURA_ID               int,
   LAVADORA_ID              int,
   FAC_DET_DIAS_ALQUILER    numeric,
   FAC_DET_PRECIO_FINAL     float,
   primary key (FAC_DET_ID)
);

/*==============================================================*/
/* Table: GENERO                                                */
/*==============================================================*/
create table GENERO
(
   GENERO_ID            int not null auto_increment,
   GENERO_NOMBRE        char(20),
   primary key (GENERO_ID)
);

/*==============================================================*/
/* Table: LAVADORA                                              */
/*==============================================================*/
create table LAVADORA
(
   LAVADORA_ID          int not null auto_increment,
   PROVEEDOR_ID         int not null,
   MARCA_ID             int not null,
   MODELO_ID            int not null,
   ESTADO_LAV_ID        int not null,
   LAVADORA_DESCRIP     text,
   LAVADORA_PESO_KG     int,
   LAVADORA_PRECIO_DIA  float,
   LAVADORA_NUM_SERIE   char(17),
   LAVADORA_DATE_ADQ    date,
   primary key (LAVADORA_ID)
);

/*==============================================================*/
/* Table: MANTENIMIENTO                                         */
/*==============================================================*/
create table MANTENIMIENTO
(
   MANTENIMIENTO_ID     int not null auto_increment,
   EMPLEADO_ID          int not null,
   LAVADORA_ID          int not null,
   MANTENIMIENTO_FECHA  datetime,
   MANTENIMIENTO_COSTO  float,
   primary key (MANTENIMIENTO_ID)
);

/*==============================================================*/
/* Table: MARCA                                                 */
/*==============================================================*/
create table MARCA
(
   MARCA_ID             int not null auto_increment,
   MARCA_NOMBRE         text,
   primary key (MARCA_ID)
);

/*==============================================================*/
/* Table: MODELO                                                */
/*==============================================================*/
create table MODELO
(
   MODELO_ID            int not null auto_increment,
   MODELO_NOMBRE        char(20),
   primary key (MODELO_ID)
);

/*==============================================================*/
/* Table: PROFORMA                                              */
/*==============================================================*/
create table PROFORMA
(
   PROFORMA_ID          int not null auto_increment,
   PROVEEDOR_ID         int not null,
   PROFORMA_FECHA       date,
   PROFORMA_FECHA_VENC  date,
   primary key (PROFORMA_ID)
);

/*==============================================================*/
/* Table: PROVEEDOR                                             */
/*==============================================================*/
create table PROVEEDOR
(
   PROVEEDOR_ID         int not null auto_increment,
   CIUDAD_ID           int not null,
   PROVEEDOR_NOMBRE     char(20),
   PROVEEDOR_TELEFONO   numeric(10,0),
   PROVEEDOR_CORREO     char(20),
   PROVEEDOR_DIR_DESCRIP char(25),
   PROVEEDOR_CODE_POSTAL char(6),
   primary key (PROVEEDOR_ID)
);

/*==============================================================*/
/* Table: TIPO_EMPLEADO                                         */
/*==============================================================*/
create table TIPO_EMPLEADO
(
   TIPO_EMPLEADO_ID     int not null auto_increment,
   TIPO_EMPLEADO_NOMBRE text,
   primary key (TIPO_EMPLEADO_ID)
);

alter table CLIENTE add constraint FK_RELATIONSHIP_13 foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID) on delete restrict on update restrict;

alter table EMPLEADO add constraint FK_RELATIONSHIP_15 foreign key (TIPO_EMPLEADO_ID)
      references TIPO_EMPLEADO (TIPO_EMPLEADO_ID) on delete restrict on update restrict;

alter table EMPLEADO add constraint FK_RELATIONSHIP_16 foreign key (GENERO_ID)
      references GENERO (GENERO_ID) on delete restrict on update restrict;

alter table FACTURA add constraint FK_RELATIONSHIP_11 foreign key (CLIENTE_ID)
      references CLIENTE (CLIENTE_ID) on delete restrict on update restrict;

alter table FACTURA_DETALLE add constraint FK_RELATIONSHIP_20 foreign key (FACTURA_ID)
      references FACTURA (FACTURA_ID) on delete restrict on update restrict;

alter table FACTURA_DETALLE add constraint FK_RELATIONSHIP_21 foreign key (LAVADORA_ID)
      references LAVADORA (LAVADORA_ID) on delete restrict on update restrict;

alter table LAVADORA add constraint FK_RELATIONSHIP_14 foreign key (PROVEEDOR_ID)
      references PROVEEDOR (PROVEEDOR_ID) on delete restrict on update restrict;

alter table LAVADORA add constraint FK_RELATIONSHIP_17 foreign key (MODELO_ID)
      references MODELO (MODELO_ID) on delete restrict on update restrict;

alter table LAVADORA add constraint FK_RELATIONSHIP_18 foreign key (MARCA_ID)
      references MARCA (MARCA_ID) on delete restrict on update restrict;

alter table LAVADORA add constraint FK_RELATIONSHIP_19 foreign key (ESTADO_LAV_ID)
      references ESTADO_LAVADORA (ESTADO_LAV_ID) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_RELATIONSHIP_5 foreign key (LAVADORA_ID)
      references LAVADORA (LAVADORA_ID) on delete restrict on update restrict;

alter table MANTENIMIENTO add constraint FK_RELATIONSHIP_6 foreign key (EMPLEADO_ID)
      references EMPLEADO (EMPLEADO_ID) on delete restrict on update restrict;

alter table PROFORMA add constraint FK_RELATIONSHIP_10 foreign key (PROVEEDOR_ID)
      references PROVEEDOR (PROVEEDOR_ID) on delete restrict on update restrict;

alter table PROVEEDOR add constraint FK_RELATIONSHIP_7 foreign key (CIUDAD_ID)
      references CIUDAD (CIUDAD_ID) on delete restrict on update restrict;