EJEMPLO

SELECT ra.N_Codigo_Acto          AS id_tipo_acto,
       LTRIM(RTRIM(ra.C_Numero)) AS numero_acto,
       NULL                   AS cite_acto,
       ra.D_Fecha_Emision        AS fecha_emision,
       ra.D_Fecha_Notificacion   AS fecha_notificacion,
       1                      AS estado,
       1                      AS id_usuario_registra,
       GETDATE()              AS fecha_registra,
       NULL                   AS id_usuario_modifica,
       NULL                   AS fecha_modifica,
       (CASE
           END)               AS id_recurso_alzada,
       NULL                   AS observaciones
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%')
ORDER BY ra.C_Nro_Expediente;


1ro get, C_Nro_Expediente, OPCIONAL A MANERA DE VERIFICAR
-------------------------

SELECT temp.C_Nro_Expediente,
       1 AS C_Nro
FROM (SELECT C_Nro_Expediente, N_Codigo_Acto, C_Numero
      FROM TSS_ACTOS_IMPUGNADOS
      WHERE (C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%')
      GROUP BY C_Nro_Expediente, N_Codigo_Acto, C_Numero) AS temp
ORDER BY temp.C_Nro_Expediente;

2do get C_Nro_Expediente y valores en PG, PASO DIRECTO
----------------------------------------
ARMAR CASE:
LTRIM(RTRIM(ra.C_Nro_Expediente))

select *
from (select numero_recurso_alzada, id
      from alzada.alz_recursos_alzada
      where numero_recurso_alzada in (
          select numero_recurso_alzada
          from alzada.alz_recursos_alzada
          where (numero_recurso_alzada ilike 'ARIT-ORU-%/2021%' OR numero_recurso_alzada ilike 'ARIT-ORU-%/2022%')
          group by numero_recurso_alzada)
      order by numero_recurso_alzada) as d;
