-- 11.Selecione o curso com maior número de alunos. Apresente o nome do curso e o número de
-- alunos, renomeando os atributos.
SELECT C.nm_curso AS curso,
       COUNT(DISTINCT EC.nu_empregado) AS alunos
FROM curso C
LEFT JOIN empregado_curso EC ON (EC.nu_curso = C.nu_curso)
GROUP BY C.nu_curso
HAVING COUNT(DISTINCT EC.nu_empregado) = (SELECT MAX(AL.alunos) FROM (SELECT COUNT(DISTINCT EC.nu_empregado) AS alunos
FROM curso C
LEFT JOIN empregado_curso EC ON (EC.nu_curso = C.nu_curso)
GROUP BY C.nu_curso) AL) 
ORDER BY alunos DESC;

-- Expected Output
-- "Introduction To Ingres";3
-- "Ada";3

-- Output
--          curso          | alunos 
-- ------------------------+--------
--  Ada                    |      3
--  Introduction To Ingres |      3
