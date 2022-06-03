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
