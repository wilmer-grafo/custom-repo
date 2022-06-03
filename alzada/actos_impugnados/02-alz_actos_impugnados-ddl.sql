-- TSS_ACTOS_IMPUGNADOS
create table alzada.alz_actos_impugnados
(
    id integer generated always as identity
        constraint alz_actos_impugnados_pkey
            primary key,
    id_tipo_acto integer not null
        constraint "FK_actos_tipos_actos"
            references parametricas.par_tipos_actos,
    numero_acto varchar(100) not null,
    cite_acto varchar(100),
    fecha_emision timestamp with time zone,
    fecha_notificacion timestamp with time zone,
    estado integer default 1 not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    id_recurso_alzada integer not null
        constraint "FK_recursos_actos"
            references alzada.alz_recursos_alzada,
    observaciones text
);

TRUNCATE TABLE alzada.alz_actos_impugnados RESTART IDENTITY CASCADE;

SET TIMEZONE='America/La_Paz';
SHOW datestyle;
SHOW TIMEZONE;

--
UPDATE alzada.alz_actos_impugnados
SET fecha_emision =
  (fecha_emision AT TIME ZONE 'UTC') AT TIME ZONE 'America/La_Paz';

UPDATE alzada.alz_actos_impugnados
SET fecha_notificacion =
  (fecha_notificacion AT TIME ZONE 'UTC') AT TIME ZONE 'America/La_Paz';
  