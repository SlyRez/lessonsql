# Основы реляционных баз данных. MySQL
## Засуха Роман Евгеньевич
(находится в работе)

Оглавление:
- [ДЗ 1](#Урок 2).
- [ДЗ 2]


# Урок 2.
## Практическое задание по теме “Управление БД”

1.Установите СУБД MySQL. Создайте в домашней директории файл .my.cnf, задав в нем логин и пароль, который указывался при установке.

2.Создайте базу данных example, разместите в ней таблицу users, состоящую из двух столбцов, числового id и строкового name.

3.Создайте дамп базы данных example из предыдущего задания, разверните содержимое дампа в новую базу данных sample.

4.(по желанию) Ознакомьтесь более подробно с документацией утилиты mysqldump. Создайте дамп единственной таблицы help_keyword базы данных mysql. Причем добейтесь того, чтобы дамп содержал только первые 100 строк таблицы.

# Решение

1.Сам файл с написанным кодом
![cnf](.my.cnf)

![Скриншот](Вход с файлом my.cnf.JPG)

2.![Созданные Базы](Созданные базы.JPG и Колонки в таблицах.JPG)

3.![скрипт дампа](example.sql)

![скринБД](Созданные базы.JPG)  

![скринБД2](Колонки в таблицах.JPG)

4.увы нет такой базы, но поизучал, получается необходимо использовать limited 100
