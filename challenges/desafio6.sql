SELECT 
	MIN(price) AS faturamento_minimo,
	MAX(price) AS faturamento_maximo,
	ROUND(AVG(price), 2) AS faturamento_medio,
	SUM(price) AS faturamento_total
  FROM SpotifyClone.users a
  INNER JOIN SpotifyClone.subscription b ON b.id = a.subscription_id; 