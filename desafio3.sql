SELECT u.usuario_nome AS usuario, 
COUNT(h.usuario_id) AS qtde_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.historico AS h
INNER JOIN SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.cancoes AS c
ON h.usuario_id = u.usuario_id AND h.cancao_id = c.cancao_id
GROUP BY usuario_nome
ORDER BY usuario_nome;
