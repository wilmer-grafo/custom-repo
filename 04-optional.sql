-- [S/A]
-- parametricas.par_tipos_notificaciones
create table parametricas.par_tipos_notificaciones
(
    id integer generated always as identity
        constraint par_tipos_notificaciones_pkey
            primary key,
    descripcion varchar(100) not null,
    activo smallint default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_tipos_notificaciones is 'Tabla que almacena el tipo de notificación que se puede practicar';
comment on column parametricas.par_tipos_notificaciones.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_notificaciones.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_notificaciones.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_notificaciones.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_notificaciones.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_notificaciones owner to postgres;

--TSS_TIPOS_AUTOS; 
--parametricas.par_tipos_actuaciones
create table parametricas.par_tipos_actuaciones
(
    id integer generated always as identity
        constraint par_tipos_actuaciones_pkey
            primary key,
    descripcion varchar(200) not null,
    orden integer default 1 not null,
    nombre_campo_fecha varchar(200),
    activo smallint default 1 not null,
    origen integer default 1 not null,
    id_tipo_notificacion integer not null
        constraint "FK_tipos_notificaciones_tipos_actuaciones"
            references parametricas.par_tipos_notificaciones,
    comentario varchar(300),
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    proceso smallint default 4 not null
);

-- COMMENTS
comment on table parametricas.par_tipos_actuaciones is 'Tabla que almacena los tipos de actuaciones que se pueden generar en los p´rocesos sustantivos de la AIT (Alzada Jerarquico y Contencioso)';
comment on column parametricas.par_tipos_actuaciones.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_actuaciones.descripcion is 'Nombre / descripción del tipo de actuación (Auto, proveído, memorial, decreto, etc)';
comment on column parametricas.par_tipos_actuaciones.orden is 'Campo que indica el orden de prioridad que tendrá el registro al mostrarse en la grilla, combobox, etc.';
comment on column parametricas.par_tipos_actuaciones.nombre_campo_fecha is 'Nombre del campo de la fecha de la actuación que se mostrará en la vista (Fecha de Actuación, Fecha de Emisión, etc)';
comment on column parametricas.par_tipos_actuaciones.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_actuaciones.origen is 'Origen de la actuación a registrar 0= actuaciones propias de la AIT, 1= Sujeto Pasivo  2=Administración Tributaria 3=Conminatoria del TSJ';
comment on column parametricas.par_tipos_actuaciones.id_tipo_notificacion is 'Indica el tipo de notificacion que tiene la actuacion (personal, secretaria, etc)';
comment on column parametricas.par_tipos_actuaciones.comentario is 'Campo que almacena el texto adicional que irá junto a la descripción del tipo de actuación si es que es necesario';
comment on column parametricas.par_tipos_actuaciones.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_actuaciones.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_actuaciones.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_actuaciones.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column parametricas.par_tipos_actuaciones.proceso is 'Identificador del proceso al que pertenece el registro 1=alzada 2=jerarquico 3=contencioso 4=todos';

-- DDL
alter table parametricas.par_tipos_actuaciones owner to postgres;