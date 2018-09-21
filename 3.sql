-- 3. Selecione o nome dos cursos que tiveram até 10 empregados e apresente-os em ordem
-- decrescente.
SELECT C.nm_curso
FROM curso C
INNER JOIN empregado_curso EC ON (EC.nu_curso = C.nu_curso)
GROUP BY C.nu_curso
HAVING COUNT(DISTINCT EC.nu_empregado) < 10
ORDER BY C.nm_curso DESC;
-- Expected Output
-- 
-- "New Topologies"
-- "More Administration"
-- "LANs"
-- "Issues In Administration"
-- "Introduction To Ingres"
-- "Further Accounting"
-- "Basic Accounting"
-- "Ada"

-- Output

--          nm_curso         
-- --------------------------
--  New Topologies
--  More Administration
--  LANs
--  Issues In Administration
--  Introduction To Ingres
--  Further Accounting
--  Basic Accounting
--  Ada