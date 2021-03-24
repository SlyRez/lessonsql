

























/*
 * 
 * Составьте список пользователей users, которые осуществили хотя бы один заказ orders в интернет магазине.
 * 
 */

SELECT u.name 'Пользователь', o. id as 'номер заказа'
	from orders o 
	join users u ON u.id = o.user_id 

/*
 * 
 * Выведите список товаров products и разделов catalogs, который соответствует товару.
 * 
 */

SELECT p.name , c.name 
	from products p 
	join catalogs c ON p.catalog_id = c.id
	
	
/*
 * 
 * (по желанию) Пусть имеется таблица рейсов flights (id, from, to) и таблица городов cities (label, name). Поля from, to и label 
 * содержат английские названия городов, поле name — русское. Выведите список рейсов flights с русскими названиями городов.
 * 
 * опущу создание таблиц и заполнение
 */

CREATE TABLE flights (
  id SERIAL PRIMARY KEY,
  f_from VARCHAR(255),
  f_to VARCHAR(255)
);
 
INSERT INTO flights (f_from, f_to)
VALUES 
('moscow','omsk'), 
('novgorod','kazan'), 
('irkutsk','moscow'), 
('omsk','irkutsk'), 
('moscow','kazan');


CREATE TABLE cities (
  label VARCHAR(255),
  name VARCHAR(255)
);

INSERT INTO cities
VALUES 
('moscow','Москва'), 
('irkutsk','Иркутск'), 
('novgorod','Новгород'), 
('kazan','Казань'), 
('omsk','Омск');


SELECT f.id , c.name Из, c2.name В
from flights f 
join cities c ON f.f_from = c.label 
join cities c2 ON f.f_to = c2.label 
order by f.id 