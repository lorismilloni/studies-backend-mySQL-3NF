SELECT  
	b.name AS nome, 
	COUNT(a.song_id) AS reproducoes
  FROM SpotifyClone.playback_history a
  INNER JOIN SpotifyClone.songs b ON b.id = a.song_id
  INNER JOIN SpotifyClone.users c ON c.id = a.user_id
  INNER JOIN SpotifyClone.subscription d ON d.id = c.subscription_id
  WHERE plan = 'gratuito' OR plan = 'pessoal'
  GROUP BY b.name;

-- a playback history
-- b songs
-- c users
-- d subscription