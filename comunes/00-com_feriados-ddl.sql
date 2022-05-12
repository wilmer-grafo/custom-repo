--TSS_FERIADOS; [N_Codigo_Oficina] y [N_Codigo_Reg_Int] en Postgres solo [id_region]
--comunes.feriados
create table comunes.feriados
(
  id integer generated always as identity
    constraint feriados_pkey
      primary key,
  id_motivo_feriado integer not null
    constraint "FK_motivos_feriados_feriados"
      references parametricas.par_motivos_feriados, -- DEFINIDO
  fecha timestamp with time zone not null,
  id_region integer not null
    constraint "FK_feriados_regiones"
      references seguridad.seg_regiones, -- DEFINIDO
  suspende_plazo integer default 0 not null,
  estado integer default 1 not null,
  id_usuario_registra integer not null,
  fecha_registra timestamp with time zone not null,
  id_usuario_modifica integer,
  fecha_modifica timestamp with time zone,
  gestion integer not null
);
-- COMMENTS
comment on table comunes.feriados is 'Tabla que almacena los feriados por region y si los mismos se constituyen en interruptores de plazos';
comment on column comunes.feriados.id is 'Llave primaria de la tabla';
comment on column comunes.feriados.id_motivo_feriado is 'Identificador del motivo de los feriado.';
comment on column comunes.feriados.fecha is 'Fecha del feriado';
comment on column comunes.feriados.id_region is 'Identificador de la región del cual será feriado';
comment on column comunes.feriados.suspende_plazo is 'Identificador que indica si el feriado considera la suspensión de plazo durante esa fecha (en el caso de plazos corridos) 0=no 1=si';
comment on column comunes.feriados.estado is 'Estado del registro 0=Eliminado 1= Activo';
comment on column comunes.feriados.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column comunes.feriados.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column comunes.feriados.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table comunes.feriados owner to postgres;