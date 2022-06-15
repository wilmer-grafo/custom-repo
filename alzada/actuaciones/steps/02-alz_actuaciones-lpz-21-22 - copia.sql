EJEMPLO

SELECT (CASE
    END)                      AS id_recurso_alzada,
       (CASE

            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 1 AND 38 THEN N_Codigo_Tipo_Auto + 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 39 AND 42 THEN 40
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 43 AND 58 THEN N_Codigo_Tipo_Auto
            WHEN ra.N_Codigo_Tipo_Auto = 59 THEN 100
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 60 AND 69 THEN N_Codigo_Tipo_Auto - 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 70 AND 84 THEN N_Codigo_Tipo_Auto
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 86 AND 90 THEN N_Codigo_Tipo_Auto - 1
            WHEN ra.N_Codigo_Tipo_Auto BETWEEN 92 AND 98 THEN N_Codigo_Tipo_Auto - 2
            WHEN ra.N_Codigo_Tipo_Auto = 100 THEN 97
            WHEN ra.N_Codigo_Tipo_Auto = 101 THEN 98
            WHEN ra.N_Codigo_Tipo_Auto = 102 THEN 99
           END)               AS id_tipo_actuacion,
       ra.D_Fecha_Emision     AS fecha_emision,
       ra.C_Observacion       AS observaciones,
       ra.D_Fecha_Subsanacion AS fecha_subsanacion,
       1                      AS id_usuario_registra,
       GETDATE()              AS fecha_registra,
       NULL                   AS id_usuario_modifica,
       NULL                   AS fecha_modifica,
       20                     AS estado,
       NULL                   AS id_memorial,
       NULL                   AS clasificacion_etapa,
       NULL                   AS id_interposicion_jerarquico,
       NULL                   AS estado_interposicion
FROM TSS_AUTOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-LPZ-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-LPZ-%/2022%')
ORDER BY ra.C_Nro_Expediente;


1ro get, C_Nro_Expediente, OPCIONAL A MANERA DE VERIFICAR

SELECT temp.C_Nro_Expediente,
       1 AS C_Nro
FROM (SELECT C_Nro_Expediente, N_Codigo_Tipo_Auto, D_Fecha_Emision
      FROM TSS_AUTOS
      WHERE (C_Nro_Expediente LIKE 'ARIT-LPZ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-LPZ-%/2022%')
      GROUP BY C_Nro_Expediente, N_Codigo_Tipo_Auto, D_Fecha_Emision) AS temp
ORDER BY temp.C_Nro_Expediente;


GET VALUES

select numero_recurso_alzada, id
from alzada.alz_recursos_alzada
where (numero_recurso_alzada ilike 'ARIT-LPZ-%/2021%' OR numero_recurso_alzada ilike 'ARIT-LPZ-%/2022%')
order by numero_recurso_alzada;

ARMAR 
LTRIM(RTRIM(ra.C_Nro_Expediente))

