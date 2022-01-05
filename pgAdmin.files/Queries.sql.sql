SELECT ch.id AS cardholder, t.date AS hour, t.amount
        FROM transaction AS t
        JOIN creditcard AS cc ON cc.card = t.card
        JOIN cardholder AS ch ON ch.id = cc.cardholder_id
        WHERE ch.id in (2, 18)
        ORDER BY hour
		
		
		
 SELECT date_part('month', t.date) AS month, date_part('day', t.date) as day, t.amount
        FROM transaction AS t
        JOIN creditcard AS cc ON cc.card = t.card
        JOIN cardholder AS ch ON ch.id = cc.cardholder_id
        WHERE ch.id = 25 AND date_part('month', t.date) <= 6
        ORDER BY month, day