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
