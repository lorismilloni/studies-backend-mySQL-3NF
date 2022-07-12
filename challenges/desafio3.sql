SELECT 
	a.name AS usuario,
	COUNT(b.user_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(seconds_length/60), 2) AS total_minutos
FROM SpotifyClone.playback_history b
INNER JOIN SpotifyClone.users a ON b.user_id = a.id
INNER JOIN SpotifyClone.songs c ON c.id = b.song_id
GROUP BY b.user_id
ORDER BY usuario

-- a = name e id from users
-- b = playback history infos
-- c = songs infos