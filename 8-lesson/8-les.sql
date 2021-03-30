
/*
 *  
 * Определить кто больше поставил лайков (всего) - мужчины или женщины?
 * Победили Мужчины 24/16
 *  
 */

 
SELECT (SELECT (SELECT gender_info from gender g where g.id=p.gender_id)  from profiles p where p.user_id =l.user_id ) AS gender , COUNT(like_type) AS likes
from likes l 
where like_type = '1'
GROUP by like_type, gender ;


select g2.gender_info gender, COUNT( l.like_type) likes 
from profiles p 
right join gender g2  ON p.gender_id = g2.id 
RIGHT join likes l  ON l.user_id = p.user_id 
where l.like_type = '1'
group by g2.gender_info ;



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

SELECT p.user_id , p.first_name , p.last_name , p.birthday , COUNT(l.user_id) as likesCount
from profiles p 
 join likes l ON l.target_id =p.user_id 
 where l.like_type = '1'
 and l.target_type_id = 2
group by user_id ,first_name , last_name ,birthday
HAVING likesCount > 0
order by birthday DESC  limit 10;



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

select p.user_id, p.first_name , p.last_name ,  COUNT(l2.user_id) AS countLD
from profiles p 
left join likes l2 ON l2.user_id =p.user_id 
GROUP by p.user_id, p.first_name , p.last_name
order by countLD ;

-- 3 меньше всего загружено файлов. Но тут каждый загрузил по 1 файлу
select user_id, first_name , last_name ,  (select COUNT(user_id) from media m where m.user_id = p.user_id) AS countM
from profiles p 
GROUP by user_id, first_name , last_name
order by p.user_id limit 10;


select p.user_id, p.first_name , p.last_name ,  COUNT(m2.user_id) AS countM
from profiles p 
join media m2 on m2.user_id = p.user_id 
GROUP by user_id, first_name , last_name
order by p.user_id limit 10;

-- 4 список у кого нет аватара, отсортирован по дате создания
select first_name , last_name, photo_id, created_at, updated_at from profiles p
where photo_id is NULL 
order by created_at 


-- мысль была такой вот, но что то делаю не так видимо, у указанного файла должен быть 1 лайк и 1 дизлайк
SELECT
  m.filename, 
  CONCAT(p.first_name, ' ', p.last_name) AS owner,
  count(l.target_id=1) AS total_likes,
  count(l.target_id=0) AS total_dislikes
FROM media m
JOIN users u ON u.id = m.user_id
JOIN profiles p ON p.user_id = u.id
LEFT JOIN likes l ON l.target_id = m.id AND l.target_type_id = 3 and l.like_type = 1
GROUP BY m.id;


