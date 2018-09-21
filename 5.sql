-- 5. Selecione o nome dos departamentos e a quantidade de empregados apenas para aqueles
-- que possuem mais de 6 empregados.
SELECT D.nm_depto AS departamento,
       COUNT(DISTINCT E.nu_empregado) AS empregados
FROM departamento D
LEFT JOIN empregado E ON (E.nu_depto =  D.nu_depto)
GROUP BY D.nu_depto
HAVING COUNT(DISTINCT E.nu_empregado) > 6
ORDER BY departamento;
-- Expected Output

-- "administration";7
-- "software design";8

-- Output

--   departamento   | empregados 
-- -----------------+------------
--  administration  |          7
--  software design |          8