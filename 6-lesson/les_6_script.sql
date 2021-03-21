/*
 *  
 * Создать и заполнить таблицы лайков и постов.
 * Выполнил в целом по скрипту, вопросов и непониманий не было.
 *  
 */

/*
 *  
 * Создать все необходимые внешние ключи и диаграмму отношений.
 * 
 *  
 */

-- Добавляем внешние ключи
-- ON DELETE CASCADE удалить связанные
-- ON DELETE SET NULL если удаляем то в связях меняем на null
-- если не указываем, то не удалить пока есть связи

ALTER TABLE profiles
  ADD CONSTRAINT profiles_fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE, -- удаление данных пользователя, если его удалили-удалился из системы
  ADD CONSTRAINT profiles_fk_gender_id
    FOREIGN KEY (gender_id) REFERENCES gender(id), -- не удалить пока где то используется
  ADD CONSTRAINT profiles_fk_user_status_id
    FOREIGN KEY (user_status_id) REFERENCES user_statuses(id) ON DELETE SET NULL, -- если удалили в справочнике "статус" то меняем на пусто   
  ADD CONSTRAINT profiles_fk_photo_id
    FOREIGN KEY (photo_id) REFERENCES media(id) ON DELETE SET NULL; -- если удаляем файл из базы, убрать с аватара (если не пройдет цензуру)

    -- появилась мысль, что должно быть понимание, пользователь создатель или модератор данный участник в группе.
ALTER TABLE communities_users
  ADD CONSTRAINT comm_users_fk_comm_id
    FOREIGN KEY (community_id) REFERENCES communities(id) ON DELETE CASCADE, -- если удалилась группа, удаляем связь с пользователем
  ADD CONSTRAINT comm_users_fk_user_id
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE -- если удалился пользователь, удаляем связь с группой
 ;
     
-- Для таблицы сообщений

-- Смотрим структуру таблицы
DESC messages;

-- Добавляем внешние ключи
ALTER TABLE messages
  ADD CONSTRAINT messages_fk_from_user_id 
    FOREIGN KEY (from_user_id) REFERENCES users(id),
  ADD CONSTRAINT messages_fk_to_user_id 
    FOREIGN KEY (to_user_id) REFERENCES users(id); 
-- оставил без настроки, 
-- если ON DELETE CASCADE то удалился 1 из 2 пользователей - история сообщений удаляется. 
-- если ставить настройку ON DELETE SET NULL, то ошибка т.к. не может быть пустым. Как тогда сохранять историю сообщений?

   
ALTER TABLE friendship 
   	ADD constraint friendship_fk_from_user_id
   		FOREIGN KEY (user_id) REFERENCES users(id),
   	ADD constraint friendship_fk_to_user_id
	   		FOREIGN KEY (friend_id) REFERENCES users(id),
   	ADD constraint friendship_fk_status_id
   		FOREIGN KEY (status_id) REFERENCES friendship_statuses(id);
   	
   	
ALTER TABLE likes 
   	ADD constraint likes_fk_from_user_id
   		FOREIGN KEY (user_id) REFERENCES users(id),
   	ADD constraint likes_fk_from_target_type_id
   		FOREIGN KEY (target_type_id) REFERENCES target_types(id);
 -- связь с target_id не настроить, может смотреть на несколько таблиц сразу. в чате решили что это делаем тригерами, разберем позже.

ALTER TABLE media 
	add constraint media_fk_user_id
		foreign key (user_id) references users(id),
	add constraint media_fk_media_types_id
		foreign key (media_type_id) references media_types(id);
	
ALTER TABLE posts 
	ADD CONSTRAINT posts_fk_user_id
		FOREIGN KEY (user_id) REFERENCES users(id),
	ADD CONSTRAINT post_fk_com_id
		FOREIGN KEY (community_id) REFERENCES communities(id);
   	   	
-- Если нужно удалить
ALTER TABLE table_name DROP FOREIGN KEY constraint_name;
ALTER TABLE vk.messages DROP FOREIGN KEY messages_fk_from_user_id;
ALTER TABLE vk.messages DROP FOREIGN KEY messages_fk_to_user_id;



/*
 *  
 * Определить кто больше поставил лайков (всего) - мужчины или женщины?
 * Победили Мужчины 24/16
 *  
 */

-- подсчет лайков М\Ж. очень долго формировал подзапросы, даже не понял как и получилось. Определенно слабое понимание пока что.
SELECT (SELECT (SELECT gender_info from gender g where g.id=p.gender_id)  from profiles p where p.user_id =l.user_id ) AS gender , COUNT(like_type) AS likes
from likes l 
where like_type = '1'
GROUP by like_type, gender 
;



/*
 *  
 * Подсчитать количество лайков которые получили 10 самых молодых пользователей.
 * 
 *  
 */

-- всего лайков у пользователей 7
SELECT *from likes l2 
where like_type = 1
AND target_type_id =2;

-- топ 10 пользователей. у кого хотя бы 1 лайк, по возрасту. Если показать только топ 10 по возрастанию, то убрать условие больше нуля и будет топ молодых но без лайков =)
SELECT user_id ,first_name , last_name ,birthday, COUNT((SELECT user_id from likes l3 where p.user_id =l3.target_id and like_type = 1 and target_type_id=2)) as likesCount
from profiles p 
group by user_id ,first_name , last_name ,birthday
having likesCount > 0 
 order by birthday DESC  limit 10
;



/*
 *  
 * Найти 10 пользователей, которые проявляют наименьшую активность в использовании социальной сети (критерии активности необходимо определить самостоятельно).
 * 
 *  
 */


-- 1 показатель. дата последнего обновления информации в профиле (дата последней авторизации в систему)
select * from users u 
order by updated_at limit 10;

-- 2 показатель. Меньше всего поставленных лайков
select user_id, first_name , last_name ,  (select COUNT(user_id) from likes l where l.user_id = p.user_id) AS countLD
from profiles p 
GROUP by user_id, first_name , last_name
order by countLD ;

-- 3 меньше всего загружено файлов. Но тут каждый загрузил по 1 файлу
select user_id, first_name , last_name ,  (select COUNT(user_id) from media m where m.user_id = p.user_id) AS countM
from profiles p 
GROUP by user_id, first_name , last_name
order by p.user_id limit 10;

-- 4 список у кого нет аватара, отсортирован по дате создания
select first_name , last_name, photo_id, created_at, updated_at from profiles p
where photo_id is NULL 
order by created_at 
