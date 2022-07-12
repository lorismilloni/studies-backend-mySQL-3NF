SELECT
	artists.name AS `artista`,
	albums.name AS `album`
  FROM SpotifyClone.albums AS albums
  JOIN SpotifyClone.artists AS artists
	ON albums.artist_id = artists.id
  WHERE artists.name = 'Walter Phoenix'
  ORDER BY albums.name;