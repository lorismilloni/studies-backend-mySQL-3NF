SELECT 
	COUNT(a.id) AS reproducoes, 
	a.name AS cancao 
  FROM SpotifyClone.playback_history b
  INNER JOIN SpotifyClone.songs a ON b.song_id = a.id
  GROUP BY a.id
  ORDER BY reproducoes DESC, cancao ASC
  LIMIT 2;