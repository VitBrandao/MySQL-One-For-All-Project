SELECT COUNT(DISTINCT c.cancao_titulo) AS cancoes,
COUNT(DISTINCT art.artista_nome) AS artistas,
COUNT(DISTINCT alb.album_titulo) AS albuns 
FROM SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.cancoes AS c
ON alb.album_id = c.album_id
INNER JOIN SpotifyClone.artistas AS art
ON alb.artista_id = art.artista_id;