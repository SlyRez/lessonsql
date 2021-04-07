-- 
-- Создайте таблицу logs типа Archive. 
-- Пусть при каждом создании записи в таблицах users, catalogs и products в таблицу logs помещается 
-- время и дата создания записи, название таблицы, идентификатор первичного ключа и содержимое поля name.

DROP table if exists logs;
CREATE table logs (
	created_at DATETIME NOT NULL,
	table_name VARCHAR(255) NOT NULL,
	target_id int NOT NULL,
	name VARCHAR(255)	
) ENGINE=Archive;

DROP TRIGGER IF EXISTS trg_users_logs_insert;

CREATE TRIGGER trg_users_logs_insert AFTER INSERT ON users FOR EACH ROW
BEGIN
  INSERT INTO logs SET 
  	created_at = NOW(),
  	table_name = 'users',
  	target_id = NEW.id,
  	name = new.name;
 END

-- INSERT into users (name, birthday_at, created_at, updated_at) values ('Петя', '1985-11-12',  now(), now());
 
 DROP TRIGGER IF EXISTS trg_catalogs_logs_insert;
 
 CREATE TRIGGER trg_catalogs_logs_insert AFTER INSERT ON catalogs FOR EACH ROW
BEGIN
  INSERT INTO logs SET 
  	created_at = NOW(),
  	table_name = 'catalogs',
  	target_id = NEW.id,
  	name = new.name;
 END
 
-- INSERT into catalogs (name) values ('Мониторы');
 
  DROP TRIGGER IF EXISTS trg_products_logs_insert;
 
  CREATE TRIGGER trg_products_logs_insert AFTER INSERT ON products FOR EACH ROW
BEGIN
  INSERT INTO logs SET 
  	created_at = NOW(),
  	table_name = 'products',
  	target_id = NEW.id,
  	name = new.name;
 END

-- INSERT INTO products  (name, description, price, catalog_id) VALUES ('ультра проц', 'лучшый проц в мире', 10000.00, 1);


-- 
-- (по желанию) Создайте SQL-запрос, который помещает в таблицу users миллион записей.
 DROP PROCEDURE if exists create_users;

 CREATE PROCEDURE create_users (IN count_ins INT)
 BEGIN
	 declare cont int default 0;
	 WHILE cont < count_ins DO
	 INSERT into users (name, birthday_at, created_at, updated_at) 
	values (
		(SELECT REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), 
		(SELECT date_add(now(), INTERVAL - rand() * 999999999 SECOND)),
		now(), 
		now()
	);
	SET cont = cont + 1;
	END WHILE;	
END
	
	CALL create_users(3); -- указать кол-во раз обработки

	
	
	