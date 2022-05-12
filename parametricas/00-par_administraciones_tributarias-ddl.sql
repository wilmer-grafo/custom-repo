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
-- COMMENTS
comment on table parametricas.par_administraciones_tributarias is 'Tabla que almacena la información de las administraciones tributarias';
comment on column parametricas.par_administraciones_tributarias.id is 'Llave primaria de la tabla';
comment on column parametricas.par_administraciones_tributarias.descripcion is 'Nombre / descripción de la administración tributaria';
comment on column parametricas.par_administraciones_tributarias.id_articulo is 'Id del artículo al ser usado para citar a la administración tributaria';
comment on column parametricas.par_administraciones_tributarias.id_preposicion is 'Id de la presposición a ser usada por la administración tributaria';
comment on column parametricas.par_administraciones_tributarias.id_tipo_super_administracion is 'Id del tipo de super administración a la que pertenece la administración';
comment on column parametricas.par_administraciones_tributarias.activo is 'Indica si el registro estará activo en sistema 1=Activo 0= Inactivo';
comment on column parametricas.par_administraciones_tributarias.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column parametricas.par_administraciones_tributarias.fecha_registra is 'Fecha en la que se registra la información';
comment on column parametricas.par_administraciones_tributarias.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column parametricas.par_administraciones_tributarias.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
-- DDL
alter table parametricas.par_administraciones_tributarias owner to postgres;
