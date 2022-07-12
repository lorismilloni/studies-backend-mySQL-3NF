SELECT COUNT(b.user_id)
    AS quantidade_musicas_no_historico
    FROM SpotifyClone.playback_history b
  INNER JOIN SpotifyClone.users a ON a.id = b.user_id
  WHERE name = 'Bill';