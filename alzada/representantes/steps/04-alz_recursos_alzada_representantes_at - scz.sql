EJEMPLO

SELECT (CASE
    END
           )     AS id_recurso_alzada,
       (CASE
        END)      AS id_representante_at,
       GETDATE() AS fecha_registra,
       NULL      AS id_usuario_modifica,
       NULL      AS fecha_modifica,
       1         AS id_usuario_registra,
       1         AS estado
FROM TSS_RECURSOS_ALZADA
WHERE LEN(LTRIM(RTRIM(c_Nombre_Representante_AT))) > 1
  AND (
        (C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-CHQ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-CHQ-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-PND-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-PND-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-PTS-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-PTS-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-TJA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-TJA-%/2022%')
    )
ORDER BY C_Nro_Expediente;

TOTAL OPCIONAL

SELECT C_Nro_Expediente, LTRIM(RTRIM(c_Nombre_Representante_AT)) AS c_Nombre_Representante_AT
FROM TSS_RECURSOS_ALZADA
WHERE LEN(LTRIM(RTRIM(c_Nombre_Representante_AT))) > 1
  AND (
        (C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-CHQ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-CHQ-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-PND-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-PND-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-PTS-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-PTS-%/2022%')
        OR (C_Nro_Expediente LIKE 'ARIT-TJA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-TJA-%/2022%')
    )
ORDER BY C_Nro_Expediente;


-- OR (C_Nro_Expediente LIKE 'ARIT-LPZ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-LPZ-%/2022%')
-- OR (C_Nro_Expediente LIKE 'ARIT-SCZ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-SCZ-%/2022%')

OBTENER REC ALZ PG

select numero_recurso_alzada, id
from alzada.alz_recursos_alzada
where (numero_recurso_alzada ilike 'ARIT-BEN-%/2021%' OR numero_recurso_alzada ilike 'ARIT-BEN-%/2022%')
   OR (numero_recurso_alzada ilike 'ARIT-CBA-%/2021%' OR numero_recurso_alzada ilike 'ARIT-CBA-%/2022%')
   or (numero_recurso_alzada ilike 'ARIT-CHQ-%/2021%' OR numero_recurso_alzada ilike 'ARIT-CHQ-%/2022%')
   or (numero_recurso_alzada ilike 'ARIT-ORU-%/2021%' OR numero_recurso_alzada ilike 'ARIT-ORU-%/2022%')
   or (numero_recurso_alzada ilike 'ARIT-PND-%/2021%' OR numero_recurso_alzada ilike 'ARIT-PND-%/2022%')
   or (numero_recurso_alzada ilike 'ARIT-PTS-%/2021%' OR numero_recurso_alzada ilike 'ARIT-PTS-%/2022%')
   or (numero_recurso_alzada ilike 'ARIT-TJA-%/2021%' OR numero_recurso_alzada ilike 'ARIT-TJA-%/2022%')
order by numero_recurso_alzada;

ARMAR
LTRIM(RTRIM(C_Nro_Expediente))



GET REPRESENTANTES EN SQL SERVER

SELECT temp.c_Nombre_Representante_AT, 1 AS id
FROM (SELECT LTRIM(RTRIM(c_Nombre_Representante_AT)) AS c_Nombre_Representante_AT
      FROM TSS_RECURSOS_ALZADA
      WHERE LEN(LTRIM(RTRIM(c_Nombre_Representante_AT))) > 1
        AND (
              (C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%')
              OR (C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
              OR (C_Nro_Expediente LIKE 'ARIT-CHQ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-CHQ-%/2022%')
              OR (C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%')
              OR (C_Nro_Expediente LIKE 'ARIT-PND-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-PND-%/2022%')
              OR (C_Nro_Expediente LIKE 'ARIT-PTS-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-PTS-%/2022%')
              OR (C_Nro_Expediente LIKE 'ARIT-TJA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-TJA-%/2022%')
          )
      GROUP BY c_Nombre_Representante_AT
     ) AS temp
ORDER BY temp.c_Nombre_Representante_AT;

PEGAR LOS NOMBRES COMPLETOS EN IN

select nombre_completo, id
from alzada.alz_representantes_at
where nombre_completo in(

    )
order by nombre_completo;

ARMAR

LTRIM(RTRIM(C_Nombre_Representante_AT))