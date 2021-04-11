-- ФИО, время визита и тема обращения. не совсем понимаю как сделать фильтр по дате, например на сегодня, на завтра или же на этот месяц?

SELECT CONCAT(u2.first_name,' ', u2.last_name, ' ' , u2.patronymic_name, ' ') AS FIO, vi.visit_time , t2.name , t2.description 
from visit_info vi 
join users u2 ON vi.user_id = u2.id 
join themes t2 ON vi.theme_id = t2.id 
where visit_time like '2021-04-11%' ;

-- список всех участков с привязкой к районам

SELECT a.name , t.name 
from territory t 
join area a ON t.area_id = a.id
order by a.name 

-- действующее расписание участков

select t2.name , wt.from_time, to_time 
from work_time wt 
join territory t2 ON wt.ter_id = t2.id 
where is_active = 1;

-- разбивка по темам и сколько раз обращались по каждой

SELECT t2.name, COUNT(vi.id) 
from visit_info vi 
join themes t2 ON t2.id = vi.theme_id 
GROUP by t2.name
