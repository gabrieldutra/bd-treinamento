-- 10.Selecione o nome dos cursos que ocorreram no mês de Outubro.
SELECT nm_curso
FROM curso
WHERE DATE_PART('month', dt_curso) = 10;

-- Expected Output

-- "More Administration"
-- "Taffic Flow Analysis"

-- Output

--        nm_curso       
-- ----------------------
--  More Administration
--  Taffic Flow Analysis
