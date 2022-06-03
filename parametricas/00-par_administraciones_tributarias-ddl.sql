--TSS_ADMINISTRACIONES_TRIBUTARIAS; [C_Articulo]; [C_Preposicion]; [C_Super_Adm_Tri]
--parametricas.par_administraciones_tributarias
create table parametricas.par_administraciones_tributarias
(
  id integer generated always as identity
    constraint par_administraciones_tributarias_pkey
      primary key,
  descripcion varchar(200) not null,
  id_articulo integer not null
    constraint "FK_administraciones_articulos"
      references parametricas.par_tipos_articulos, -- DEFINIDO
  id_preposicion integer not null
    constraint "FK_administraciones_preposicion"
      references parametricas.par_tipos_preposicion, -- DEFINIDO
  id_tipo_super_administracion integer not null
    constraint "FK_administraciones_super_adm"
      references parametricas.par_tipos_super_administracion, -- DEFINIDO
  activo smallint default 1 not null,
  id_usuario_registra integer not null,
  fecha_registra timestamp with time zone not null,
  id_usuario_modifica integer,
  fecha_modifica timestamp with time zone
);
