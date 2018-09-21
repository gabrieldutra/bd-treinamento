-- 9. Selecione o nome dos cursos que não tiveram nenhum empregado.
SELECT C.nm_curso
FROM curso C
WHERE C.nu_curso NOT IN
(SELECT DISTINCT nu_curso FROM empregado_curso);

-- Expected Output

-- "Structural Stress Analysis"
-- "Taffic Flow Analysis"

-- Output

--           nm_curso          
-- ----------------------------
--  Structural Stress Analysis
--  Taffic Flow Analysis
