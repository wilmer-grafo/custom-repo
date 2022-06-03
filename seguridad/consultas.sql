-- EXCEPT
-- consultar TSS_FUNCIONARIOS y obtener todos los resultados únicos
-- que no existen en la consulta sobre la tabla TSS_RECURSOS_ALZADA
--=================================================================================================================--
SELECT fun.test + ','
FROM (SELECT LTRIM(RTRIM(C_Login)) AS test
      FROM [dbo].[TSS_FUNCIONARIOS]
      GROUP BY LTRIM(RTRIM(C_Login))) AS fun
    EXCEPT
SELECT temp.test + ','
FROM (SELECT LTRIM(RTRIM(C_Usuario)) AS test
      FROM TSS_RECURSOS_ALZADA
      GROUP BY LTRIM(RTRIM(C_Usuario))) AS temp;
--=================================================================================================================--

-- INTERSECT
-- consultar TSS_FUNCIONARIOS y obtener todos los resultados únicos
-- que también existen en la consulta sobre la tabla TSS_RECURSOS_ALZADA
--=================================================================================================================--
SELECT fun.test + ','
FROM (SELECT LTRIM(RTRIM(C_Login)) AS test
      FROM [dbo].[TSS_FUNCIONARIOS]
      GROUP BY LTRIM(RTRIM(C_Login))) AS fun
INTERSECT
SELECT temp.test + ','
FROM (SELECT LTRIM(RTRIM(C_Usuario)) AS test
      FROM TSS_RECURSOS_ALZADA
      GROUP BY LTRIM(RTRIM(C_Usuario))) AS temp;
--=================================================================================================================--

-- usuarios que no estan en funcionarios
SELECT temp.test + ','
FROM (SELECT LTRIM(RTRIM(C_Usuario)) AS test
      FROM TSS_RECURSOS_ALZADA
      GROUP BY LTRIM(RTRIM(C_Usuario))) AS temp
    EXCEPT
SELECT fun.test + ','
FROM (SELECT LTRIM(RTRIM(C_Login)) AS test
      FROM [dbo].[TSS_FUNCIONARIOS]
      GROUP BY LTRIM(RTRIM(C_Login))) AS fun;
--=================================================================================================================--
--bchura si, gperales no, gyanique no, mchavez no, rosinaga no
select *
from TSS_RECURSOS_ALZADA
where LTRIM(RTRIM(C_Usuario)) like 'casturizagas%';

select *
from TSS_FUNCIONARIOS
where LTRIM(RTRIM(C_Login)) like 'vcampero%';

SELECT LTRIM(RTRIM(C_Usuario)), count(C_Usuario)
FROM TSS_RECURSOS_ALZADA
where LTRIM(RTRIM(C_Usuario)) NOT IN
('pfuentes',
'rguachalla',
'vcampero')
    group by LTRIM(RTRIM(C_Usuario))


-- sdsd
SELECT N_Codigo_Acto AS id_tipo_acto,
       C_Numero      AS numero_acto,
       NULL          AS cite_acto,

FROM TSS_ACTOS_IMPUGNADOS;

var usuariosPostgres = [];
var usuariosInterseccion = [];
var diferencia = usuariosInterseccion.filter(e => usuariosPostgres.indexOf(e) === -1);
