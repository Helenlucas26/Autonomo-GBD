/*==============================================================*/
/* Table: BITACORA_INTALACION                                   */
/*==============================================================*/
create table BITACORA_INTALACION (
   ID_BITACORA          INT4                 not null,
   ID_SERV              INT4                 not null,
   ID_UBI               INT4                 not null,
   FECHA_BITACORA       DATE                 null,
   DINERO_CONSUMIDO     DECIMAL              null,
   constraint PK_BITACORA_INTALACION primary key (ID_BITACORA)
);

/*==============================================================*/
/* Index: BITACORA_INTALACION_PK                                */
/*==============================================================*/
create unique index BITACORA_INTALACION_PK on BITACORA_INTALACION (
ID_BITACORA
);

/*==============================================================*/
/* Index: RELATIONSHIP_18_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_18_FK on BITACORA_INTALACION (
ID_SERV
);

/*==============================================================*/
/* Index: RELATIONSHIP_28_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_28_FK on BITACORA_INTALACION (
ID_UBI
);

/*==============================================================*/
/* Table: CLIENTE                                               */
/*==============================================================*/
create table CLIENTE (
   ID_CLIENTE           INT4                 not null,
   ID_UBI               INT4                 not null,
   CEDULA_CLIENTE       VARCHAR(10)          null,
   NOMBRE_CLIENTE_      VARCHAR(50)          null,
   APELLIDO_CLIENTE     VARCHAR(50)          null,
   EMAIL_CLIENTE        VARCHAR(50)          null,
   FECHA_NACI_CLIENTE   DATE                 null,
   DIREC_CLIENTE        VARCHAR(50)          null,
   constraint PK_CLIENTE primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Index: CLIENTE_PK                                            */
/*==============================================================*/
create unique index CLIENTE_PK on CLIENTE (
ID_CLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_23_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_23_FK on CLIENTE (
ID_UBI
);

/*==============================================================*/
/* Table: CONTRATO                                              */
/*==============================================================*/
create table CONTRATO (
   ID_CONTR             INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   ID_TIPO_FAC          INT4                 not null,
   ID_EMP               INT4                 not null,
   FCH_CONTR            DATE                 null,
   constraint PK_CONTRATO primary key (ID_CONTR)
);

/*==============================================================*/
/* Index: CONTRATO_PK                                           */
/*==============================================================*/
create unique index CONTRATO_PK on CONTRATO (
ID_CONTR
);

/*==============================================================*/
/* Index: RELATIONSHIP_20_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_20_FK on CONTRATO (
ID_TIPO_FAC
);

/*==============================================================*/
/* Index: RELATIONSHIP_25_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_25_FK on CONTRATO (
ID_CLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_26_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_26_FK on CONTRATO (
ID_EMP
);

/*==============================================================*/
/* Table: CONVENIO                                              */
/*==============================================================*/
create table CONVENIO (
   ID_CONV              INT4                 not null,
   ID_EMP               INT4                 not null,
   ID_CONTR             INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   NOM_EST_CONV         VARCHAR(20)          null,
   FECHA_CONV           DATE                 null,
   constraint PK_CONVENIO primary key (ID_CONV)
);

/*==============================================================*/
/* Index: CONVENIO_PK                                           */
/*==============================================================*/
create unique index CONVENIO_PK on CONVENIO (
ID_CONV
);

/*==============================================================*/
/* Index: RELATIONSHIP_14_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_14_FK on CONVENIO (
ID_CLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_22_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_22_FK on CONVENIO (
ID_EMP
);

/*==============================================================*/
/* Index: RELATIONSHIP_27_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_27_FK on CONVENIO (
ID_CONTR
);

/*==============================================================*/
/* Table: CUIDAD                                                */
/*==============================================================*/
create table CUIDAD (
   ID_CIUDAD            INT4                 not null,
   NOM_CUIDAD           VARCHAR(20)          null,
   constraint PK_CUIDAD primary key (ID_CIUDAD)
);

/*==============================================================*/
/* Index: CUIDAD_PK                                             */
/*==============================================================*/
create unique index CUIDAD_PK on CUIDAD (
ID_CIUDAD
);

/*==============================================================*/
/* Table: EMPLEADO                                              */
/*==============================================================*/
create table EMPLEADO (
   ID_EMP               INT4                 not null,
   ID_TIPO_EMP          INT4                 not null,
   CEDULA_EMP           VARCHAR(10)          null,
   NOMBRE_EMP           VARCHAR(50)          null,
   APELLIDO_EMP         VARCHAR(50)          null,
   EMAIL_EMP            VARCHAR(50)          null,
   FECHA_NAC_EMP        DATE                 null,
   TIPO_SANGRE_EMP      VARCHAR(3)           null,
   DIRECCION_EMP        VARCHAR(50)          null,
   constraint PK_EMPLEADO primary key (ID_EMP)
);

/*==============================================================*/
/* Index: EMPLEADO_PK                                           */
/*==============================================================*/
create unique index EMPLEADO_PK on EMPLEADO (
ID_EMP
);

/*==============================================================*/
/* Index: RELATIONSHIP_15_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_15_FK on EMPLEADO (
ID_TIPO_EMP
);

/*==============================================================*/
/* Table: FACTURACION                                           */
/*==============================================================*/
create table FACTURACION (
   ID_FAC               INT4                 not null,
   ID_EMP               INT4                 not null,
   ID_SERV              INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   ID_UBI               INT4                 not null,
   FCH_FAC              DATE                 null,
   constraint PK_FACTURACION primary key (ID_FAC)
);

/*==============================================================*/
/* Index: FACTURACION_PK                                        */
/*==============================================================*/
create unique index FACTURACION_PK on FACTURACION (
ID_FAC
);

/*==============================================================*/
/* Index: RELATIONSHIP_6_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_6_FK on FACTURACION (
ID_UBI
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on FACTURACION (
ID_SERV
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on FACTURACION (
ID_CLIENTE
);

/*==============================================================*/
/* Index: RELATIONSHIP_17_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_17_FK on FACTURACION (
ID_EMP
);

/*==============================================================*/
/* Table: PROVINCIA                                             */
/*==============================================================*/
create table PROVINCIA (
   ID_PROVINCIA         INT4                 not null,
   NOM_PROVINCIA        VARCHAR(20)          null,
   constraint PK_PROVINCIA primary key (ID_PROVINCIA)
);

/*==============================================================*/
/* Index: PROVINCIA_PK                                          */
/*==============================================================*/
create unique index PROVINCIA_PK on PROVINCIA (
ID_PROVINCIA
);

/*==============================================================*/
/* Table: SECTOR                                                */
/*==============================================================*/
create table SECTOR (
   ID_SECTOR            INT4                 not null,
   NOM_SECTOR           VARCHAR(20)          null,
   constraint PK_SECTOR primary key (ID_SECTOR)
);

/*==============================================================*/
/* Index: SECTOR_PK                                             */
/*==============================================================*/
create unique index SECTOR_PK on SECTOR (
ID_SECTOR
);

/*==============================================================*/
/* Table: SERVICIO                                              */
/*==============================================================*/
create table SERVICIO (
   ID_SERV              INT4                 not null,
   ID_TIPO_FAC          INT4                 not null,
   ID_TIPO_SERV         INT4                 not null,
   ID_EMP               INT4                 not null,
   COSTO_TIPO_SERV      DECIMAL              null,
   constraint PK_SERVICIO primary key (ID_SERV)
);

/*==============================================================*/
/* Index: SERVICIO_PK                                           */
/*==============================================================*/
create unique index SERVICIO_PK on SERVICIO (
ID_SERV
);

/*==============================================================*/
/* Index: RELATIONSHIP_12_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_12_FK on SERVICIO (
ID_TIPO_FAC
);

/*==============================================================*/
/* Index: RELATIONSHIP_16_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_16_FK on SERVICIO (
ID_EMP
);

/*==============================================================*/
/* Index: RELATIONSHIP_24_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_24_FK on SERVICIO (
ID_TIPO_SERV
);

/*==============================================================*/
/* Table: SOLICITUD                                             */
/*==============================================================*/
create table SOLICITUD (
   ID_SOLI              INT4                 not null,
   ID_UBI               INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   ID_TIPO_SOLI         INT4                 not null,
   FECHA_INICIO_SOLICITUD DATE                 null,
   constraint PK_SOLICITUD primary key (ID_SOLI)
);

/*==============================================================*/
/* Index: SOLICITUD_PK                                          */
/*==============================================================*/
create unique index SOLICITUD_PK on SOLICITUD (
ID_SOLI
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on SOLICITUD (
ID_TIPO_SOLI
);

/*==============================================================*/
/* Index: RELATIONSHIP_7_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_7_FK on SOLICITUD (
ID_UBI
);

/*==============================================================*/
/* Index: RELATIONSHIP_21_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_21_FK on SOLICITUD (
ID_CLIENTE
);

/*==============================================================*/
/* Table: TIPO_EMPLEADO                                         */
/*==============================================================*/
create table TIPO_EMPLEADO (
   ID_TIPO_EMP          INT4                 not null,
   TIPO_EMP             VARCHAR(20)          null,
   constraint PK_TIPO_EMPLEADO primary key (ID_TIPO_EMP)
);

/*==============================================================*/
/* Index: TIPO_EMPLEADO_PK                                      */
/*==============================================================*/
create unique index TIPO_EMPLEADO_PK on TIPO_EMPLEADO (
ID_TIPO_EMP
);

/*==============================================================*/
/* Table: TIPO_FACTURACION                                      */
/*==============================================================*/
create table TIPO_FACTURACION (
   ID_TIPO_FAC          INT4                 not null,
   NOMBRE_TIPO_FAC      VARCHAR(20)          null,
   constraint PK_TIPO_FACTURACION primary key (ID_TIPO_FAC)
);

/*==============================================================*/
/* Index: TIPO_FACTURACION_PK                                   */
/*==============================================================*/
create unique index TIPO_FACTURACION_PK on TIPO_FACTURACION (
ID_TIPO_FAC
);

/*==============================================================*/
/* Table: TIPO_SERVICIO                                         */
/*==============================================================*/
create table TIPO_SERVICIO (
   ID_TIPO_SERV         INT4                 not null,
   NOM_TIPO_SERV        VARCHAR(20)          null,
   constraint PK_TIPO_SERVICIO primary key (ID_TIPO_SERV)
);

/*==============================================================*/
/* Index: TIPO_SERVICIO_PK                                      */
/*==============================================================*/
create unique index TIPO_SERVICIO_PK on TIPO_SERVICIO (
ID_TIPO_SERV
);

/*==============================================================*/
/* Table: TIPO_SOLICITUD                                        */
/*==============================================================*/
create table TIPO_SOLICITUD (
   ID_TIPO_SOLI         INT4                 not null,
   NOM_TIPO_SOLI        VARCHAR(20)          null,
   constraint PK_TIPO_SOLICITUD primary key (ID_TIPO_SOLI)
);

/*==============================================================*/
/* Index: TIPO_SOLICITUD_PK                                     */
/*==============================================================*/
create unique index TIPO_SOLICITUD_PK on TIPO_SOLICITUD (
ID_TIPO_SOLI
);

/*==============================================================*/
/* Table: UBICACION                                             */
/*==============================================================*/
create table UBICACION (
   ID_UBI               INT4                 not null,
   ID_CIUDAD            INT4                 not null,
   ID_PROVINCIA         INT4                 not null,
   ID_SECTOR            INT4                 not null,
   constraint PK_UBICACION primary key (ID_UBI)
);

/*==============================================================*/
/* Index: UBICACION_PK                                          */
/*==============================================================*/
create unique index UBICACION_PK on UBICACION (
ID_UBI
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on UBICACION (
ID_PROVINCIA
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on UBICACION (
ID_CIUDAD
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on UBICACION (
ID_SECTOR
);

alter table BITACORA_INTALACION
   add constraint FK_BITACORA_RELATIONS_SERVICIO foreign key (ID_SERV)
      references SERVICIO (ID_SERV)
      on delete restrict on update restrict;

alter table BITACORA_INTALACION
   add constraint FK_BITACORA_RELATIONS_UBICACIO foreign key (ID_UBI)
      references UBICACION (ID_UBI)
      on delete restrict on update restrict;

alter table CLIENTE
   add constraint FK_CLIENTE_RELATIONS_UBICACIO foreign key (ID_UBI)
      references UBICACION (ID_UBI)
      on delete restrict on update restrict;

alter table CONTRATO
   add constraint FK_CONTRATO_RELATIONS_TIPO_FAC foreign key (ID_TIPO_FAC)
      references TIPO_FACTURACION (ID_TIPO_FAC)
      on delete restrict on update restrict;

alter table CONTRATO
   add constraint FK_CONTRATO_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CONTRATO
   add constraint FK_CONTRATO_RELATIONS_EMPLEADO foreign key (ID_EMP)
      references EMPLEADO (ID_EMP)
      on delete restrict on update restrict;

alter table CONVENIO
   add constraint FK_CONVENIO_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table CONVENIO
   add constraint FK_CONVENIO_RELATIONS_EMPLEADO foreign key (ID_EMP)
      references EMPLEADO (ID_EMP)
      on delete restrict on update restrict;

alter table CONVENIO
   add constraint FK_CONVENIO_RELATIONS_CONTRATO foreign key (ID_CONTR)
      references CONTRATO (ID_CONTR)
      on delete restrict on update restrict;

alter table EMPLEADO
   add constraint FK_EMPLEADO_RELATIONS_TIPO_EMP foreign key (ID_TIPO_EMP)
      references TIPO_EMPLEADO (ID_TIPO_EMP)
      on delete restrict on update restrict;

alter table FACTURACION
   add constraint FK_FACTURAC_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table FACTURACION
   add constraint FK_FACTURAC_RELATIONS_SERVICIO foreign key (ID_SERV)
      references SERVICIO (ID_SERV)
      on delete restrict on update restrict;

alter table FACTURACION
   add constraint FK_FACTURAC_RELATIONS_EMPLEADO foreign key (ID_EMP)
      references EMPLEADO (ID_EMP)
      on delete restrict on update restrict;

alter table FACTURACION
   add constraint FK_FACTURAC_RELATIONS_UBICACIO foreign key (ID_UBI)
      references UBICACION (ID_UBI)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_RELATIONS_TIPO_FAC foreign key (ID_TIPO_FAC)
      references TIPO_FACTURACION (ID_TIPO_FAC)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_RELATIONS_EMPLEADO foreign key (ID_EMP)
      references EMPLEADO (ID_EMP)
      on delete restrict on update restrict;

alter table SERVICIO
   add constraint FK_SERVICIO_RELATIONS_TIPO_SER foreign key (ID_TIPO_SERV)
      references TIPO_SERVICIO (ID_TIPO_SERV)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_CLIENTE foreign key (ID_CLIENTE)
      references CLIENTE (ID_CLIENTE)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_UBICACIO foreign key (ID_UBI)
      references UBICACION (ID_UBI)
      on delete restrict on update restrict;

alter table SOLICITUD
   add constraint FK_SOLICITU_RELATIONS_TIPO_SOL foreign key (ID_TIPO_SOLI)
      references TIPO_SOLICITUD (ID_TIPO_SOLI)
      on delete restrict on update restrict;

alter table UBICACION
   add constraint FK_UBICACIO_RELATIONS_PROVINCI foreign key (ID_PROVINCIA)
      references PROVINCIA (ID_PROVINCIA)
      on delete restrict on update restrict;

alter table UBICACION
   add constraint FK_UBICACIO_RELATIONS_CUIDAD foreign key (ID_CIUDAD)
      references CUIDAD (ID_CIUDAD)
      on delete restrict on update restrict;

alter table UBICACION
   add constraint FK_UBICACIO_RELATIONS_SECTOR foreign key (ID_SECTOR)
      references SECTOR (ID_SECTOR)
      on delete restrict on update restrict;
