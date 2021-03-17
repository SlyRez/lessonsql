/*
 * 
 * Пусть в таблице users поля created_at и updated_at оказались незаполненными. Заполните их текущими датой и временем.
 * 
 */

SELECT created_at ,updated_at 
from users u ;

-- выполнил несколько раз, генерил каждому аккаунту свою дату updated_at
update users 
set updated_at = NOW()
where id = FLOOR(RAND()*(6-1+1))+1;

/*
 * 
 * В таблице складских запасов storehouses_products в поле value могут встречаться самые разные цифры: 
 * 0, если товар закончился и выше нуля, если на складе имеются запасы. Необходимо отсортировать записи таким образом, 
 * чтобы они выводились в порядке увеличения значения value. Однако нулевые запасы должны выводиться в конце, после всех 
 * 
 * 
 */

-- создал позиции в таблице storehouses_products
select * from storehouses_products sp 
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (1,1,5,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (1,2,0,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (2,3,1,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (3,2,2500,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (2,1,30,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (4,2,500,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (6,5,5,now(), now());
insert into storehouses_products (storehouse_id ,product_id ,value ,created_at, updated_at )
VALUES (4,1,0,now(), now());


-- сортировка по возрастанию нули в конце
SELECT * from storehouses_products sp 
order by value = 0, value   


/*
 * 
 * (по желанию) Из таблицы users необходимо извлечь пользователей, родившихся в августе и мае. Месяцы заданы в виде списка английских названий (may, august)
 * 
 * 
 */

-- вывел дни рождения в мае августе и подписал в итоге
SELECT *, CASE 
        WHEN DATE_FORMAT(birthday_at, '%m') = 05 THEN 'may'
        WHEN DATE_FORMAT(birthday_at, '%m') = 08 THEN 'august'
    END AS mounth
FROM
    users WHERE DATE_FORMAT(birthday_at, '%m') = 05 OR DATE_FORMAT(birthday_at, '%m') = 08;


   /*
    * 
    * 
    * (по желанию) Из таблицы catalogs извлекаются записи при помощи запроса. 
    * SELECT * FROM catalogs WHERE id IN (5, 1, 2); Отсортируйте записи в порядке, заданном в списке IN.
    * 
    * 
    */

--сортировка по номеру id 
SELECT * from catalogs c 
where id in (5,1,2)
order BY CASE 
WHEN id = 5 THEN 1
WHEN id = 1 THEN 2
WHEN id = 2 THEN 3
END 


/*
 * 
 * Подсчитайте средний возраст пользователей в таблице users.
 * 
 * 
*/
-- вычислил средний возраст
SELECT ROUND(AVG((TO_DAYS( NOW()) - TO_DAYS( birthday_at)) / 365.25), 0)  FROM users;

/*
 * 
 * 
 * Подсчитайте количество дней рождения, которые приходятся на каждый из дней недели. Следует учесть, что необходимы дни недели текущего года, а не года рождения.
 * 
 * 
 * 
 */


/* попытки разобраться
SELECT  
        *, DATE_FORMAT(NOW() , '%y') y, DATE_FORMAT(birthday_at, '%m') m, DATE_FORMAT(birthday_at, '%d') d, 
        CONCAT('20', DATE_FORMAT(NOW(), '%y'), '-', DATE_FORMAT(birthday_at, '%m'),'-', DATE_FORMAT(birthday_at, '%d')) ymd,
        DATE_FORMAT('2021-10-05 01:59:59', '%') 
FROM    users ;
*/

-- решение к которому пришел
SELECT 
	YEAR (NOW()) y, MONTH (birthday_at) m, DAY (birthday_at) d,
	DATE(CONCAT_WS ('-', YEAR (NOW()), MONTH (birthday_at), DAY (birthday_at))) ymd,
	DAYNAME( DATE(CONCAT_WS ('-', YEAR (NOW()), MONTH (birthday_at), DAY (birthday_at))))
from users u 


/*
 * 
 * Подсчитайте произведение чисел в столбце таблицы.
 * 
 */

-- создал таблицу и ввел значения
CREATE TABLE another (
   value INT DEFAULT NULL
);
INSERT INTO another VALUES (1);
INSERT INTO another VALUES (2);
INSERT INTO another VALUES (3);
INSERT INTO another VALUES (4);
INSERT INTO another VALUES (5);

-- эта формула признаться самая первая в запросах гугл, даже если честно уже и не разбирался сильно с ней, вставил и заработало =)
select exp(sum(ln(value))) from another a2 
