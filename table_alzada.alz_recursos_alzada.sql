--parametricas.par_medios_recepcion
--parametricas.par_tipos_demandante
--parametricas.par_tipos_documentos
--seguridad.seg_regiones
--parametricas.par_subadministraciones_tributarias
--parametricas.par_tipos_respuestas_administracion
--parametricas.par_tipos_resoluciones
--parametricas.par_tipos_procesos_centrales
--parametricas.par_resultados_anulacion

create table alzada.alz_recursos_alzada
(
	id integer generated always as identity
		constraint alz_recursos_alzada_pkey
			primary key,
	id_tipo_presentacion integer default 1 not null
		constraint "FK_recursos_alzada_tipo_presentacion"
			references parametricas.par_medios_recepcion,
	razon_social varchar(1000) not null,
	id_tipo_documento integer not null
		constraint "FK_recursos_alzada_tipo_documento"
			references parametricas.par_tipos_documentos,
	numero_documento varchar(20) not null,
	id_region_documento integer
		constraint "FK_recursos_alzada_regiones"
			references seguridad.seg_regiones,
	id_subadministracion_tributaria integer not null
		constraint "FK_recursos_alzada_subadministracion"
			references parametricas.par_subadministraciones_tributarias,
	nombre_presentante varchar(200) not null,
	cargo_presentante varchar(200) not null,
	id_tipo_respuesta_administracion integer
		constraint "FK_recursos_alzada_respuesta_administracion"
			references parametricas.par_tipos_respuestas_administracion,
	direccion varchar(300) not null,
	latitud numeric,
	longitud numeric,
	estado integer default 1 not null,
	numero_recurso_alzada varchar(30) not null
		constraint unq_numero_alzada
			unique,
	numero_res_alzada varchar(30),
	id_tipo_resolucion integer
		constraint "FK_recursos_alzada_tipos_resolucion"
			references parametricas.par_tipos_resoluciones,
	id_usuario_registra integer not null,
	fecha_registra timestamp with time zone not null,
	id_usuario_modifica integer,
	fecha_modifica timestamp with time zone,
	id_region_radicatoria integer not null,
	fecha_presentacion timestamp with time zone not null,
	fecha_respuesta_administracion timestamp with time zone,
	fecha_vencimiento timestamp,
	antecedentes_at text,
	antecedentes_sp text,
	antecedentes_otro text,
	estado_revision_alzada_montos integer,
	cuerpos varchar(2500),
	id_resultado_anulacion integer
		constraint "FK_recursos_alzada_anulacion"
			references parametricas.par_resultados_anulacion,
	tipo_persona integer,
	clasificador_alzada integer default 1,
	id_region_recepcion integer not null
);

