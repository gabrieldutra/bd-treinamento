-- 2. Selecione o nome e sobrenome dos empregados
-- que fzeram os cursos de “Ada” ou “LANs”,
-- renomeando os atributos para
-- “NomeEmpregado” e “SobrenomeEmpregado”.
SELECT E.nm_empregado AS NomeEmpregado,
       E.nm_sobrenome AS SobrenomeEmpregado
FROM empregado E
WHERE EXISTS(SELECT 1 FROM empregado_curso EC
             INNER JOIN curso C ON (C.nu_curso = EC.nu_curso)
             WHERE EC.nu_empregado = E.nu_empregado AND C.nm_curso IN ('Ada', 'LANs'));
-- Expected Output
-- 
-- "Jack";"West"
-- "Ester";"Allen"
-- "Audrey";"Cowan"
-- "Robert";"Roberts"
-- Output
-- 
--  nomeempregado | sobrenomeempregado 
-- ---------------+--------------------
--  Jack          | West
--  Ester         | Allen
--  Robert        | Roberts
--  Audrey        | Cowan