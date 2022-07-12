SELECT name AS nome_musica,
    REPLACE (name, 'Her Own', 'Trybe') AS novo_nome
    FROM SpotifyClone.songs
    WHERE name = 'Dance With Her Own'
  UNION
  SELECT name, REPLACE (name, 'Silly', 'Nice')
    FROM SpotifyClone.songs
    WHERE name = "Let's Be Silly"
  UNION
  SELECT name, REPLACE (name, 'Circus', 'Pull Request')
    FROM SpotifyClone.songs
    WHERE name = 'Magic Circus'
    UNION
  SELECT name, REPLACE (name, 'Inner Fire', 'Project')
    FROM SpotifyClone.songs
    WHERE name = 'Troubles Of My Inner Fire'
  UNION
    SELECT name, REPLACE (name, 'Streets', 'Code Review')
    FROM SpotifyClone.songs
  WHERE name = 'Without My Streets';