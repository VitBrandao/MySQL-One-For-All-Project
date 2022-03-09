SELECT art.artista_nome AS artista,
alb.album_titulo AS album,
COUNT(seg.artista_id) AS seguidores
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
INNER JOIN SpotifyClone.seguindo AS seg
ON art.artista_id = alb.artista_id AND art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;