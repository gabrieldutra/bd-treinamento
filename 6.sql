-- 6. Selecione o nome e o sobrenome dos empregados que trabalham em departamentos com 6
-- empregados.
SELECT E.nm_empregado AS nome,
       E.nm_sobrenome AS sobrenome
FROM empregado E
WHERE E.nu_depto IN (SELECT D.nu_depto
FROM departamento D
INNER JOIN empregado E ON (D.nu_depto = E.nu_depto)
GROUP BY D.nu_depto
HAVING COUNT(DISTINCT E.nu_empregado) = 6);

-- Expected Output

-- "Elizabeth Barbara";"Jones"
-- "Robert";"Smith"
-- "Allan";"White"
-- "Gordon";"Reid"
-- "Claire";"MacCallan"
-- "Brian Charles";"Murphy"
-- "Luke";"Kennedy"
-- "Lynn";"Grant"
-- "Elizabeth";"MacDonald"
-- "Shirley";"MacDugle"
-- "Chris";"Douglas"
-- "Malcolm";"Christie"

-- Output

--        nome        | sobrenome 
-- -------------------+-----------
--  Elizabeth Barbara | Jones
--  Robert            | Smith
--  Allan             | White
--  Gordon            | Reid
--  Claire            | MacCallan
--  Brian Charles     | Murphy
--  Luke              | Kennedy
--  Lynn              | Grant
--  Elizabeth         | MacDonald
--  Shirley           | MacDugle
--  Chris             | Douglas
--  Malcolm           | Christie
