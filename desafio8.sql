SELECT art.artista_nome AS artista,
alb.album_titulo AS album
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb
ON art.artista_id = alb.artista_id
WHERE art.artista_nome ='Walter Phoenix';