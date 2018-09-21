-- 8. Selecione o nome, data de início e data fm dos cursos que ocorreram simultaneamente
-- (mesma data de início).
SELECT C.nm_curso AS nome,
       C.dt_curso AS data_curso
FROM curso C 
WHERE EXISTS(SELECT 1 FROM curso C2 WHERE C2.nu_curso <> C.nu_curso AND C.dt_curso = C2.dt_curso);

-- Expected Output

-- Output