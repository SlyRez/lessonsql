-- Практическое задание к уроку 10.
-- На БД vk:

-- 1. Проанализировать, какие запросы могут выполняться наиболее
-- часто в процессе работы приложения, и добавить необходимые индексы.

-- поиск по фамилии и имени. Отчетсво не стал брать, т.к. не увсех оно есть, возможно не следует нагружать систему?
CREATE INDEX profiles_first_name_last_name_idx ON profiles (first_name, last_name);
-- поиск по ФИО и дате рождения
CREATE INDEX profiles_first_name_last_name_birthday_idx ON profiles (first_name, last_name, birthday);
-- поиск "залитого" контента пользователем
CREATE INDEX media_user_id_media_type_id_idx ON media (user_id, media_type_id);  
-- просмотр друзей пользователя
CREATE INDEX friendship_user_id_friend_id_idx ON media (user_id, friend_id);
-- поиск по лайкам (кто лайкнул фото, статью, коммент...)
CREATE INDEX likes_user_id_target_id_target_type_id_ind ON likes (user_id, target_id, target_type_id);
-- поиск в истории сообщений с пользователем. Хотел еще добавить body но ругается что нельзя, как понял ограничение по кол-ву символов 
CREATE INDEX messages_from_user_id_to_user_id_created_at_idx ON messages (from_user_id, to_user_id, created_at);

-- вопросы:
-- 1.различаются ли индексы и внешние ключи? чем?
-- 2.при создании индекса, имеет ли значение в какой последовательности составлять? friendship_user_id_friend_id_idx или friendship_friend_id_user_id_idx
-- 3.как индексировать body в messages? Цель - оптимизация и ускорение поиска слова в истории переписки


-- 2. Задание на оконные функции
-- Построить запрос, который будет выводить следующие столбцы:
-- имя группы
-- среднее количество пользователей в группах
-- самый молодой пользователь в группе
-- самый старший пользователь в группе
-- общее количество пользователей в группе
-- всего пользователей в системе
-- отношение в процентах (общее количество пользователей в группе / всего пользователей в системе) * 100

SELECT DISTINCT 
	c.name, 
	AVG(p2.user_id) OVER (PARTITION by c.name) AS avg_group,
	MAX(p2.birthday)  OVER (PARTITION by c.name) AS min_age,
	MIN(p2.birthday)  OVER (PARTITION by c.name) AS max_age,
	COUNT(p2.user_id) OVER (PARTITION by c.name) AS total_gr,
	COUNT(p2.user_id) OVER () AS total,
	COUNT(p2.user_id) OVER (PARTITION by c.name) / COUNT(p2.user_id) OVER () * 100 AS "%"
from communities c 
join communities_users cu ON c.id = cu.community_id 
join users u ON u.id = cu.user_id 
join profiles p2 ON p2.user_id =u.id 
-- where c.id = 1
GROUP by c.name , p2.user_id
;






-- 3. (по желанию) Задание на денормализацию
-- Разобраться как построен и работает следующий запрос(из ПЗ к уроку 8):
-- Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети.

SELECT u.id,
  COUNT(DISTINCT ms.id) + 
  COUNT(DISTINCT l.id) +
  COUNT(DISTINCT me.id) AS activity 
FROM users u
LEFT JOIN messages ms ON u.id = ms.from_user_id
LEFT JOIN likes l ON u.id = l.user_id
LEFT JOIN media me ON u.id = me.user_id
GROUP BY u.id
ORDER BY activity
LIMIT 10;

