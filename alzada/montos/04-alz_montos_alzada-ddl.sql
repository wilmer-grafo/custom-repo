-- TSS_MONTOS
create table alzada.alz_montos_alzada
(
    id integer generated always as identity
        constraint alz_montos_alzada_pkey
            primary key,
    id_acto_impugnado integer not null
        constraint "FK_montos_alzada_actos_impugnados"
            references alzada.alz_actos_impugnados,
    id_tipo_impuesto integer not null
        constraint "FK_montos_alzada_tipo_impuesto"
            references parametricas.par_tipos_impuestos,
    mes integer not null,
    anio integer not null,
    monto_principal_admitido numeric,
    monto_multa_admitido numeric,
    monto_principal_favor_adm_resuelto numeric,
    monto_multa_favor_adm_resuelto numeric,
    monto_principal_favor_sp_resuelto numeric,
    monto_multa_favor_sp_resuelto numeric,
    monto_principal_anulatoria_resuelto numeric,
    monto_multa_anulatoria_resuelto numeric,
    estado integer not null,
    id_usuario_registra integer not null,
    fecha_registra timestamp with time zone not null,
    id_usuario_modifica integer,
    fecha_modifica timestamp with time zone,
    tipo_moneda integer,
    tipo_moneda_resuelto integer
);

comment on table alzada.alz_montos_alzada is 'Tabla que almacena los montos impugnados y resueltos';
comment on column alzada.alz_montos_alzada.id is 'Llave primaria de la tabla';
comment on column alzada.alz_montos_alzada.id_acto_impugnado is 'Identificador del acto impugnado';
comment on column alzada.alz_montos_alzada.id_tipo_impuesto is 'Identificador del tipo de impuesto que se registra para el acto impugnado';
comment on column alzada.alz_montos_alzada.mes is 'Mes de la multa en número del 1 al 12';
comment on column alzada.alz_montos_alzada.anio is 'Gestión de la multa en número';
comment on column alzada.alz_montos_alzada.monto_principal_admitido is 'Monto principal en la fase de admisión';
comment on column alzada.alz_montos_alzada.monto_multa_admitido is 'Monto de la multa en la fase de admisión';
comment on column alzada.alz_montos_alzada.monto_principal_favor_adm_resuelto is 'Monto principal resuelto a favor de la administración tributaria';
comment on column alzada.alz_montos_alzada.monto_multa_favor_adm_resuelto is 'Monto de la multa resuelto a favor de la administración tributaria';
comment on column alzada.alz_montos_alzada.monto_principal_favor_sp_resuelto is 'Monto principal resuelto a favor del sujeto pasivo';
comment on column alzada.alz_montos_alzada.monto_multa_favor_sp_resuelto is 'Monto de la multa resuelto a favor del sujeto pasivo';
comment on column alzada.alz_montos_alzada.monto_principal_anulatoria_resuelto is 'Monto principal resuelto declarando anulatoria';
comment on column alzada.alz_montos_alzada.monto_multa_anulatoria_resuelto is 'Monto de la multa resuelto declarando anulatoria';
comment on column alzada.alz_montos_alzada.estado is 'Estado del registro';
comment on column alzada.alz_montos_alzada.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column alzada.alz_montos_alzada.fecha_registra is 'Fecha en la que se registra la información';
comment on column alzada.alz_montos_alzada.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column alzada.alz_montos_alzada.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column alzada.alz_montos_alzada.tipo_moneda is '1 = UFV ; 2 =Bolivianos';
comment on column alzada.alz_montos_alzada.tipo_moneda_resuelto is 'tipo de moneda en el cargado de montos resueltos
1=Bs 2 UFV';

alter table alzada.alz_montos_alzada owner to postgres;

-- VER
TRUNCATE TABLE alzada.alz_montos_alzada RESTART IDENTITY;