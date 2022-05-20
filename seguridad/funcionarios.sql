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
SELECT LTRIM(RTRIM(tf.C_Nombre)),
       LTRIM(RTRIM(tf.C_Apellido_Paterno)),
       LTRIM(RTRIM(tf.C_Apellido_Materno)),
       LTRIM(RTRIM(tf.C_Login))
FROM TSS_FUNCIONARIOS AS tf
GROUP BY LTRIM(RTRIM(tf.C_Nombre)), LTRIM(RTRIM(tf.C_Apellido_Paterno)), LTRIM(RTRIM(tf.C_Apellido_Materno)),
         LTRIM(RTRIM(tf.C_Login));
--=================================================================================================================--
