-- truncar la tabla y reiniciar la sequencia
TRUNCATE TABLE seguridad.seg_personas RESTART IDENTITY CASCADE;

-- funcionarios con logins
--=================================================================================================================--
SELECT temp.Logins, temp.C_Nombre, temp.C_Apellido_Paterno, temp.C_Apellido_Materno
FROM (SELECT tf.C_Nombre,
             tf.C_Apellido_Paterno,
             tf.C_Apellido_Materno,
             STUFF(
                     (SELECT C_Login + ','
                      FROM TSS_FUNCIONARIOS
                      WHERE (C_Nombre = tf.C_Nombre AND C_Apellido_Paterno = tf.C_Apellido_Paterno AND
                             C_Apellido_Materno = tf.C_Apellido_Materno)
                      FOR XML PATH (''))
                 , 1, 0, '') AS Logins
      FROM TSS_FUNCIONARIOS AS tf
      GROUP BY tf.C_Nombre, tf.C_Apellido_Paterno, tf.C_Apellido_Materno) AS temp
ORDER BY temp.C_Nombre, temp.C_Apellido_Paterno, temp.C_Apellido_Materno;
--=================================================================================================================--

-- ver la sequencia
--=================================================================================================================--
SELECT (SELECT ISNULL(MAX(N_Codigo_Funcionario) + 1, 1)
        FROM [TSS_FUNCIONARIOS]
        WHERE N_Codigo_Funcionario < md.N_Codigo_Funcionario) AS [de],
       md.N_Codigo_Funcionario - 1                        AS [hasta]
FROM [TSS_FUNCIONARIOS] md
WHERE md.N_Codigo_Funcionario != 1
  AND NOT EXISTS(
        SELECT 1 FROM [TSS_FUNCIONARIOS] md2 WHERE md2.N_Codigo_Funcionario = md.N_Codigo_Funcionario - 1);
--=================================================================================================================--

--=================================================================================================================--
SELECT LTRIM(RTRIM(tf.C_Nombre)) AS C_Nombre,
       LTRIM(RTRIM(tf.C_Apellido_Paterno)) AS C_Apellido_Paterno,
       LTRIM(RTRIM(tf.C_Apellido_Materno)) AS C_Apellido_Materno,
       LTRIM(RTRIM(tf.C_Login)) AS C_Login
FROM TSS_FUNCIONARIOS AS tf
GROUP BY LTRIM(RTRIM(tf.C_Nombre)), LTRIM(RTRIM(tf.C_Apellido_Paterno)), LTRIM(RTRIM(tf.C_Apellido_Materno)),
         LTRIM(RTRIM(tf.C_Login));
--=================================================================================================================--



SELECT LTRIM(RTRIM(tf.C_Nombre)) AS C_Nombre,
       LTRIM(RTRIM(tf.C_Apellido_Paterno)) AS C_Apellido_Paterno,
       LTRIM(RTRIM(tf.C_Apellido_Materno)) AS C_Apellido_Materno,
       LTRIM(RTRIM(tf.C_Login)) AS C_Login,
       tf.D_Fecha_Update
FROM TSS_FUNCIONARIOS AS tf
GROUP BY LTRIM(RTRIM(tf.C_Nombre)), LTRIM(RTRIM(tf.C_Apellido_Paterno)), LTRIM(RTRIM(tf.C_Apellido_Materno)),
         LTRIM(RTRIM(tf.C_Login)), tf.D_Fecha_Update
ORDER BY tf.D_Fecha_Update;



-- NUEVO CONSULTA

SELECT te.nombres,
       ap_paterno,
       ap_materno,
       ci,
       sexo,
       telefono,
       num_celular,
       email,
       fecha_nacimiento,
       zona_domicilio,
       calle_domicilio,
       numero_domicilio,
       ruta_fotografia,
       id_region,
       id_cargo,
       id_usuario_registra,
       fecha_registra,
       id_usuario_modifica,
       fecha_modifica,
       activo
FROM (SELECT TOP 48 UPPER(LTRIM(RTRIM([C_Nombre])))           AS nombres,
                    UPPER(LTRIM(RTRIM([C_Apellido_Paterno]))) AS ap_paterno,
                    UPPER(LTRIM(RTRIM([C_Apellido_Materno]))) AS ap_materno,
                    NULL                                      AS ci,
                    1                                         AS sexo,
                    NULL                                      AS telefono,
                    NULL                                      AS num_celular,
                    LTRIM(RTRIM(C_Login)) + '@ait.gob.bo'     AS email,
                    LTRIM(RTRIM(C_Login))                     AS C_Login,
                    NULL                                      AS fecha_nacimiento,
                    NULL                                      AS zona_domicilio,
                    NULL                                      AS calle_domicilio,
                    NULL                                      AS numero_domicilio,
                    NULL                                      AS ruta_fotografia,
                    (CASE
                         WHEN ([N_Codigo_Oficina] = 0 AND [N_Codigo_Reg_Int] = 0) THEN 10
                         WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 1) THEN 5
                         WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 2) THEN 6
                         WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 3) THEN 7
                         WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 4) THEN 8
                         WHEN ([N_Codigo_Oficina] = 1 AND [N_Codigo_Reg_Int] = 5) THEN 9
                         WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 1) THEN 1
                         WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 2) THEN 2
                         WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 3) THEN 3
                         WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 4) THEN 4
                         WHEN ([N_Codigo_Oficina] = 2 AND [N_Codigo_Reg_Int] = 5) THEN 9
                         ELSE -1
                        END)                                  AS id_region,
                    9                                         AS id_cargo,
                    1                                            id_usuario_registra,
                    GETDATE()                                 AS fecha_registra,
                    NULL                                      AS id_usuario_modifica,
                    NULL                                      AS fecha_modifica,
                    [C_Estado]                                AS activo,
                    N_Codigo_Funcionario
      FROM TSS_FUNCIONARIOS
      ORDER BY N_Codigo_Funcionario DESC)
         AS te
WHERE LTRIM(RTRIM(te.C_Login)) NOT IN (
                                       'eamadore', 'aestivarizu', 'cmoras', 'pcondes', 'rquispech',
                                       'ebosquev', 'jaramayop', 'wvaldezr', 'elanchipas', 'facebeyg',
                                       'averas', 'mgemior', 'esuarezr', 'ratahuichiz', 'jcmendoza',
                                       'jagredas', 'cvallea', 'japazah', 'cmorams', 'emoralesofi',
                                       'gcoimbrap', 'emoralesc', 'dcontrerasr', 'consulta', 'klopezsc',
                                       'ccorsr'
    )
ORDER BY te.N_Codigo_Funcionario;


