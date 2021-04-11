CREATE DATABASE visit_registration;

use visit_registration;

DROP TABLE IF EXISTS users;
CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `patronymic_name` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS area;
CREATE TABLE area(
	id int unsigned NOT NULL AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	PRIMARY KEY (`id`),
 	UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB;

DROP TABLE IF EXISTS territory;
CREATE TABLE territory(
	id int unsigned NOT NULL AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	area_id int unsigned NOT NULL,
	PRIMARY KEY (`id`),
	KEY `territory_fk_area_id` (`area_id`),
	UNIQUE KEY `name` (`name`),	
	CONSTRAINT `territory_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`)
)ENGINE=InnoDB;


DROP TABLE IF EXISTS work_time;
CREATE TABLE work_time(
	id int unsigned NOT NULL AUTO_INCREMENT,
	ter_id int unsigned NOT NULL,
	from_time time,
	to_time time,
	created_at datetime DEFAULT CURRENT_TIMESTAMP,
	is_active tinyint unsigned NOT NULL,
	PRIMARY KEY (`id`),
	KEY `work_time_fk_ter_id` (`ter_id`),
	CONSTRAINT `work_time_fk_ter_id` FOREIGN KEY (`ter_id`) REFERENCES `territory` (`id`)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS themes;
CREATE TABLE themes(
	id int unsigned NOT NULL AUTO_INCREMENT,
	name varchar(100) NOT NULL,
	description text,
	PRIMARY KEY (`id`)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS visit_status;
CREATE TABLE visit_status(
	id int unsigned NOT NULL AUTO_INCREMENT,
	name varchar(100) NOT NULL, 
	PRIMARY KEY (`id`)
)ENGINE=InnoDB;

DROP TABLE IF EXISTS visit_info;
CREATE TABLE visit_info(
	id int unsigned NOT NULL AUTO_INCREMENT,
	user_id int unsigned NOT NULL,
	area_id int unsigned NOT NULL,
	visit_time datetime,
	theme_id int unsigned NOT NULL,
	description text,
	acc_number int,
	status_id int unsigned NOT NULL,
	PRIMARY KEY (`id`),
	KEY `visit_info_fk_user_id` (`user_id`),
	KEY `visit_info_fk_area_id` (`area_id`),
	KEY `visit_info_fk_theme_id` (`theme_id`),
	KEY `visit_info_fk_status_id` (`status_id`),
	CONSTRAINT `visit_info_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
	CONSTRAINT `visit_info_fk_area_id` FOREIGN KEY (`area_id`) REFERENCES `area` (`id`),
	CONSTRAINT `visit_info_fk_theme_id` FOREIGN KEY (`theme_id`) REFERENCES `themes` (`id`),
	CONSTRAINT `visit_info_fk_status_id` FOREIGN KEY (`status_id`) REFERENCES `visit_status` (`id`)
)ENGINE=InnoDB;






