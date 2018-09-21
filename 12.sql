-- 12.Selecione o nome e sobrenome dos 3 empregados mais velhos.
SELECT nm_empregado AS nome,
       nm_sobrenome AS sobrenome,
       date_part('year', age(NOW(), dt_nascimento)) AS idade
FROM empregado
ORDER BY age(NOW(),dt_nascimento) DESC
LIMIT 3;