-- list colleges:
SELECT DISTINCT college
FROM player_bios;

-- actually count colleges
SELECT count(DISTINCT college)
FROM player_bios;