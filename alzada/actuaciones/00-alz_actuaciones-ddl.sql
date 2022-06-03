--TSS_AUTOS
create table alzada.alz_actuaciones
(
    id integer generated always as identity
        constraint alz_actuaciones_pkey
            primary key,
    id_recurso_alzada integer not null
        constraint "FK_actuaciones_recurso_alzada"
            references alzada.alz_recursos_alzada,
    id_tipo_actuacion integer not null
        constraint "FK_actuaciones_tipo_actuacion"
            references parametricas.par_tipos_actuaciones,
    fecha_emision timestamp with time zone not null,
    observaciones varchar(3000),
    fecha_subsanacion timestamp with time zone,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    estado integer,
    id_memorial varchar,
    clasificacion_etapa integer,
    id_interposicion_jerarquico integer
        constraint "FK_actuaciones_interposiciones_jerarquicas"
            references alzada.alz_interposiciones_jerarquico,
    estado_interposicion integer
);

TRUNCATE TABLE alzada.alz_actuaciones RESTART IDENTITY CASCADE ;

UPDATE alzada.alz_actuaciones
SET fecha_emision =
  (fecha_emision AT TIME ZONE 'UTC') AT TIME ZONE 'America/La_Paz';