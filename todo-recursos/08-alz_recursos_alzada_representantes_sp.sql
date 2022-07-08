Cargar recursos y los representantes sp.
EJECUTAR LA CONSULTA Y GENERAR CSV, previa creacion de la tabla legales

select nombre_completo as nombre_representante_sp,
       id
from alzada.alz_representantes_sp
order by id;


DESPUES
EJECUTAR LA CONSULTA Y GENERAR CSV, LUEGO IMPORTAR EL ARCHIVO GENERADO

SELECT (SELECT id
        FROM recursos AS r
        WHERE r.numero_recurso_alzada = LTRIM(RTRIM(ra.C_Nro_Expediente)))    AS id_recurso_alzada,
       (SELECT TOP 1 rep.id
        FROM legales rep
        WHERE rep.nombre_representante_sp = LTRIM(RTRIM(ra.C_Representante))) AS id_representante_legal_sp,
       1                                                                      AS id_usuario_registra,
       NULL                                                                   AS id_usuario_modifica,
       NULL                                                                   AS fecha_modifica,
       1                                                                      AS estado,
       GETDATE()                                                              AS fecha_registra,
       ra.C_Cargo_Rep                                                         AS cargo_representante,
       NULL                                                                   AS numero_documento,
       NULL                                                                   AS fecha_documento,
       NULL                                                                   AS id_tipo_documento_representante
FROM TSS_RECURSOS_ALZADA ra
WHERE LEN(LTRIM(RTRIM(ra.C_Representante))) > 1
ORDER BY LTRIM(RTRIM(C_Representante));
