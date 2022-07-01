TSS_RECURSOS_ALZADA

select count(id)
from alzada.alz_recursos_alzada
where (numero_recurso_alzada like 'ARIT-CBA-%/2021%' or
       numero_recurso_alzada like 'ARIT-CBA-%/2022%');


SELECT COUNT(ra.C_Nro_Expediente)
FROM TSS_RECURSOS_ALZADA AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%');


TSS_ACTOS_IMPUGNADOS

select count(ai.id)
from alzada.alz_actos_impugnados ai
where id_recurso_alzada in (
    select id
    from alzada.alz_recursos_alzada
    where (numero_recurso_alzada ilike 'ARIT-BEN-%/2021%' or
           numero_recurso_alzada ilike 'ARIT-BEN-%/2022%')
);


SELECT COUNT(ra.C_Nro_Expediente)
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%');


TSS_MONTOS

select count(ama.id)
from alzada.alz_montos_alzada as ama
         inner join alzada.alz_actos_impugnados aai on aai.id = ama.id_acto_impugnado
where aai.id_recurso_alzada in (select id
                                from alzada.alz_recursos_alzada
                                where (numero_recurso_alzada ilike 'ARIT-BEN-%/2021%' or
                                       numero_recurso_alzada ilike 'ARIT-BEN-%/2022%'));

SELECT COUNT(ra.C_Nro_Expediente)
FROM TSS_MONTOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%');


TSS_AUTOS

select count(rds.id)
from alzada.alz_actuaciones as rds
where rds.id_recurso_alzada in
      (select id
       from alzada.alz_recursos_alzada
       where (numero_recurso_alzada ilike 'ARIT-BEN-%/2021%' or
              numero_recurso_alzada ilike 'ARIT-BEN-%/2022%'));


SELECT COUNT(ra.C_Nro_Expediente)
FROM TSS_AUTOS AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%');


TSS_NOTIFICACIONES

select count(ama.id)
from alzada.alz_notificaciones as ama
inner join alzada.alz_actuaciones aai on aai.id = ama.id_actuacion
where aai.id_recurso_alzada in (select id
                    from alzada.alz_recursos_alzada
                    where (numero_recurso_alzada ilike 'ARIT-BEN-%/2021%' or
                           numero_recurso_alzada ilike 'ARIT-BEN-%/2022%'));


SELECT COUNT(ra.C_Nro_Expediente)
FROM TSS_NOTIFICACIONES AS ra
WHERE (LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2021%' OR
       LTRIM(RTRIM(ra.C_Nro_Expediente)) LIKE 'ARIT-BEN-%/2022%');