comment on table alzada.alz_recursos_alzada is 'Tabla que almacena los datos generales de los diferentes recursos que se tramitan en las regionales y departamentales.';
comment on column alzada.alz_recursos_alzada.id_tipo_presentacion is 'Identificador del tipo de presentacion del recurso (fisica, virtual, etc)
1=Fisica
2=VIrtual
3=Manual';
comment on column alzada.alz_recursos_alzada.razon_social is 'Razon social (sujeto pasivo) que interpone el recurso de alzada';
comment on column alzada.alz_recursos_alzada.id_tipo_documento is 'Idenrtificador del tipo de documento del recurrente.';
comment on column alzada.alz_recursos_alzada.numero_documento is 'Número del documento que identifica al recurrente (CI, NIT, etc)';
comment on column alzada.alz_recursos_alzada.id_region_documento is 'Identificador de la region del documento';
comment on column alzada.alz_recursos_alzada.id_subadministracion_tributaria is 'Identificador de la subadministración tributaria contra la que se interpone el recurso de alzada';
comment on column alzada.alz_recursos_alzada.nombre_presentante is 'Nombre de la persona que presenta el recurso de alzada en nombre del recurrente';
comment on column alzada.alz_recursos_alzada.cargo_presentante is 'Cargo de la persona que presenta el recurso de alzada';
comment on column alzada.alz_recursos_alzada.id_tipo_respuesta_administracion is 'Identificador del tipo de respuesta que presenta la adminsitracion tributaria';
comment on column alzada.alz_recursos_alzada.direccion is 'Dirección del domicilio del recurrente';
comment on column alzada.alz_recursos_alzada.latitud is 'Latitud de la dirección del recurrente';
comment on column alzada.alz_recursos_alzada.longitud is 'Longitud de la dirección del recurrente';
comment on column alzada.alz_recursos_alzada.estado is 'Estados
0-> inactivo
1->nuevo Activo
2->finalizado
3->Remitir Reenvio
4->AutoDefinitivo
5->Remitir Subdirección
6->AutoDifinitivo de Observacion 
8->AutoDefinitivo Interposicion Jerarquico
9->AutoDifinitivo de Observacion Interposicion Jerarquico
10->Ampliado
11->Desistido
12->Firmeza
13->Jerarquico';
comment on column alzada.alz_recursos_alzada.numero_recurso_alzada is 'Cadena única que identifica el recurso de alzada';
comment on column alzada.alz_recursos_alzada.numero_res_alzada is 'Cadena que identifica la resolucion de alzada del expediente';
comment on column alzada.alz_recursos_alzada.id_tipo_resolucion is 'Identificador del tipo de resolución de alzada';
comment on column alzada.alz_recursos_alzada.id_usuario_registra is 'Identificador del usuario que realiza el registro';
comment on column alzada.alz_recursos_alzada.fecha_registra is 'Fecha en la que se registra la información';
comment on column alzada.alz_recursos_alzada.id_usuario_modifica is 'Identificador del usuario que realiza modificaciones en el registro';
comment on column alzada.alz_recursos_alzada.fecha_modifica is 'Fecha en la que se realiza modificaciones a la información';
comment on column alzada.alz_recursos_alzada.fecha_presentacion is 'Fecha y hora de presentacion del recurso';
comment on column alzada.alz_recursos_alzada.fecha_respuesta_administracion is 'Fecha de respuesta de la administracion tributaria';
comment on column alzada.alz_recursos_alzada.fecha_vencimiento is 'Vencimiento proyectado del expediente';
comment on column alzada.alz_recursos_alzada.antecedentes_at is 'Detalle de antecedentes administrativos';
comment on column alzada.alz_recursos_alzada.antecedentes_sp is 'Detalle de antecedentes del sujeto pasivo';
comment on column alzada.alz_recursos_alzada.antecedentes_otro is 'Detalle de otros actedentes';
comment on column alzada.alz_recursos_alzada.estado_revision_alzada_montos is 'Identificar la revision de la alzada de montos
1=aceptar
2=rechazar';
comment on column alzada.alz_recursos_alzada.cuerpos is 'Campo que almacena la cantidad de cuerpos (detalle) del expediente';
comment on column alzada.alz_recursos_alzada.id_resultado_anulacion is 'Identificador del resultado cuando la resolución es de tipo anulatoria, es decir hasta donde se anula';
comment on column alzada.alz_recursos_alzada.tipo_persona is '1-> persona jurídica; 0-> Persona NAtural';
comment on column alzada.alz_recursos_alzada.clasificador_alzada is '1->RECEPCION NORMAL; 2-> RECEPCION MULTIPLE';
comment on column alzada.alz_recursos_alzada.id_region_recepcion is 'Identificador de la region donde se recepciona el expediente de alzada original.';

alter table alzada.alz_recursos_alzada owner to postgres;


