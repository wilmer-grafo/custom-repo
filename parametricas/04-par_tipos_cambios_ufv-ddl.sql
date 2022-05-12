-- TSS_TIPOS_CAMBIOS_UFV
-- parametricas.par_tipos_cambios_ufv
create table parametricas.par_tipos_cambios_ufv
(
  id integer generated always as identity
    constraint par_tipos_cambios_ufv_pkey
      primary key,
  fecha timestamp with time zone not null
    constraint unq_fecha_ufv
      unique,
  ufv numeric not null,
  id_usuario_registra integer not null,
  fecha_registra timestamp with time zone not null,
  id_usuario_modifica integer,
  fecha_modifica timestamp with time zone,
  activo integer default 1 not null
);
-- COMMENTS
comment on table parametricas.par_tipos_cambios_ufv is 'Tabla que almacena los tipos de cambio de UFV.';
comment on column parametricas.par_tipos_cambios_ufv.id is 'Llave primaria de la tabla';
comment on column parametricas.par_tipos_cambios_ufv.fecha is 'Fecha del tipo de cambio de la UFV';
comment on column parametricas.par_tipos_cambios_ufv.ufv is 'Tipo de cambio de la UFV en bolivianos';
comment on column parametricas.par_tipos_cambios_ufv.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_tipos_cambios_ufv.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_tipos_cambios_ufv.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_tipos_cambios_ufv.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column parametricas.par_tipos_cambios_ufv.activo is 'Indicador si el registro está activo=1 o inactivo=0';
-- DDL
alter table parametricas.par_tipos_cambios_ufv owner to postgres;
