SELECT 
    distinct c.name AS artista, 
    a.name AS album,
    count(user_id) AS seguidores
  FROM SpotifyClone.following b
  INNER JOIN SpotifyClone.albums a ON a.artist_id = b.artist_id
  INNER JOIN SpotifyClone.artists c ON c.id = a.artist_id
  group by album, artista
  ORDER BY seguidores desc, artista asc, album asc;

  -- a = album
  -- b = following
  -- c = artist