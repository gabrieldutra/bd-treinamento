-- 4. Selecione o nome do departamento e a quantidade de empregados por departamento,
-- apresentando o resultado em ordem crescente de nome de departamento.
SELECT D.nm_depto AS departamento,
       COUNT(DISTINCT E.nu_empregado) AS empregados
FROM departamento D
LEFT JOIN empregado E ON (E.nu_depto =  D.nu_depto)
GROUP BY D.nu_depto
ORDER BY departamento;
-- Expected Output

-- "accounts";6
-- "administration";7
-- "communications";5
-- "engineering";6
-- "software design";8

-- Output

--   departamento   | empregados 
-- -----------------+------------
--  accounts        |          6
--  administration  |          7
--  communications  |          5
--  engineering     |          6
--  software design |          8