SELECT 
	name AS usuario,
	IF (max((YEAR(last_played))) < 2021, 'Usuário inativo', 'Usuário ativo') AS condicao_usuario
  FROM SpotifyClone.playback_history a
  INNER JOIN SpotifyClone.users b ON b.id = a.user_id
  GROUP BY usuario
  ORDER BY usuario;