SELECT 1                                                 AS id_tipo_presentacion,
       C_Razon_Social                                    AS razon_social,
       (CASE
            WHEN N_Codigo_Tipo_Doc = 1 THEN 2
            WHEN N_Codigo_Tipo_Doc = 2 THEN 10
            WHEN N_Codigo_Tipo_Doc = 3 THEN 4
            WHEN N_Codigo_Tipo_Doc = 4 THEN 11
            WHEN N_Codigo_Tipo_Doc = 5 THEN 3
            WHEN N_Codigo_Tipo_Doc = 6 THEN 6
            WHEN N_Codigo_Tipo_Doc = 7 THEN 21
            ELSE -1
           END)                                          AS id_tipo_documento,
       C_Nro_Doc_Identidad                               AS numero_documento,
       (CASE
            WHEN C_Proc_Doc_Identidad = 'TJ' THEN 7
            WHEN C_Proc_Doc_Identidad = 'PN' THEN 9
            WHEN C_Proc_Doc_Identidad = 'SC' THEN 4
            WHEN C_Proc_Doc_Identidad = 'LP' THEN 2
            WHEN C_Proc_Doc_Identidad = 'OR' THEN 6
            WHEN C_Proc_Doc_Identidad = 'BN' THEN 8
            WHEN C_Proc_Doc_Identidad = 'CB' THEN 3
            WHEN C_Proc_Doc_Identidad = 'CH' THEN 1
            WHEN C_Proc_Doc_Identidad = 'PT' THEN 5
            ELSE ''
           END)                                          AS id_region_documento,
       N_Codigo_Subadm_Tri                               AS id_subadministracion_tributaria,
       C_Presentado_Por                                  AS nombre_presentante,
       C_En_Calidad                                      AS cargo_presentante,
       (CASE
            WHEN N_Codigo_Tipo_Res = 1 THEN 2
            WHEN N_Codigo_Tipo_Res = 2 THEN 1
            WHEN N_Codigo_Tipo_Res = 3 THEN 1
            WHEN N_Codigo_Tipo_Res = 4 THEN 3
            ELSE -2
           END)                                          AS id_tipo_respuesta_administracion,
       C_Domicilio                                       AS direccion,
       ''                                                AS latitud,
       ''                                                AS longitud,
       (CASE
            WHEN N_Estado = 0 THEN 0
            WHEN N_Estado = 1 THEN 1
            WHEN N_Estado > 1 and N_Estado < 7 THEN 4
            WHEN N_Estado >= 7 THEN 8
            ELSE -3
           END)                                          AS estado,
       C_Nro_Expediente                                  AS numero_recurso_alzada,
       C_Nro_Res_Alzada                                  AS numero_res_alzada,
       (SELECT TOP 1 ai.N_Codigo_Tipo_Resol
        FROM TSS_ACTOS_IMPUGNADOS AS ai
        WHERE ai.C_Nro_Expediente = ra.C_Nro_Expediente) AS id_tipo_resolucion,
       C_Usuario                                         AS id_usuario_registra,
       D_Fecha_Update                                    AS fecha_registra,
       1                                                 AS id_usuario_modifica,
       D_Fecha_Update                                    AS fecha_modifica,
       (CASE
            WHEN (N_Codigo_Super_Reg IS NULL AND ISNUMERIC(N_Codigo_Intendencia) = 1) THEN N_Codigo_Intendencia + 4
            WHEN (ISNUMERIC(N_Codigo_Super_Reg) = 1 AND N_Codigo_Intendencia IS NULL) THEN N_Codigo_Super_Reg
            WHEN (ISNUMERIC(N_Codigo_Super_Reg) = 1 AND ISNUMERIC(N_Codigo_Intendencia) = 1) THEN N_Codigo_Super_Reg
            ELSE -4
           END)                                          AS id_region_radicatoria,
       

FROM TSS_RECURSOS_ALZADA AS ra;

SELECT *
FROM TSS_TIPOS_DOCUMENTOS;

SELECT *
from [dbo].[TSS_RECURSOS_ALZADA]
where N_Codigo_Intendencia = -1
