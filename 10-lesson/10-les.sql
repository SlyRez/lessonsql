-- Урок 10

-- Триггеры, хранимые процедуры и функции на БД vk
-- Создание триггера для обработки target_id
-- Сначала создадим функцию для проверки существования строки
-- с идентификатором target_id в соответствующей таблице

USE vk;

DROP FUNCTION IF EXISTS row_exists;

CREATE FUNCTION row_exists(target_id INT, target_type_id INT)
RETURNS BOOLEAN READS SQL DATA
BEGIN
  DECLARE table_name VARCHAR(50);
  SELECT name INTO table_name FROM target_types WHERE id = target_type_id;
  CASE table_name
    WHEN 'messages' THEN
      RETURN EXISTS(SELECT 1 FROM messages WHERE id = target_id);
    WHEN 'users' THEN 
      RETURN EXISTS(SELECT 1 FROM users WHERE id = target_id);
    WHEN 'media' THEN
      RETURN EXISTS(SELECT 1 FROM media WHERE id = target_id);
    WHEN 'posts' THEN
      RETURN EXISTS(SELECT 1 FROM posts WHERE id = target_id);
    ELSE 
      RETURN FALSE;
  END CASE;
END;

-- Проверим работу функции
SELECT * FROM target_types;
SELECT * FROM messages;

SELECT row_exists(1, 1);    -- Сообщение с id=1
SELECT row_exists(1000, 1); -- Отсутствует сообщение с id=1000 
SELECT row_exists(1, 5);    -- Отсутствует target_type с id=5  

-- Создадим триггер для проверки валидности target_id и target_type_id
DROP TRIGGER IF EXISTS likes_validation;

CREATE TRIGGER likes_validation BEFORE INSERT ON likes FOR EACH ROW
BEGIN
  IF !row_exists(NEW.target_id, NEW.target_type_id) THEN
    SIGNAL SQLSTATE "45000"
    SET MESSAGE_TEXT = "Error adding like! Target table doesn't contain row id provided!";
  END IF;
END;

SHOW triggers

-- Проверим работу триггера
INSERT INTO likes (user_id, target_id, target_type_id, like_type) VALUES (35, 50, 2, 1);
INSERT INTO likes (user_id, target_id, target_type_id, like_type) VALUES (35, 50, 5, 1);
INSERT INTO likes (user_id, target_id, target_type_id, like_type) VALUES (35, 1000, 1, 1);

-- Просмотр функций и процедур
SHOW FUNCTION STATUS LIKE '%';
SHOW FUNCTION STATUS LIKE 'row_exists';
SHOW CREATE FUNCTION row_exists;

SHOW PROCEDURE STATUS LIKE '%';
SHOW CREATE PROCEDURE sys.ps_truncate_all_tables;

-- Индексы
EXPLAIN ANALYZE
SELECT * FROM profiles
WHERE first_name = 'Adrien';

-- Создадим индекс на таблице profiles(first_name) и проверим план запроса
-- DROP INDEX profiles_first_name_idx ON profiles;
CREATE INDEX profiles_first_name_idx ON profiles(first_name);

-- Создадим уникальный индекс на таблице target_types(name)
-- -
SELECT * FROM target_types;
-- DROP INDEX target_types_name_idx ON target_types;
CREATE UNIQUE INDEX target_types_name_idx ON target_types(name);

-- Создадим уникальный составной индекс на таблице likes(user_id, target_id, target_type_id)
ALTER TABLE likes DROP INDEX likes_u_t_tt_idx;
CREATE UNIQUE INDEX likes_u_t_tt_idx ON likes(user_id, target_id, target_type_id);

-- Проверка работы уникальности индекса
-- Повторная вставка таких же значений вызовет ошибку
INSERT INTO likes (user_id, target_id, target_type_id, like_type) VALUES (35, 50, 2, 1);
SELECT * FROM likes l ORDER BY id DESC;

-- Индексы неявно создаются при создании PK, FK


-- Оконные функции (Window Functions) 

-- Найти сколько занимают места медиафайлы в разрезе типов в процентном соотношении

SELECT * FROM media_types;

