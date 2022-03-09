SELECT c.cancao_titulo AS cancao, 
COUNT(h.cancao_id) AS reproducoes  
FROM SpotifyClone.historico AS h 
INNER JOIN SpotifyClone.cancoes AS c
ON h.cancao_id = c.cancao_id
GROUP BY c.cancao_titulo
ORDER BY reproducoes DESC, cancao
LIMIT 2;