
/* Кол-во данных в таблицах
communities			100  
communities_users	55
friendship			50
friendship_statuses	3
gender 				2
media				100
media_types			5
messages			100
profiles			100
user_status			6
users				100
*/

/*************** Дорабатываем БД
Продолжил работу с данными какие были после 3 урока. Ниже оставлю все используемые скрипты, команды и последовательность.
*/

-- добавили в таблицу profiles поля first_name, last_name, patronymic_name
ALTER TABLE profiles
  ADD first_name varchar(100) NOT NULL COMMENT 'Имя пользователя' AFTER user_id,
  ADD last_name varchar(100)  NOT NULL COMMENT 'Фамилия пользователя' AFTER first_name,
  ADD patronymic_name varchar(100)  COMMENT 'Отчество пользователя' AFTER last_name
;

-- Удалил из таблицы messages поле media_id
ALTER TABLE messages DROP COLUMN media_id;

-- Удалил из таблицы users поле last_login_at
ALTER TABLE users DROP COLUMN last_login_at;

-- Добавить в таблицу messages поле "Признак прочтения"
ALTER TABLE messages
ADD is_read BOOLEAN COMMENT "Признак прочтения" AFTER is_delivered;

-- Заменить поле "статус пользователя" справочником
-- Создаем справочник статусов пользователей
CREATE TABLE user_statuses (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  name VARCHAR(100) NOT NULL COMMENT "Название статуса",
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Справочник статусов пользователя"; 
 
-- Заполняем справочник статусов пользователей
INSERT INTO user_statuses (name) VALUES ('Single'), ('Married');

-- Изменяем тип поля
ALTER TABLE profiles RENAME COLUMN status TO user_status_id;
UPDATE profiles set user_status_id = null;
ALTER TABLE profiles MODIFY COLUMN user_status_id INT UNSIGNED; 

-- Заменить поле "пол" справочником
-- Создаем справочник полов
CREATE TABLE gender (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT "Идентификатор строки", 
  gender VARCHAR(25) COMMENT "Название пола",
  gender_info VARCHAR(150) COMMENT "Информация о поле",
  created_at DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT "Время создания строки",  
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT "Время обновления строки"
) COMMENT "Варианты полов";

-- Заполняем справочник полов
INSERT INTO gender (gender, gender_info) VALUES ('M', 'Male'), ('F', 'Female');

-- Меняем тип поля gender на INT для использования справочника
ALTER TABLE vk.profiles MODIFY COLUMN gender char(1) NULL COMMENT 'Пол'; -- теперь может быть null
UPDATE profiles set gender = null;
ALTER TABLE profiles MODIFY COLUMN gender INT UNSIGNED;
ALTER TABLE profiles RENAME COLUMN gender TO gender_id; 

truncate TABLE friendship_statuses;
truncate TABLE media_types;

-- Заполним справочники
INSERT INTO friendship_statuses (name) VALUES ('Requested'), ('Approved'), ('Declined');
INSERT INTO media_types (name) VALUES ('Image'), ('Video'), ('Audio');

-- Перенесем данные из users
UPDATE profiles p
SET
  p.first_name = (SELECT u.first_name FROM users u WHERE id = p.user_id),  
  p.last_name = (SELECT u.last_name FROM users u WHERE id = p.user_id),  
  p.patronymic_name = (SELECT u.patronymic_name FROM users u WHERE id = p.user_id)
;

-- Заполним пол случайными значениями из справочника
UPDATE profiles
SET
  gender_id = (SELECT id FROM gender ORDER BY rand() LIMIT 1)
;

-- Добавляем статусы
INSERT INTO user_statuses (name) VALUES ('Divorced'), ('Widowed'), ('Searching'), ('Its complicated');

-- Заполним статус случайными значениями из справочника
UPDATE profiles p
SET
  p.user_status_id = (SELECT us.id FROM user_statuses us ORDER BY rand() LIMIT 1)
;

-- проверили какие статусы используются
SELECT DISTINCT user_status_id FROM profiles ORDER BY user_status_id;
-- Заполним тип медиафайла случайными значениями из справочника
UPDATE media
SET
  media_type_id = (SELECT id FROM media_types ORDER BY rand() LIMIT 1)
;

-- Обновим друзей
UPDATE friendship f
SET
  friend_id = (SELECT u.id FROM users u WHERE u.id != f.user_id ORDER BY rand() LIMIT 1)
;
-- проверка связей друзей
SELECT * FROM friendship WHERE user_id = friend_id;
-- Заполним статусы дружбы случайными значениями из справочника
UPDATE friendship
SET
  status_id = (SELECT id FROM friendship_statuses ORDER BY rand() LIMIT 1)
;

-- Обновим сообщения, чтобы не было отправленных самим себе
UPDATE messages m
SET
  m.to_user_id = (SELECT u.id FROM users u WHERE u.id != m.from_user_id ORDER BY rand() LIMIT 1)
;

-- Заполним флаг прочтения 0 или 1 там, где доставлены
UPDATE messages
SET is_read = IF(rand() > 0.5, 0, 1)
WHERE is_delivered = 1;

SELECT * FROM media_types;

SELECT * FROM media
WHERE media_type_id = (SELECT id FROM media_types WHERE name = 'Image')
ORDER BY rand() LIMIT 1;

-- Заполним ссылки на фото в профилях, где у пользователя есть фотографии
UPDATE profiles p
SET p.photo_id = (
  SELECT m.id FROM media m
  WHERE m.media_type_id = (SELECT id FROM media_types WHERE name = 'Image')
  AND m.user_id = p.user_id
  ORDER BY rand() LIMIT 1
);

-- Удаляем поля, которые перенесли/заменили
ALTER TABLE users DROP COLUMN first_name;
ALTER TABLE users DROP COLUMN last_name;
ALTER TABLE users DROP COLUMN patronymic_name;


