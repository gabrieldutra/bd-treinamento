-- 1. Selecione o nome e sobrenome dos empregados
-- que já tiveram cargo “Accountant”.

SELECT E.nm_empregado, E.nm_sobrenome
FROM empregado E
WHERE EXISTS(SELECT 1 FROM historico_emprego H WHERE H.nu_empregado = E.nu_empregado AND H.nm_cargo = 'Accountant');

-- Expected Output
-- 
-- 1.

-- "Elizabeth Barbara";"Jones"
-- "Robert";"Smith"
-- "Allan";"White"
-- "Gordon";"Reid"
-- "Claire";"MacCallan"
-- "Brian Charles";"Murphy"
-- 
-- Output
-- 
--    nm_empregado    | nm_sobrenome 
-- -------------------+--------------
--  Elizabeth Barbara | Jones
--  Robert            | Smith
--  Allan             | White
--  Gordon            | Reid
--  Claire            | MacCallan
--  Brian Charles     | Murphy