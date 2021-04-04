CREATE OR REPLACE VIEW random_data AS
WITH RECURSIVE sequence AS (
  SELECT 1 AS level
  UNION ALL
  SELECT level + 1 AS value FROM sequence WHERE sequence.level < 1000
)
SELECT LEVEL,
CONCAT(SUBSTRING(MD5(UUID()), 1, 5 + rand()*10) , '@mail.com') email1,
CONCAT(SUBSTRING(MD5(UUID()), 1, 5 + rand()*10), '@', SUBSTRING(MD5(UUID()), 1, 3 + rand()*5), '.com') email2,
REGEXP_REPLACE(CONCAT(SUBSTRING(MD5(UUID()), 1, 20 + rand()*20) , '@mail.com'), '\\d', '') email3, -- only characters
concat('+', FLOOR(rand() * 100), ' ', FLOOR(rand() * 1000), ' ', FLOOR(rand() * 1000), ' ', FLOOR(rand() * 10000)) phone1,
concat(FLOOR(rand() * 1000000000000)) phone2, -- only numbers
REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '') str1, -- chars a..f
REGEXP_REPLACE(MAKE_SET(rand()*9999999999999999,
'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
), ',', '') str2, -- all chars
date_add(now(), INTERVAL rand() * 999999999 SECOND) date_future,
date_add(now(), INTERVAL - rand() * 999999999 SECOND) date_past, 
date_add(now(), INTERVAL - rand() * 999999999 - 14 * 365.25 * 24 * 3600 SECOND) date_past_older_14
FROM sequence;

SELECT * FROM random_data;