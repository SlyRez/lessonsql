use visit_registration;

INSERT INTO area VALUES
  (NULL, 'Бокситогорский муниципальный район'),
  (NULL, 'Волосовский муниципальный район'),
  (NULL, 'Волховский муниципальный район'),
  (NULL, 'Всеволожский муниципальный район'),
  (NULL, 'Выборгский муниципальный район'),
  (NULL, 'Гатчинский муниципальный район'),
  (NULL, 'Кингисеппский муниципальный район'),
  (NULL, 'Киришский муниципальный район'),
  (NULL, 'Кировский муниципальный район'),
  (NULL, 'Лодейнопольский муниципальный район'),
  (NULL, 'Ломоносовский муниципальный район'),
  (NULL, 'Лужский муниципальный район'),
  (NULL, 'Подпорожский муниципальный район'),
  (NULL, 'Приозерский муниципальный район'),
  (NULL, 'Сланцевский муниципальный район'),
  (NULL, 'Сосновоборский городской округ'),
  (NULL, 'Тихвинский муниципальный район'),  
  (NULL, 'Тосненский муниципальный район');
  
 SELECT * from area;
 
 INSERT INTO territory VALUES
 	-- (null, (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), 1);
 	(null, (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), (SELECT id FROM area ORDER BY rand() LIMIT 1));
	
 SELECT * from territory;
 
  INSERT INTO work_time VALUES
 	 (null, (SELECT id FROM territory ORDER BY rand() LIMIT 1), time(date_add(now(), INTERVAL rand() * 999999999 SECOND)),time(date_add(now(), INTERVAL rand() * 999999999 SECOND)) , now(), 1);
 
 SELECT * from work_time wt ;
 
  INSERT INTO users VALUES
 	 (null, 
 	 (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), 
 	 (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), 
 	 (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), 
 	 (CONCAT(SUBSTRING(MD5(UUID()), 1, 5 + rand()*10) , '@mail.com')), 
 	 (concat('+', FLOOR(rand() * 100), ' ', FLOOR(rand() * 1000), ' ', FLOOR(rand() * 1000), ' ', FLOOR(rand() * 10000))), 
 	 (date_add(now(), INTERVAL - rand() * 999999999 SECOND)), 
 	 NOW()); 	
 	
 SELECT * from users u ;	 

INSERT INTO visit_status VALUES
(null, 'not come');

select * from visit_status vs ;

INSERT INTO themes VALUES
(null, 
(REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), 
(REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', ''))
);

select * from themes ;

INSERT INTO visit_info VALUES
( 
	null,
	(SELECT id FROM users ORDER BY rand() LIMIT 1),
	(SELECT id FROM area ORDER BY rand() LIMIT 1),
	(date_add(now(), INTERVAL rand() * 999999999 SECOND)),
	(SELECT id FROM themes ORDER BY rand() LIMIT 1),
	CONCAT((REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), ' ', (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', '')), ' ', (REGEXP_REPLACE(MD5(rand()*999999999999999), '\\d', ''))), 
	concat(FLOOR(rand() * 100000000)),
	(SELECT id FROM visit_status ORDER BY rand() LIMIT 1)
);

SELECT * from visit_info vi 
 
