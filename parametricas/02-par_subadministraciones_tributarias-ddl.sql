--TSS_SUBADMINISTRACIONES_TRIBUTARIAS; [C_Articulo]; [C_Preposicion];
--parametricas.par_subadministraciones_tributarias
create table parametricas.par_subadministraciones_tributarias
(
  id integer generated always as identity
    constraint par_subadministraciones_tributarias_pkey
      primary key,
  descripcion varchar(200) not null,
  nombre_autoridad varchar(200) not null,
  id_administracion_tributaria integer not null
    constraint "FK_subadministracion_administracion"
      references parametricas.par_administraciones_tributarias,
  direccion varchar(300) not null,
  latitud numeric,
  longitud numeric,
  activo smallint default 1 not null,
  id_articulo integer not null
    constraint "FK_subadministracion_articulo"
      references parametricas.par_tipos_articulos, -- DEFINIDO
  id_preposicion integer not null
    constraint "FK_subadministracion_preposicion"
      references parametricas.par_tipos_preposicion, -- DEFINIDO
  id_usuario_registra integer not null,
  fecha_registra timestamp with time zone not null,
  id_usuario_modifica integer,
  fecha_modifica timestamp with time zone
);
-- COMMENTS
comment on table parametricas.par_subadministraciones_tributarias is 'Tabla que almacena la información de las subadministraciones tributarias';
comment on column parametricas.par_subadministraciones_tributarias.id is 'Llave primaria de la tabla';
comment on column parametricas.par_subadministraciones_tributarias.descripcion is 'Nombre / descripción de la subadminsitración tributaria';
comment on column parametricas.par_subadministraciones_tributarias.nombre_autoridad is 'Nombre de la autoridad representante de la subadminsitración tributaria';
comment on column parametricas.par_subadministraciones_tributarias.id_administracion_tributaria is 'Identificador de la administración tributaria a la que pertenece la subadministración.';
comment on column parametricas.par_subadministraciones_tributarias.direccion is 'Dirección de las oficinas de la subadminsitración tributaria';
comment on column parametricas.par_subadministraciones_tributarias.latitud is 'LAtitud de la georeferenciación';
comment on column parametricas.par_subadministraciones_tributarias.longitud is 'Longitud de la georeferenciacion';
comment on column parametricas.par_subadministraciones_tributarias.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_subadministraciones_tributarias.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_subadministraciones_tributarias.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_subadministraciones_tributarias.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_subadministraciones_tributarias owner to postgres;