-- Традиционный способ с помощью агрегатных функций
SELECT mt.name,
  SUM(m.size) AS total_by_type,
  (SELECT SUM(size) FROM media) AS total_size,
  SUM(m.size)/(SELECT SUM(size) FROM media) * 100 AS "%" 
FROM media m
JOIN media_types mt ON mt.id = m.media_type_id
GROUP BY m.media_type_id
ORDER BY name;

-- С помощью оконных функций
SELECT DISTINCT mt.name, 
  SUM(m.size) OVER (PARTITION BY m.media_type_id) AS total_by_type,
  SUM(m.size) OVER () AS total_size,
  SUM(m.size) OVER (PARTITION BY m.media_type_id) / SUM(m.size) OVER() * 100 AS "%"
FROM media m
JOIN media_types mt ON mt.id = m.media_type_id
ORDER BY name;

-- Расширяем вывод
SELECT DISTINCT mt.name,
  AVG(m.size) OVER(PARTITION BY m.media_type_id) AS avg_size,
  MIN(m.size) OVER(PARTITION BY m.media_type_id) AS min_size,
  MAX(m.size) OVER(PARTITION BY m.media_type_id) AS max_size,
  SUM(m.size) OVER(PARTITION BY m.media_type_id) AS total_by_type,
  SUM(m.size) OVER() AS total,
  SUM(m.size) OVER(PARTITION BY m.media_type_id) / SUM(m.size) OVER() * 100 AS "%"
FROM media m
JOIN media_types mt ON mt.id = m.media_type_id
ORDER BY name;

-- Выносим окно отдельно
SELECT DISTINCT mt.name,
  AVG(m.size) OVER w AS avg_size,
  MIN(m.size) OVER w AS min_size,
  MAX(m.size) OVER w AS max_size,
  SUM(m.size) OVER w AS total_by_type,
  SUM(m.size) OVER() AS total,
  SUM(m.size) OVER w / SUM(m.size) OVER() * 100 AS "%"
FROM media m
JOIN media_types mt ON mt.id = m.media_type_id
WINDOW w AS (PARTITION BY m.media_type_id)
ORDER BY name
;

-- Оконные функции не сворачивают вывод
-- Убираем DISTINCT
SELECT mt.name,
  AVG(m.size) OVER w AS avg_size,
  MIN(m.size) OVER w AS min_size,
  MAX(m.size) OVER w AS max_size,
  SUM(m.size) OVER w AS total_by_type,
  SUM(m.size) OVER() AS total,
  SUM(m.size) OVER w / SUM(m.size) OVER() * 100 AS "%"
FROM media m
JOIN media_types mt ON mt.id = m.media_type_id
WINDOW w AS (PARTITION BY m.media_type_id)
ORDER BY name
;

-- Применяем чистые оконные функции
SELECT user_id, concat(LEFT(birthday, 3), '0-е'), birthday FROM profiles ORDER BY 2, 3;

SELECT user_id, city, birthday,
  ROW_NUMBER() OVER w AS 'row_number',
  FIRST_VALUE(city) OVER w AS 'first_city',
  LAST_VALUE(city) OVER(PARTITION BY LEFT(birthday, 3)
    RANGE BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS 'last_city',
  NTH_VALUE(city, 2) OVER w AS 'second_city',
  NTH_VALUE(city, 3) OVER w AS 'third_city'
FROM profiles
WINDOW w AS (PARTITION BY LEFT(birthday, 3) ORDER BY birthday);

-- Практическое задание к уроку 10.
-- На БД vk:

-- 1. Проанализировать, какие запросы могут выполняться наиболее
-- часто в процессе работы приложения, и добавить необходимые индексы.

-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

-- 3. (по желанию) Задание на денормализацию
-- Разобраться как построен и работает следующий запрос(из ПЗ к уроку 8):
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

-- Derived Tables
-- https://dev.mysql.com/doc/refman/8.0/en/derived-tables.html

-- Common Table Expressions:
-- https://dev.mysql.com/doc/refman/8.0/en/with.html

-- Window Functions
-- https://dev.mysql.com/doc/refman/8.0/en/window-functions.html

-- Пример скрипта для генерации данных "вручную"
-- Можно создать данное представление или использовать его части для создания собственных запросов генерации
-- Также можно настроить параметры в самом view
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
