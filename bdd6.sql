SELECT t.name, COUNT(*) AS nb_teammate
FROM team AS t
JOIN player AS p ON p.team_id = t.id
JOIN wizard AS w on w.id = p.wizard_id
GROUP BY t.id
ORDER BY nb_teammate DESC;
 
SELECT t.name, COUNT(*) AS nb_teammate
FROM team AS t
JOIN player AS p ON p.team_id = t.id
JOIN wizard AS w on w.id = p.wizard_id
GROUP BY t.id
HAVING nb_teammate >= 14;
 
SELECT * FROM player AS p
JOIN wizard AS w ON w.id = p.wizard_id
JOIN team AS t ON t.id = p.team_id
WHERE DAYOFWEEK(enrollment_date) = 2 AND t.name = 'Gryffindor'
ORDER BY enrollment_date ASC;
