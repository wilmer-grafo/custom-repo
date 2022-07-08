select login, id_persona
from seguridad.seg_usuarios
where login in (
    )
order by login;

CONTROL TIEMPO
SELECT DISTINCT origen, 1 As d
FROM control_tiempo
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY origen;

SELECT DISTINCT destino, 1 As d
FROM control_tiempo
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY destino;


MEMORIALES
SELECT DISTINCT usuario_reg, 1 As d
FROM reg_memorial
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY usuario_reg;

CONTROL TIEMPO ACLARACION
SELECT DISTINCT origen, 1 As d
FROM control_tiempo_aclaracion
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-LPZ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-LPZ-%/2022%')
ORDER BY origen;

SELECT DISTINCT destino, 1 As d
FROM control_tiempo_aclaracion
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-LPZ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-LPZ-%/2022%')
ORDER BY destino;

SOLICITA CAMBIO DECISION
------------------------
SELECT DISTINCT u_solicita, 1 As d
FROM solicita_cambio_decision
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY u_solicita;

SELECT DISTINCT nueva_decision
FROM solicita_cambio_decision
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY nueva_decision;

SELECT DISTINCT u_aprueba_rechaza, 1 As d
FROM solicita_cambio_decision
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY u_aprueba_rechaza;

SOLICITA EXCUSA
---------------
SELECT DISTINCT u_solicita, 1 As d
FROM solicitud_excusa
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY u_solicita;

SOLICITA AMPLIACION
-------------------
SELECT DISTINCT u_solicita, 1 As d
FROM solicitud_ampliacion
WHERE (LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2021%' OR
       LTRIM(RTRIM(id_exp)) LIKE 'ARIT-CHQ-%/2022%')
ORDER BY u_solicita;

s