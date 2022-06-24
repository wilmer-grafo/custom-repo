alz_recursos_alzada_representantes_at

TOTAL 310 
select ra.C_Nro_Expediente, N_Codigo_Subadm_Tri, c_Nombre_Representante_AT
from TSS_RECURSOS_ALZADA ra
where (ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
and LEN(LTRIM(RTRIM(ra.c_Nombre_Representante_AT))) > 1
order by ra.C_Nro_Expediente;


--REPRESEMTAMTES QUE SI ESTAN EN RERRESENTAMES  293


SELECT DISTINCT ra.C_Nro_Expediente,
       rat.c_nombre_representante,
       rat.N_Codigo_Subadm_Tri
FROM TSS_REPRESENTANTES_AT rat
INNER JOIN TSS_RECURSOS_ALZADA ra ON
    (LTRIM(RTRIM(rat.c_nombre_representante)) = LTRIM(RTRIM(ra.c_Nombre_Representante_AT))
        AND ra.N_Codigo_Subadm_Tri=rat.N_Codigo_Subadm_Tri)
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
AND LEN(LTRIM(RTRIM(ra.c_Nombre_Representante_AT))) > 1
ORDER BY ra.C_Nro_Expediente;

DE ESTA CONSULTA SACAR LOS ESXPEDIENTES Y cOLOCAL en EL IN
select numero_recurso_alzada, id from
alzada.alz_recursos_alzada
where numero_recurso_alzada in (

    )
order by numero_recurso_alzada;
TIENE QUE SALIR = 293

ARMAR
LTRIM(RTRIM(ra.C_Nro_Expediente))


--GET REPRESENTANTE
SELECT DISTINCT
--                 ra.C_Nro_Expediente,
       LTRIM(RTRIM(ra.c_Nombre_Representante_AT)) AS repre,
       rat.N_Codigo_Subadm_Tri
FROM TSS_REPRESENTANTES_AT rat
INNER JOIN TSS_RECURSOS_ALZADA ra ON
    (LTRIM(RTRIM(rat.c_nombre_representante)) = LTRIM(RTRIM(ra.c_Nombre_Representante_AT))
        AND ra.N_Codigo_Subadm_Tri=rat.N_Codigo_Subadm_Tri)
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
AND LEN(LTRIM(RTRIM(ra.c_Nombre_Representante_AT))) > 1
ORDER BY LTRIM(RTRIM(ra.c_Nombre_Representante_AT));


nombre_completo
id_subadministracion_tributaria



ARMAR

LTRIM(RTRIM(C_Representante))


--REPRESEMTAMTES QUE NO ESTAN EN RERRESENTAMES  17

SELECT tra.C_Nro_Expediente,
       LTRIM(RTRIM(tra.c_Nombre_Representante_AT)) as c_Nombre_Representante_AT,
       tra.N_Codigo_Subadm_Tri FROM TSS_RECURSOS_ALZADA tra
WHERE LTRIM(RTRIM(tra.c_Nombre_Representante_AT)) NOT IN
(SELECT DISTINCT rat.c_nombre_representante
FROM TSS_REPRESENTANTES_AT rat
INNER JOIN TSS_RECURSOS_ALZADA ra ON
    (LTRIM(RTRIM(rat.c_nombre_representante)) = LTRIM(RTRIM(ra.c_Nombre_Representante_AT))
        AND ra.N_Codigo_Subadm_Tri=rat.N_Codigo_Subadm_Tri)
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
AND LEN(LTRIM(RTRIM(ra.c_Nombre_Representante_AT))) > 1)
AND (tra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR tra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')
AND LEN(LTRIM(RTRIM(tra.c_Nombre_Representante_AT))) > 1
ORDER BY tra.C_Nro_Expediente;
