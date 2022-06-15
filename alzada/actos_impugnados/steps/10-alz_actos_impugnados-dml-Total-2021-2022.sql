SELECT COUNT(C_Nro_Expediente) AS countBEN
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countCBA
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countCHQ
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CHQ-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CHQ-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countLPZ
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-LPZ-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-LPZ-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countORU
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countPND
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-PND-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-PND-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countPTS
FROM TSS_ACTOS_IMPUGNADOS AS ra
WHERE (ra.C_Nro_Expediente LIKE 'ARIT-PTS-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-PTS-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countSCZ
FROM TSS_ACTOS_IMPUGNADOS
WHERE (C_Nro_Expediente LIKE 'ARIT-SCZ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-SCZ-%/2022%');

SELECT COUNT(C_Nro_Expediente) AS countTJA
FROM TSS_ACTOS_IMPUGNADOS
WHERE (C_Nro_Expediente LIKE 'ARIT-TJA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-TJA-%/2022%');

SELECT (SELECT COUNT(C_Nro_Expediente) AS countBEN
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-BEN-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countCBA
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CBA-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countCHQ
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-CHQ-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-CHQ-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countLPZ
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-LPZ-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-LPZ-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countORU
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-ORU-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-ORU-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countPND
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-PND-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-PND-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countPTS
        FROM TSS_ACTOS_IMPUGNADOS AS ra
        WHERE (ra.C_Nro_Expediente LIKE 'ARIT-PTS-%/2021%' OR ra.C_Nro_Expediente LIKE 'ARIT-PTS-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countSCZ
        FROM TSS_ACTOS_IMPUGNADOS
        WHERE (C_Nro_Expediente LIKE 'ARIT-SCZ-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-SCZ-%/2022%')) +
       (SELECT COUNT(C_Nro_Expediente) AS countTJA
        FROM TSS_ACTOS_IMPUGNADOS
        WHERE (C_Nro_Expediente LIKE 'ARIT-TJA-%/2021%' OR C_Nro_Expediente LIKE 'ARIT-TJA-%/2022%')) AS total;
