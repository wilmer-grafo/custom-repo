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
