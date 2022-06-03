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

