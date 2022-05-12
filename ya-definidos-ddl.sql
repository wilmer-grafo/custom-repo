-- [C_Articulo]
-- parametricas.par_tipos_articulos
create table if not exists parametricas.par_tipos_articulos
(
    id integer generated always as identity
        constraint pat_tipos_articulos_pkey
            primary key,
    descripcion varchar(10) not null,
    activo smallint default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_tipos_articulos is 'Tabla que almacena los tipos de articulos para la formación de textos.';
comment on column parametricas.par_tipos_articulos.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_articulos.descripcion is 'Nombre / descripción de los articulos';
comment on column parametricas.par_tipos_articulos.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_articulos.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_articulos.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_articulos.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_articulos.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_articulos owner to postgres;

-- [C_Preposicion]
-- parametricas.par_tipos_preposicion
create table parametricas.par_tipos_preposicion
(
    id integer generated always as identity
        constraint par_tipos_preposicion_pkey
            primary key,
    descripcion varchar(10) not null,
    activo smallint default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra varchar not null,
    id_usuario_modifica integer,
    fecha_modifica varchar
);
-- COMMENTS
comment on table parametricas.par_tipos_preposicion is 'Tabla que almacena los tipos de preposiciones para generar textos';
comment on column parametricas.par_tipos_preposicion.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_preposicion.descripcion is 'Nombre / descripción del tipo de preposición';
comment on column parametricas.par_tipos_preposicion.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_preposicion.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_preposicion.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_preposicion.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_preposicion.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_preposicion owner to postgres;

-- [C_Super_Adm_Tri]
-- parametricas.par_tipos_super_administracion
create table parametricas.par_tipos_super_administracion
(
    id integer generated always as identity
        constraint par_tipos_super_administracion_pkey
            primary key,
    descripcion varchar(50) not null,
    activo smallint default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_tipos_super_administracion is 'Tabla que almacena las agrupaciones de administraciones tributarias';
comment on column parametricas.par_tipos_super_administracion.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_super_administracion.descripcion is 'Nombre / descripción del tipo de super administración (grupo de administraciones tributarias)';
comment on column parametricas.par_tipos_super_administracion.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_tipos_super_administracion.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_super_administracion.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_super_administracion.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_super_administracion.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_tipos_super_administracion owner to postgres;
