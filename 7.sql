-- 7. Selecione o nome e sobrenome dos empregados que ocuparam um cargo por 3 anos.
SELECT nm_empregado AS nome,
       nm_sobrenome AS sobrenome
FROM empregado
WHERE nu_empregado IN
(SELECT nu_empregado
FROM historico_emprego
WHERE (DATE_PART('year', dt_fim) - DATE_PART('year', dt_inicio)) > 3);

-- Expected Output

-- "Robert";"Roberts"
-- "Luke";"Kennedy"
-- "Elizabeth Barbara";"Jones"
-- "Brian Charles";"Murphy"
-- "Shirley";"MacDugle"
-- "Lynn";"Grant"
-- "John David";"Stevenson"
-- "Ester";"Allen"
-- "William";"Dickson"
-- "James";"Murray"
-- "Chris";"Douglas"
-- "Matthew";"Brownlie"
-- "Audrey";"Cowan"
-- "Elizabeth";"MacDonald"
-- "David Andrew";"Robertson"
-- "Liza";"Brunell"
-- "Allan";"Robinson"
-- "James";"Gibson"
-- "Todd James";"South"
-- "Robert";"Smith"
-- "Audrey Mary";"Wright"

-- Output

--        nome        | sobrenome 
-- -------------------+-----------
--  Elizabeth Barbara | Jones
--  Robert            | Smith
--  Brian Charles     | Murphy
--  James             | Gibson
--  Audrey Mary       | Wright
--  Todd James        | South
--  Ester             | Allen
--  Liza              | Brunell
--  David Andrew      | Robertson
--  Allan             | Robinson
--  Robert            | Roberts
--  James             | Murray
--  Audrey            | Cowan
--  John David        | Stevenson
--  William           | Dickson
--  Luke              | Kennedy
--  Lynn              | Grant
--  Elizabeth         | MacDonald
--  Shirley           | MacDugle
--  Chris             | Douglas