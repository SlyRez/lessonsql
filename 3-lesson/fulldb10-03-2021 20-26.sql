#
# TABLE STRUCTURE FOR: communities
#

DROP TABLE IF EXISTS `communities`;

CREATE TABLE `communities` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор сроки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название группы',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Группы';

INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'totam', '2001-12-20 09:45:43', '1977-02-26 15:14:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'cupiditate', '2004-05-24 01:12:58', '2004-05-31 01:54:53');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'quia', '1982-01-04 12:01:04', '1973-04-29 18:21:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'perferendis', '2014-08-26 16:52:48', '1979-02-01 20:33:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'eos', '2015-07-04 22:50:46', '1992-09-02 20:41:38');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'esse', '2004-12-15 17:54:33', '1988-10-12 05:19:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'unde', '1985-04-12 22:13:55', '1976-09-21 20:45:24');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'fugit', '1986-05-10 10:44:18', '1977-03-04 22:51:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'quam', '1972-10-15 15:24:25', '1983-01-15 14:39:12');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'possimus', '1992-12-25 17:53:29', '1981-12-29 13:15:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'veniam', '1993-07-18 02:55:05', '2019-06-07 16:04:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'aperiam', '2016-12-29 14:03:00', '2010-11-11 05:55:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'autem', '1992-01-26 04:32:20', '2007-02-06 08:10:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'cumque', '1982-10-09 09:01:09', '2020-05-31 17:24:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'illo', '2018-11-13 20:33:51', '2016-04-26 10:16:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'et', '1991-09-21 14:37:34', '2013-02-06 20:43:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'dolores', '2013-12-23 13:40:56', '2019-08-23 17:20:33');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'enim', '2002-05-22 06:45:20', '1990-02-10 13:04:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'nesciunt', '1977-03-20 16:40:11', '1971-08-22 09:37:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'earum', '1973-09-25 04:03:08', '1970-06-20 21:39:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'quisquam', '1987-03-10 01:50:39', '1980-05-10 12:31:25');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'fugiat', '2008-10-08 07:12:12', '1985-12-08 00:15:35');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'praesentium', '2017-07-19 06:22:06', '2013-02-21 01:21:23');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'sapiente', '1988-02-14 18:15:49', '1990-07-26 01:12:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'natus', '2011-01-14 08:05:45', '1983-06-01 11:07:32');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'similique', '1979-03-24 08:40:50', '2009-05-11 18:21:40');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'quod', '1973-01-17 01:51:04', '2008-02-10 09:43:48');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'qui', '2004-03-10 21:03:20', '2000-01-06 21:40:18');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'maxime', '1995-12-02 19:32:16', '1996-05-16 07:51:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'quis', '1978-11-28 20:24:28', '1974-08-17 10:39:26');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'facere', '1997-04-13 19:37:56', '2005-10-03 21:26:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'sed', '2004-12-07 03:33:51', '1973-02-02 23:20:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'modi', '2012-05-09 06:42:24', '1978-03-15 14:03:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'blanditiis', '2004-09-08 05:50:21', '1970-08-02 16:58:15');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'quas', '1970-10-13 17:13:11', '1981-06-16 05:28:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'neque', '2012-05-07 23:22:04', '1994-07-23 14:53:27');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'ipsum', '1982-12-08 13:24:36', '1988-03-31 18:28:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'commodi', '1980-10-15 16:40:28', '2017-07-08 03:34:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'facilis', '2005-08-10 23:54:50', '2003-03-25 04:03:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'rem', '1976-01-01 00:54:07', '2014-11-29 17:08:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'distinctio', '2015-11-02 01:00:07', '2005-01-05 05:54:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'consequatur', '2015-05-05 04:12:32', '1996-04-26 03:05:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'nostrum', '2011-07-19 17:26:25', '1975-01-11 03:52:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'eius', '2005-02-06 11:45:09', '1984-10-16 19:17:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'incidunt', '1980-01-18 04:33:50', '2001-11-24 21:34:20');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'ut', '2013-09-25 11:55:52', '1975-08-25 07:47:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'numquam', '1971-09-05 16:40:04', '2012-09-18 07:53:47');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'doloribus', '1972-09-26 08:28:15', '2012-05-31 11:45:01');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'est', '2014-09-30 17:55:16', '2017-09-29 04:03:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'voluptatum', '1970-05-12 02:07:16', '2005-02-09 13:17:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'iusto', '1997-04-11 12:03:14', '2007-10-21 14:09:56');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'rerum', '2021-01-02 00:58:46', '1971-06-02 14:06:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'quae', '1989-12-24 04:40:10', '1971-10-13 17:43:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'laudantium', '2002-12-11 10:50:22', '1975-09-23 02:35:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'impedit', '1998-01-10 21:59:32', '2000-12-16 12:25:10');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'non', '2011-12-30 14:25:28', '2013-12-18 01:51:41');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'consectetur', '1995-09-19 16:14:16', '2010-11-27 20:30:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'in', '1982-09-30 12:12:21', '1972-09-26 16:00:49');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'dolor', '1985-11-09 03:54:59', '1976-04-16 17:02:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'voluptates', '2009-12-02 06:19:53', '1974-01-20 07:42:55');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'nobis', '1990-05-18 07:18:06', '2017-09-20 07:02:34');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'beatae', '2017-10-07 22:40:41', '2014-11-25 00:23:16');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'fuga', '2002-01-20 12:03:50', '1973-11-06 17:06:58');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'eligendi', '2013-10-09 07:29:58', '2005-02-18 10:29:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'nihil', '1989-06-21 06:39:41', '2000-08-08 07:09:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'ab', '1987-08-29 13:21:57', '1977-10-02 05:01:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'omnis', '1996-12-19 04:22:06', '2007-05-28 03:18:00');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'illum', '2012-09-11 22:59:16', '1995-05-05 05:31:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'ducimus', '1994-12-16 04:50:15', '2018-01-29 01:25:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'minima', '1980-08-02 11:55:54', '2011-05-30 12:32:11');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'odit', '1971-02-27 03:32:17', '2011-05-01 15:07:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'voluptas', '1975-04-28 16:48:35', '1996-11-05 18:57:29');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'ea', '1996-01-22 16:45:15', '2003-05-18 11:12:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'dolorum', '1996-03-04 04:08:03', '1971-04-01 04:05:31');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'dicta', '1972-05-05 08:54:52', '1998-11-03 22:02:54');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'eum', '1992-03-29 14:19:33', '2009-09-26 16:35:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'veritatis', '1970-09-26 08:35:09', '2018-11-21 13:42:39');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'sit', '1982-06-16 06:23:53', '2002-06-20 19:18:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'repellat', '1995-01-15 18:30:19', '1998-06-06 09:05:28');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'alias', '1976-11-24 14:56:20', '1976-06-13 05:10:22');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'voluptatem', '1985-08-06 12:20:22', '1973-10-21 05:46:17');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'debitis', '2005-04-21 18:13:48', '2016-01-03 19:07:51');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'sequi', '1975-09-27 18:40:25', '1995-12-11 04:25:21');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'inventore', '1994-03-17 10:03:17', '1999-07-20 02:14:36');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'sint', '1990-12-07 22:56:57', '1984-09-24 13:59:06');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'iste', '2016-12-13 03:05:31', '2016-01-25 14:20:43');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'quasi', '2007-01-18 14:54:56', '2007-02-17 23:49:07');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'optio', '1998-08-23 14:47:22', '1989-03-16 01:01:05');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'at', '2011-10-06 22:54:56', '1987-10-29 18:55:09');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'repudiandae', '1970-10-10 04:21:18', '1976-09-25 21:59:45');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'pariatur', '2020-07-10 11:14:19', '1996-08-04 05:11:14');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'aut', '1987-12-13 21:24:12', '1970-04-10 23:07:03');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'repellendus', '2012-10-15 17:03:25', '1986-05-31 06:54:37');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'tempore', '1997-10-15 08:23:10', '1992-02-28 19:14:04');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'tenetur', '2004-04-14 19:09:48', '1995-02-08 08:29:44');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'asperiores', '1978-11-16 16:07:42', '1998-08-17 03:49:19');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'minus', '2004-03-04 07:34:57', '1988-02-09 05:24:46');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'ratione', '1977-02-09 18:51:45', '2009-06-24 14:59:59');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'corporis', '1978-02-12 16:08:13', '2013-05-02 14:12:02');
INSERT INTO `communities` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'excepturi', '2000-12-28 14:11:43', '1993-08-01 04:14:57');


#
# TABLE STRUCTURE FOR: communities_users
#

DROP TABLE IF EXISTS `communities_users`;

CREATE TABLE `communities_users` (
  `community_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на группу',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  PRIMARY KEY (`community_id`,`user_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Участники групп, связь между пользователями и группами';

INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 2, '2011-03-18 06:56:54');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 5, '2009-12-15 05:46:42');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 6, '1982-11-20 16:35:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 7, '1999-07-24 19:05:27');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 8, '2003-01-09 17:43:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (1, 9, '1996-04-13 17:28:59');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 3, '2019-06-23 19:41:22');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 5, '2008-08-22 09:52:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 6, '2014-03-11 05:21:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 7, '1987-09-08 23:41:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 8, '1994-12-04 17:44:19');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (2, 9, '2013-05-02 15:18:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 1, '2008-07-01 14:38:00');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 2, '1998-05-22 14:26:17');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 3, '2009-08-02 05:46:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 4, '2000-01-28 15:25:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 5, '2019-07-12 10:17:06');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 7, '1970-09-17 07:43:13');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 8, '2000-01-19 02:27:28');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (3, 9, '2003-07-14 01:04:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 1, '2004-04-21 20:47:48');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 2, '2010-01-09 10:06:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 4, '1975-07-03 08:57:08');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 6, '1974-10-30 05:38:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 8, '2009-12-01 06:13:49');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (4, 9, '2013-01-19 10:07:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 1, '1990-10-04 08:25:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 2, '1995-08-20 17:17:04');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 3, '1996-10-15 15:04:43');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 4, '2000-07-27 21:04:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 5, '1994-03-13 21:28:58');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 6, '1991-03-13 07:57:50');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 7, '2009-02-08 16:13:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (5, 8, '2019-06-03 02:08:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 1, '1983-08-08 21:09:35');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 3, '2005-12-04 04:16:38');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 4, '1996-03-22 07:56:18');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 7, '1980-11-13 04:24:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 8, '1979-10-08 00:55:41');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (6, 9, '1977-01-15 00:11:25');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 1, '1980-09-17 06:52:44');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 2, '2006-04-06 20:37:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 3, '2015-03-03 02:58:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (7, 6, '2021-02-11 23:46:15');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 2, '1996-08-01 01:27:52');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 3, '1991-08-13 01:11:40');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 5, '1989-01-16 19:17:47');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (8, 6, '1978-09-21 07:39:34');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 1, '2009-05-09 12:31:07');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 3, '1980-07-15 12:13:05');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 4, '1972-10-07 22:52:37');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 5, '1973-12-15 16:50:30');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 6, '1990-08-19 20:47:29');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 8, '2013-12-28 03:06:31');
INSERT INTO `communities_users` (`community_id`, `user_id`, `created_at`) VALUES (9, 9, '2006-06-22 10:51:13');


#
# TABLE STRUCTURE FOR: friendship
#

DROP TABLE IF EXISTS `friendship`;

CREATE TABLE `friendship` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на инициатора дружеских отношений',
  `friend_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя приглашения дружить',
  `status_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на статус (текущее состояние) отношений',
  `requested_at` datetime DEFAULT current_timestamp() COMMENT 'Время отправления приглашения дружить',
  `confirmed_at` datetime DEFAULT NULL COMMENT 'Время подтверждения приглашения',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`,`friend_id`) COMMENT 'Составной первичный ключ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Таблица дружбы';

INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 1, 1, '2015-01-29 13:18:51', '2016-09-28 11:02:34', '2001-08-11 16:28:30', '1995-10-21 06:51:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 2, 4, '2018-11-16 13:28:35', '2001-07-14 03:34:42', '1992-03-15 22:24:54', '1975-03-02 12:46:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 5, 8, '2019-05-17 11:37:24', '1976-07-22 19:39:03', '2012-02-13 07:08:35', '1996-01-13 14:51:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 6, 8, '2004-12-11 11:51:51', '1971-05-13 01:13:08', '2020-03-14 21:50:14', '2001-08-04 09:17:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 7, 8, '1979-05-21 07:27:02', '1979-07-17 02:11:28', '1996-07-10 18:15:18', '1999-09-19 09:11:25');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (1, 9, 2, '1975-03-27 15:06:48', '1975-02-11 23:44:04', '1989-04-12 20:19:35', '2009-02-21 17:33:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 1, 1, '2009-01-29 06:47:19', '2008-06-01 23:06:50', '2010-08-10 12:34:28', '1975-01-05 14:45:57');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 3, 8, '1979-10-17 19:37:13', '2011-11-22 04:02:49', '2000-12-14 01:44:39', '1978-02-21 03:06:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 4, 8, '1982-07-22 19:44:47', '2005-10-02 17:17:03', '2015-07-15 06:25:29', '2010-03-05 03:22:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 5, 3, '2003-06-09 18:28:43', '2013-01-29 22:47:06', '1970-06-09 08:12:31', '2006-01-16 14:11:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 6, 4, '1994-05-28 05:31:13', '2000-06-25 13:45:14', '1999-11-26 05:08:22', '1977-04-19 00:06:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (2, 8, 7, '1978-10-18 13:25:52', '1997-01-03 06:17:57', '2005-02-27 14:15:35', '2012-04-07 18:22:42');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 1, 9, '1984-02-11 22:58:49', '2020-02-18 08:36:12', '2018-02-12 00:38:20', '2010-08-14 03:50:31');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 5, 6, '1998-11-27 13:26:44', '1991-12-04 04:40:17', '1978-06-22 07:26:24', '1999-04-07 18:51:08');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (3, 6, 1, '1997-09-27 07:58:11', '2002-02-04 01:54:47', '2015-10-31 11:01:22', '1974-01-29 02:19:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 1, 9, '2001-12-31 09:10:06', '1991-06-01 02:51:48', '1974-02-10 09:22:29', '2019-03-06 11:20:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 2, 6, '2019-02-21 03:35:50', '1985-09-07 14:05:49', '1971-02-13 18:51:24', '2017-11-02 16:57:12');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 3, 1, '1980-10-26 10:00:52', '2018-10-02 07:15:34', '1997-11-14 04:25:41', '1990-03-23 20:37:21');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 4, 6, '1972-11-14 13:07:52', '1980-07-29 18:38:14', '1987-01-19 02:41:49', '2018-09-25 03:20:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 6, 8, '2003-09-24 00:39:45', '2016-04-25 19:39:51', '2004-05-04 16:50:52', '1994-09-13 10:49:07');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 8, 1, '1984-05-25 21:43:51', '2013-12-16 04:15:06', '1992-11-19 10:43:00', '1971-09-03 20:44:01');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (4, 9, 2, '1979-10-02 15:47:23', '1986-08-26 20:03:14', '2020-11-11 19:32:59', '1996-12-17 20:49:14');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 4, 9, '1998-05-03 07:49:15', '1996-12-26 01:16:29', '1980-12-05 09:00:40', '1985-11-02 00:39:32');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 7, 6, '1972-12-16 19:37:36', '1975-10-06 14:59:13', '1991-11-08 15:37:09', '1993-02-05 06:01:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (5, 9, 3, '1985-01-19 11:34:02', '1970-02-14 15:02:19', '1982-12-15 19:00:05', '2012-09-30 22:53:19');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 2, 9, '1992-04-03 22:57:07', '2007-04-14 00:56:07', '2017-01-02 21:38:21', '1976-09-10 14:34:43');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 3, 5, '1984-12-03 17:54:28', '2011-04-17 16:52:02', '1972-06-05 05:40:08', '2012-04-10 13:46:28');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 5, 4, '1978-06-29 18:38:12', '1975-08-02 18:32:42', '1986-09-17 01:41:06', '2006-09-07 06:21:18');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 6, 8, '1976-06-28 17:52:11', '1996-09-12 15:47:59', '1973-08-28 06:09:15', '1982-09-28 11:03:29');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (6, 8, 9, '1982-10-29 21:27:42', '1984-12-11 09:11:04', '2003-05-28 22:35:06', '1985-05-01 21:42:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 1, 2, '1992-01-23 15:47:59', '1976-02-16 00:41:16', '1982-02-20 11:54:49', '2010-03-03 13:36:37');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 2, 7, '1997-11-21 07:21:21', '1980-11-05 19:34:17', '2011-11-24 22:05:41', '1990-12-30 22:31:55');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 3, 9, '1997-03-09 10:37:14', '1975-11-02 20:57:46', '2004-01-04 14:41:54', '1996-06-16 05:17:58');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 4, 1, '1986-07-28 05:10:57', '2011-09-16 07:38:06', '1997-06-30 00:10:41', '1984-10-23 23:27:11');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 8, 9, '2019-06-13 01:17:16', '2012-04-12 06:24:40', '2011-05-26 03:50:32', '2005-11-30 03:03:23');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (7, 9, 1, '1984-07-09 20:49:24', '1970-09-10 04:18:27', '2015-06-07 15:28:47', '2010-02-11 04:36:59');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 1, 3, '2014-07-21 13:40:25', '1978-07-09 09:46:24', '2008-07-23 02:56:23', '2000-03-13 16:44:03');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 2, 6, '2011-07-30 14:45:14', '2017-08-25 00:43:51', '1970-10-27 16:58:48', '2005-12-21 16:19:05');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 4, 5, '1990-11-08 03:37:29', '1985-09-04 07:52:02', '2015-11-15 17:08:09', '2007-03-28 11:28:17');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 5, 1, '1978-05-18 06:37:16', '1991-09-19 18:16:21', '1984-05-31 10:30:49', '2016-06-22 22:45:26');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 6, 4, '1976-08-25 15:24:22', '2002-06-07 16:15:28', '1998-12-10 02:53:35', '2009-08-05 02:19:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 7, 2, '1989-03-16 20:52:04', '2008-04-28 13:08:17', '2013-06-21 15:18:01', '1982-08-02 02:02:06');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 8, 3, '1998-03-21 07:20:40', '1996-07-08 10:27:33', '2015-06-17 19:22:42', '2020-07-27 05:34:44');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (8, 9, 8, '2015-04-03 19:35:46', '1998-04-24 20:25:05', '2012-07-25 18:18:26', '2005-09-29 23:12:54');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 2, 1, '2007-04-08 13:51:49', '1999-06-15 02:23:35', '1988-08-24 14:59:28', '2006-08-27 01:34:33');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 3, 8, '1999-07-12 16:57:17', '1989-01-02 04:30:23', '2003-12-27 05:36:04', '2000-08-25 20:28:47');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 4, 4, '2007-08-17 18:44:45', '1970-05-13 20:49:23', '1976-05-07 00:26:57', '2014-01-10 18:00:30');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 5, 3, '2020-12-08 20:50:47', '1981-07-01 18:00:56', '1997-03-26 11:48:46', '2019-06-20 18:16:00');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 6, 5, '1977-09-06 02:45:17', '1982-12-26 09:46:28', '2010-07-28 23:10:38', '2015-05-13 13:55:40');
INSERT INTO `friendship` (`user_id`, `friend_id`, `status_id`, `requested_at`, `confirmed_at`, `created_at`, `updated_at`) VALUES (9, 9, 5, '1976-10-26 00:42:33', '1995-12-30 21:44:29', '2009-04-17 01:40:24', '2005-08-11 21:56:07');


#
# TABLE STRUCTURE FOR: friendship_statuses
#

DROP TABLE IF EXISTS `friendship_statuses`;

CREATE TABLE `friendship_statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название статуса',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Статусы дружбы';

INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'rem', '2010-07-26 09:37:27', '1970-01-08 04:14:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'molestiae', '2005-07-29 21:52:21', '1999-06-26 11:18:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'consequatur', '1990-05-25 12:34:49', '1983-12-25 03:50:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'est', '2020-04-21 08:48:35', '1989-02-21 22:21:46');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'qui', '1970-12-21 21:17:49', '1983-10-04 02:30:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'neque', '1997-09-01 12:58:51', '1980-10-22 02:57:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'aut', '2017-01-24 16:18:22', '1975-08-17 03:51:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'voluptatem', '2003-04-03 21:14:04', '2012-02-17 03:30:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'delectus', '2004-12-19 02:39:36', '2019-04-24 05:35:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'nam', '2007-12-26 12:19:29', '1987-10-31 01:43:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'ea', '2019-08-13 13:25:55', '1986-07-23 04:23:34');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'odio', '1980-09-01 17:49:06', '2008-01-30 23:12:30');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'eius', '2005-03-21 09:33:18', '1990-04-29 01:51:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'similique', '2003-01-31 01:59:15', '1993-06-04 12:12:54');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'architecto', '2005-12-22 19:24:24', '1993-11-06 17:32:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'ipsum', '2017-05-29 00:17:27', '1973-01-09 22:58:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'libero', '2011-06-17 19:35:05', '2020-04-07 20:10:08');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'incidunt', '1986-08-08 00:29:34', '2005-03-24 21:20:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'error', '2018-11-02 10:47:50', '2014-11-11 09:13:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'odit', '2007-12-12 16:00:12', '1986-03-09 20:01:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'vel', '1982-02-27 20:56:28', '2007-01-21 20:46:51');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'autem', '1977-10-28 12:12:14', '1980-09-13 19:35:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'facere', '2007-06-13 09:21:23', '1999-07-03 05:35:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'velit', '1993-03-12 06:49:19', '2020-05-02 18:48:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'voluptas', '2020-08-19 23:00:03', '1990-08-17 15:57:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'nemo', '2000-10-07 01:31:44', '1970-01-21 18:18:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'ad', '1972-08-12 15:34:35', '2002-03-27 00:58:22');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'soluta', '2003-12-20 05:26:50', '1994-11-16 22:32:17');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'officiis', '1975-06-20 20:12:49', '2006-05-19 14:42:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'quae', '1987-02-09 09:53:40', '1998-10-29 12:58:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'tempore', '1983-09-23 16:17:04', '1976-09-29 00:43:33');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'dolorum', '1985-08-28 09:21:14', '2018-10-17 11:28:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'sit', '2012-03-26 05:44:57', '2020-11-05 18:37:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'eum', '1972-11-06 23:39:38', '1993-03-14 20:07:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'debitis', '1975-01-05 09:39:31', '1983-08-09 19:02:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'dolorem', '2019-05-06 19:56:43', '1980-01-24 03:09:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'magnam', '1977-09-26 11:25:09', '2010-01-07 13:53:35');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'sint', '1981-05-28 15:32:16', '1982-03-11 01:10:43');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'sunt', '2000-09-23 07:21:51', '1994-06-21 00:41:44');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'dicta', '1999-03-01 01:22:19', '1975-03-15 21:50:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'beatae', '2005-07-07 18:37:14', '2007-12-26 00:15:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'aperiam', '2004-05-18 10:48:06', '1999-11-20 07:15:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'corrupti', '2016-08-05 06:14:10', '1987-10-05 23:29:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'sapiente', '1994-11-12 00:00:28', '1982-11-11 11:35:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'temporibus', '1988-06-22 19:25:22', '1976-08-07 12:21:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'iusto', '1997-10-26 05:44:00', '1975-02-14 21:53:49');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'quia', '2009-02-01 19:06:25', '2002-04-11 14:33:11');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'laudantium', '2010-05-02 13:06:38', '1979-05-23 22:51:25');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'repellendus', '2014-02-28 12:57:15', '2013-11-02 17:17:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'modi', '2018-03-15 06:26:22', '1999-12-13 22:48:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'nihil', '2004-04-25 17:35:44', '1990-01-13 07:21:58');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'hic', '2017-10-27 22:44:13', '1996-12-29 16:43:26');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'impedit', '2001-08-29 11:20:45', '1981-04-14 14:34:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'in', '2015-03-28 18:31:26', '1973-01-02 14:25:37');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'et', '1970-11-14 21:46:23', '2014-09-12 22:37:23');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'ipsa', '1995-02-01 06:30:57', '1991-07-03 22:02:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'pariatur', '1985-07-15 22:24:19', '1978-06-14 01:48:05');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'optio', '1983-03-23 04:17:53', '2007-02-20 02:06:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'corporis', '1985-04-27 05:43:52', '2019-12-29 05:22:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'dolores', '1991-03-05 22:09:54', '2019-09-28 01:57:32');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'maxime', '2020-03-05 14:51:57', '2003-03-29 11:58:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'fuga', '2005-04-08 01:48:19', '2019-04-06 17:12:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'earum', '2003-12-14 23:09:47', '1972-04-06 17:38:31');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'necessitatibus', '2020-08-26 18:10:37', '2015-08-13 06:25:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'quaerat', '2017-11-09 01:04:07', '1998-04-28 07:14:55');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'veritatis', '1995-01-05 21:49:23', '1991-06-09 16:23:12');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'culpa', '1972-09-22 21:08:42', '2009-04-22 20:05:41');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'non', '1976-02-18 17:05:31', '1970-11-29 05:02:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'ut', '1984-04-30 19:08:16', '2020-04-30 00:43:03');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'a', '1997-03-02 04:51:45', '1974-03-16 08:22:28');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'voluptate', '1975-06-21 16:28:11', '2019-05-07 17:58:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'asperiores', '1976-01-15 04:55:57', '2012-04-15 17:47:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'distinctio', '1979-05-22 23:39:00', '2002-05-10 19:18:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'blanditiis', '1984-12-12 17:44:45', '2018-08-20 23:31:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'occaecati', '2000-12-09 02:44:28', '1994-04-27 18:06:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'quod', '1999-01-19 06:53:04', '1978-10-02 13:33:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'reprehenderit', '2018-12-02 14:01:02', '1975-08-27 03:33:00');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'omnis', '2013-12-29 12:11:19', '1977-03-11 05:41:20');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'quasi', '2012-04-12 00:50:28', '1975-12-05 14:35:52');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'ex', '2006-12-12 00:55:36', '1972-05-07 03:46:56');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'repudiandae', '1999-11-25 03:43:18', '1971-09-19 05:04:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'accusamus', '1995-01-19 20:37:01', '2001-10-22 02:42:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'deleniti', '2019-05-17 20:49:32', '2014-01-04 15:08:53');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'ducimus', '2017-07-16 12:46:52', '1992-12-28 19:58:06');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'saepe', '2016-12-20 07:35:42', '1986-04-06 10:32:38');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'aliquid', '1991-01-01 00:02:14', '2016-12-15 09:25:47');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'voluptatibus', '2007-06-26 04:55:16', '1977-03-17 10:19:14');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'nisi', '2016-12-16 00:16:39', '2019-03-17 10:27:02');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'nostrum', '2006-02-09 06:07:19', '1995-04-25 15:18:50');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'numquam', '2006-10-08 18:21:44', '2005-11-15 15:21:27');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'excepturi', '2019-03-08 00:19:09', '1997-01-08 23:10:09');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'quo', '2001-09-25 07:27:43', '2019-02-10 17:29:04');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'facilis', '1988-02-12 03:05:01', '2002-01-13 12:36:29');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'esse', '1980-06-01 09:02:33', '2012-07-08 10:40:45');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'rerum', '1983-02-07 09:01:32', '1981-02-07 00:28:21');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'dolore', '2013-02-18 11:35:57', '2019-10-01 20:12:57');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'provident', '2001-06-09 01:50:26', '1994-03-20 10:34:16');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'fugiat', '1997-07-05 18:12:44', '1987-07-14 17:57:01');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'recusandae', '1975-04-29 14:19:29', '1976-08-03 02:20:24');
INSERT INTO `friendship_statuses` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'voluptatum', '1979-09-30 21:59:05', '2011-09-12 16:02:58');


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя, который загрузил файл',
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Путь к файлу',
  `size` int(11) NOT NULL COMMENT 'Размер файла',
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Метаданные файла' CHECK (json_valid(`metadata`)),
  `media_type_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на тип контента',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Медиафайлы';

INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (1, 1, 'consequatur', 7, NULL, 1, '2019-11-19 12:55:47', '1990-12-15 05:45:17');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (2, 2, 'qui', 8, NULL, 2, '1994-10-04 07:49:51', '1989-02-19 19:08:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (3, 3, 'vel', 20451, NULL, 3, '1998-05-17 21:28:17', '2000-12-29 16:48:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (4, 4, 'velit', 215179420, NULL, 4, '2009-11-25 15:58:47', '1982-08-29 20:46:03');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (5, 5, 'reprehenderit', 555, NULL, 5, '1977-04-19 21:21:06', '2005-12-01 10:26:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (6, 6, 'qui', 94, NULL, 6, '1993-03-23 17:33:14', '1974-06-08 21:43:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (7, 7, 'ducimus', 23, NULL, 7, '1993-05-24 01:14:39', '1974-07-14 15:22:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (8, 8, 'quis', 827, NULL, 8, '1991-02-26 20:41:28', '1992-12-07 05:27:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (9, 9, 'est', 2525883, NULL, 9, '2013-04-22 12:47:38', '1981-02-11 14:13:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (10, 10, 'quae', 81606686, NULL, 10, '1997-10-06 14:42:26', '2017-01-27 06:06:59');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (11, 11, 'numquam', 0, NULL, 11, '2009-10-06 15:56:07', '2001-03-04 02:16:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (12, 12, 'eius', 551457, NULL, 12, '2006-05-22 19:59:12', '2015-05-11 17:23:48');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (13, 13, 'non', 86156066, NULL, 13, '1998-12-08 02:38:38', '1984-03-05 10:58:07');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (14, 14, 'placeat', 434, NULL, 14, '2014-06-22 11:25:30', '1977-01-05 16:24:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (15, 15, 'quaerat', 2159613, NULL, 15, '2006-12-28 06:00:10', '1984-05-29 17:51:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (16, 16, 'excepturi', 11491, NULL, 16, '2006-04-05 00:54:35', '1991-02-07 10:24:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (17, 17, 'asperiores', 8090, NULL, 17, '1995-10-27 16:01:30', '1988-12-03 13:31:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (18, 18, 'omnis', 0, NULL, 18, '2017-09-15 09:59:51', '1983-08-22 03:37:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (19, 19, 'quam', 297235898, NULL, 19, '1993-12-14 16:19:19', '1998-03-29 02:18:41');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (20, 20, 'fuga', 37097, NULL, 20, '1990-07-04 04:30:00', '1985-02-05 14:52:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (21, 21, 'et', 36018122, NULL, 21, '2017-05-03 07:33:58', '1975-11-11 12:48:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (22, 22, 'eaque', 0, NULL, 22, '2018-08-10 14:58:06', '2014-12-23 05:22:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (23, 23, 'et', 2, NULL, 23, '2008-10-05 15:46:13', '1984-05-12 00:21:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (24, 24, 'voluptas', 795737, NULL, 24, '1992-05-03 14:47:58', '1988-02-23 12:37:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (25, 25, 'ratione', 1693589, NULL, 25, '1991-06-09 12:05:45', '2015-12-15 15:16:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (26, 26, 'dolorem', 2725514, NULL, 26, '1985-04-06 12:11:09', '1997-08-06 04:57:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (27, 27, 'ipsa', 971, NULL, 27, '2003-06-03 04:05:00', '1995-11-14 13:33:20');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (28, 28, 'voluptatem', 718266, NULL, 28, '1971-05-07 13:07:10', '1981-05-04 02:03:33');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (29, 29, 'temporibus', 21355, NULL, 29, '1975-07-20 17:31:50', '1988-06-06 18:10:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (30, 30, 'expedita', 566768027, NULL, 30, '1987-12-15 04:57:35', '2013-10-03 06:59:13');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (31, 31, 'ut', 5, NULL, 31, '1979-08-01 12:45:33', '2018-03-01 06:47:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (32, 32, 'recusandae', 511728752, NULL, 32, '2004-05-28 23:38:08', '1987-03-18 02:23:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (33, 33, 'sit', 34842, NULL, 33, '2014-03-27 11:57:57', '2011-02-09 02:36:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (34, 34, 'quis', 656698, NULL, 34, '1999-03-13 06:50:34', '2008-04-23 06:09:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (35, 35, 'ea', 904082, NULL, 35, '2010-11-06 20:40:59', '2014-03-03 05:06:29');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (36, 36, 'autem', 0, NULL, 36, '1984-09-16 17:49:55', '1990-06-23 18:14:21');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (37, 37, 'repudiandae', 630801, NULL, 37, '1998-08-22 09:28:00', '1977-02-03 02:25:19');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (38, 38, 'tenetur', 71808, NULL, 38, '2017-08-31 10:26:08', '1974-07-07 19:22:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (39, 39, 'commodi', 0, NULL, 39, '2002-02-22 03:39:52', '1999-11-25 00:54:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (40, 40, 'quod', 4402498, NULL, 40, '1989-09-14 11:13:09', '2012-04-11 09:48:35');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (41, 41, 'laudantium', 36242, NULL, 41, '2016-01-07 15:05:13', '1978-08-28 22:50:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (42, 42, 'odit', 26409850, NULL, 42, '1994-07-02 23:55:41', '1986-05-25 00:57:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (43, 43, 'ut', 0, NULL, 43, '2002-11-15 23:42:31', '2004-05-28 06:57:54');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (44, 44, 'ipsum', 38351685, NULL, 44, '2019-01-13 20:47:10', '1973-11-05 17:40:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (45, 45, 'quia', 49182, NULL, 45, '1977-03-26 19:10:00', '1993-06-10 16:02:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (46, 46, 'excepturi', 390948865, NULL, 46, '1972-08-31 15:41:46', '1988-10-04 15:27:06');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (47, 47, 'ut', 63284, NULL, 47, '1979-11-09 16:47:29', '1974-07-01 14:41:52');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (48, 48, 'rerum', 206, NULL, 48, '1979-05-07 03:01:03', '1982-03-01 19:45:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (49, 49, 'accusantium', 93, NULL, 49, '1997-04-07 20:35:10', '1984-01-31 09:45:50');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (50, 50, 'et', 7169919, NULL, 50, '1993-07-20 03:45:23', '1983-09-20 13:33:11');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (51, 51, 'animi', 57377, NULL, 51, '1980-02-18 05:11:36', '2007-11-01 16:58:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (52, 52, 'amet', 6388, NULL, 52, '1993-06-20 19:38:52', '1982-07-13 09:06:31');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (53, 53, 'dolor', 314443, NULL, 53, '1994-01-28 21:12:57', '1980-02-12 15:12:38');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (54, 54, 'nisi', 0, NULL, 54, '2012-09-10 22:10:30', '1989-07-05 11:34:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (55, 55, 'eum', 48144477, NULL, 55, '1973-09-29 14:02:10', '1972-10-08 07:52:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (56, 56, 'sunt', 0, NULL, 56, '1985-07-22 04:36:09', '1981-08-19 17:45:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (57, 57, 'praesentium', 41016, NULL, 57, '2008-03-14 11:38:39', '1997-10-31 04:56:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (58, 58, 'a', 79939495, NULL, 58, '1989-03-07 08:37:28', '1973-02-17 13:46:14');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (59, 59, 'sunt', 4, NULL, 59, '2000-02-21 18:25:29', '1982-02-22 04:29:43');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (60, 60, 'aspernatur', 770941, NULL, 60, '1993-11-19 20:18:39', '2011-07-27 05:36:58');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (61, 61, 'pariatur', 481916286, NULL, 61, '2006-03-12 21:38:50', '1973-08-31 08:43:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (62, 62, 'voluptatum', 11, NULL, 62, '1970-04-02 13:48:06', '1976-08-31 18:00:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (63, 63, 'aut', 810, NULL, 63, '1996-09-10 13:37:42', '1994-12-24 23:22:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (64, 64, 'ducimus', 5560398, NULL, 64, '2008-09-07 19:48:05', '2011-10-27 09:11:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (65, 65, 'quia', 13, NULL, 65, '1971-09-02 09:54:44', '1985-11-28 20:29:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (66, 66, 'inventore', 8654, NULL, 66, '1980-06-08 17:08:21', '1974-08-08 10:34:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (67, 67, 'beatae', 24, NULL, 67, '1999-08-24 16:38:55', '1970-05-13 10:03:18');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (68, 68, 'est', 5119, NULL, 68, '2009-03-11 21:22:30', '1999-12-04 19:21:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (69, 69, 'consectetur', 1803572, NULL, 69, '2009-02-02 08:53:05', '2014-08-22 10:12:34');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (70, 70, 'consequatur', 2, NULL, 70, '2002-01-09 22:21:32', '1998-11-07 15:06:53');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (71, 71, 'at', 99338, NULL, 71, '1996-11-07 05:06:50', '1975-09-21 07:43:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (72, 72, 'non', 81, NULL, 72, '2003-11-12 04:05:10', '2017-09-18 20:22:27');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (73, 73, 'commodi', 4980071, NULL, 73, '1993-04-23 18:34:09', '1981-12-22 15:43:28');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (74, 74, 'non', 9, NULL, 74, '2017-07-15 18:27:26', '2012-10-13 20:13:45');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (75, 75, 'ratione', 484, NULL, 75, '1974-02-14 17:52:35', '2016-01-14 11:57:44');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (76, 76, 'nihil', 72328, NULL, 76, '1984-12-23 02:01:55', '2010-03-16 11:37:22');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (77, 77, 'et', 702713, NULL, 77, '2016-07-08 16:58:18', '1978-01-25 01:03:57');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (78, 78, 'officia', 3, NULL, 78, '2000-07-02 03:26:49', '1978-09-07 05:53:16');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (79, 79, 'delectus', 252835, NULL, 79, '1981-03-01 14:42:28', '1977-08-15 05:16:42');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (80, 80, 'odit', 0, NULL, 80, '1999-04-25 18:29:02', '1994-06-26 02:11:08');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (81, 81, 'sint', 36901, NULL, 81, '2016-08-18 20:13:42', '1988-12-02 10:37:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (82, 82, 'esse', 1100569, NULL, 82, '2015-01-24 09:23:51', '1972-07-31 03:01:25');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (83, 83, 'inventore', 96232751, NULL, 83, '2003-06-01 23:04:16', '1970-05-13 04:05:10');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (84, 84, 'in', 31378658, NULL, 84, '1987-02-15 11:53:43', '1985-10-16 02:43:51');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (85, 85, 'accusamus', 3235140, NULL, 85, '2016-03-30 13:09:08', '2009-10-14 04:23:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (86, 86, 'deleniti', 42829, NULL, 86, '1972-05-27 15:03:24', '2003-04-07 10:15:36');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (87, 87, 'voluptatem', 61928583, NULL, 87, '2020-09-15 03:42:06', '2004-06-09 16:47:56');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (88, 88, 'voluptatibus', 15553162, NULL, 88, '1981-08-28 03:59:28', '1980-03-06 00:04:00');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (89, 89, 'vitae', 381, NULL, 89, '2014-11-17 00:56:07', '2008-11-13 18:42:05');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (90, 90, 'omnis', 4352004, NULL, 90, '2019-01-25 12:13:39', '2012-09-04 10:07:26');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (91, 91, 'facere', 16, NULL, 91, '2006-10-27 19:41:07', '1976-02-04 18:40:15');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (92, 92, 'ipsa', 862153, NULL, 92, '1986-06-27 23:06:55', '2013-10-15 07:38:01');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (93, 93, 'delectus', 362953, NULL, 93, '1985-12-02 11:22:34', '2015-10-29 16:43:47');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (94, 94, 'quo', 99397, NULL, 94, '1974-05-13 15:54:47', '1997-12-13 11:48:24');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (95, 95, 'et', 234, NULL, 95, '2015-08-30 23:11:42', '1991-12-09 19:01:02');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (96, 96, 'in', 139526, NULL, 96, '2017-09-09 03:13:20', '2018-12-19 07:20:09');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (97, 97, 'quisquam', 160384, NULL, 97, '2017-11-29 00:27:59', '2000-09-08 19:26:12');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (98, 98, 'magnam', 18061518, NULL, 98, '1989-03-03 20:38:35', '2014-12-04 08:39:40');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (99, 99, 'blanditiis', 96734, NULL, 99, '1984-09-26 09:04:09', '2019-12-18 04:05:49');
INSERT INTO `media` (`id`, `user_id`, `filename`, `size`, `metadata`, `media_type_id`, `created_at`, `updated_at`) VALUES (100, 100, 'asperiores', 2614653, NULL, 100, '1978-10-29 16:42:31', '2000-06-19 19:29:31');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Название типа',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Типы медиафайлов';

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'qui', '2006-05-27 06:29:08', '2001-01-14 18:14:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (2, 'quae', '1991-03-22 15:26:38', '1993-05-02 14:45:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (3, 'odio', '2013-10-20 17:05:32', '2011-08-30 08:13:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (4, 'minus', '2021-01-03 06:44:39', '1997-07-18 21:10:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (5, 'consequuntur', '1979-05-25 14:26:57', '2006-09-12 22:24:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (6, 'error', '1991-08-17 06:21:35', '1983-04-16 13:35:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (7, 'et', '1979-07-13 06:34:52', '1980-05-15 05:54:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (8, 'ipsum', '1973-08-28 16:20:18', '1982-06-29 09:49:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (9, 'magni', '1978-12-20 05:10:55', '2017-02-27 22:49:52');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (10, 'impedit', '1991-11-22 21:20:29', '2013-05-08 03:47:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (11, 'mollitia', '1992-05-17 10:11:33', '1996-02-18 20:49:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (12, 'repellat', '1984-10-14 03:59:40', '1981-02-07 22:28:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (13, 'quod', '1973-02-26 15:29:38', '2012-06-25 07:00:21');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (14, 'est', '1998-05-01 04:19:16', '1986-11-05 22:07:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (15, 'possimus', '1974-01-08 06:27:44', '1997-12-27 14:35:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (16, 'nulla', '1994-09-04 11:52:03', '1992-02-11 08:59:22');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (17, 'facere', '1984-04-17 07:03:47', '1982-07-24 22:50:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (18, 'nesciunt', '1994-11-01 23:07:02', '1981-08-30 19:36:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (19, 'dolor', '1990-03-15 00:21:22', '1990-06-11 15:04:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (20, 'perspiciatis', '1979-12-03 05:39:14', '1975-05-08 07:52:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (21, 'reprehenderit', '2016-10-22 13:48:09', '1980-01-20 12:19:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (22, 'voluptatem', '1984-07-13 00:38:50', '1976-04-10 16:28:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (23, 'quia', '1988-04-01 01:31:20', '2015-03-31 16:42:51');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (24, 'at', '2017-11-25 08:29:48', '1984-12-24 17:01:56');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (25, 'iure', '1980-09-29 00:03:07', '1988-01-15 10:25:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (26, 'occaecati', '1995-05-12 04:30:12', '2006-10-01 11:06:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (27, 'sed', '1996-07-31 20:24:51', '1992-08-10 12:51:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (28, 'voluptate', '2014-03-06 15:12:01', '2008-12-28 18:01:19');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (29, 'illum', '1999-01-21 18:28:45', '1987-08-18 15:32:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (30, 'fugiat', '1990-10-23 00:19:17', '1993-01-26 20:18:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (31, 'tempore', '2020-12-27 00:28:53', '2016-01-01 15:35:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (32, 'aut', '1976-09-09 15:17:14', '1973-07-24 03:22:12');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (33, 'optio', '2002-08-23 14:36:24', '1997-12-20 01:26:27');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (34, 'dolores', '1987-11-19 15:52:18', '1989-05-14 09:43:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (35, 'esse', '2009-09-21 21:51:57', '2000-03-14 14:01:43');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (36, 'pariatur', '1994-04-25 11:14:41', '2008-05-08 08:21:31');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (37, 'quaerat', '2012-08-17 18:48:03', '1998-04-16 06:03:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (38, 'id', '1992-03-11 09:11:52', '2010-04-23 10:53:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (39, 'voluptatibus', '1994-06-09 11:30:09', '1974-03-07 13:14:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (40, 'sint', '1979-05-23 16:18:48', '1984-03-03 10:21:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (41, 'quos', '1996-05-29 04:55:07', '2008-07-10 14:57:54');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (42, 'temporibus', '1996-07-15 13:40:37', '1983-02-11 15:03:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (43, 'ullam', '2001-02-05 14:38:50', '2001-01-04 23:49:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (44, 'nihil', '1988-03-02 04:59:08', '2006-03-20 17:18:17');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (45, 'blanditiis', '1982-03-23 05:56:52', '1981-06-12 18:50:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (46, 'voluptas', '1990-09-15 01:49:13', '2012-12-11 19:22:10');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (47, 'accusamus', '2003-09-27 12:27:06', '1982-02-02 03:41:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (48, 'explicabo', '1984-01-06 11:46:37', '1985-02-08 05:24:49');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (49, 'consequatur', '1992-07-11 06:26:36', '1975-01-05 15:03:00');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (50, 'sit', '1976-06-11 11:25:52', '1990-01-08 12:10:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (51, 'itaque', '1998-08-27 07:45:38', '1974-09-06 10:55:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (52, 'vero', '2000-12-24 19:49:42', '2010-09-25 05:14:09');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (53, 'ea', '1974-11-23 13:56:10', '2009-03-18 17:00:48');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (54, 'dolorum', '1989-10-05 02:40:56', '2000-06-08 10:39:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (55, 'cupiditate', '2020-12-13 13:14:46', '2013-10-20 18:04:28');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (56, 'nobis', '2009-06-16 10:49:35', '1978-04-22 20:42:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (57, 'distinctio', '2001-06-03 15:41:45', '2020-07-05 14:29:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (58, 'aspernatur', '1992-01-01 01:33:31', '1981-10-05 00:22:24');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (59, 'debitis', '1979-03-14 03:13:38', '2018-02-19 03:54:25');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (60, 'necessitatibus', '2008-05-19 21:25:04', '2002-08-27 12:36:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (61, 'reiciendis', '1978-04-13 20:21:44', '1981-06-03 01:01:34');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (62, 'veniam', '2001-12-16 14:08:29', '1993-12-01 12:24:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (63, 'similique', '1977-08-12 12:25:46', '1975-05-10 11:34:50');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (64, 'doloribus', '1987-07-17 08:50:43', '1995-12-26 05:51:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (65, 'ratione', '2008-05-12 07:43:06', '2006-03-23 10:01:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (66, 'ut', '2018-09-29 14:59:12', '2010-04-15 07:56:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (67, 'a', '2004-06-28 07:23:00', '1990-06-30 06:10:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (68, 'expedita', '2004-05-01 00:56:17', '2016-03-16 16:50:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (69, 'dignissimos', '1974-06-02 20:40:59', '1985-12-27 06:45:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (70, 'sequi', '1999-10-23 00:06:06', '1991-03-13 23:57:30');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (71, 'dicta', '1987-06-12 07:00:35', '1996-10-27 22:31:55');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (72, 'autem', '1993-04-29 11:25:20', '2004-11-21 22:13:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (73, 'earum', '1987-03-03 23:41:04', '2004-05-17 14:51:18');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (74, 'non', '1984-02-02 22:36:33', '2010-05-29 16:30:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (75, 'repudiandae', '2002-10-29 15:48:51', '2004-05-01 12:12:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (76, 'vel', '1977-11-01 21:57:31', '2016-09-25 13:50:06');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (77, 'molestiae', '1984-07-12 17:56:32', '2019-06-07 11:53:02');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (78, 'vitae', '1986-09-23 17:47:08', '1992-07-20 01:36:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (79, 'recusandae', '2011-11-27 07:31:59', '2016-09-01 22:26:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (80, 'commodi', '1995-09-30 21:22:02', '1979-10-21 05:40:57');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (81, 'dolore', '1991-05-15 17:16:06', '1996-02-13 22:14:29');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (82, 'nostrum', '1982-04-30 16:28:07', '1985-11-29 21:13:39');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (83, 'animi', '1998-02-09 19:34:33', '1989-09-22 00:03:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (84, 'laudantium', '1981-07-06 06:48:52', '1972-11-26 11:38:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (85, 'iste', '1987-12-14 04:55:19', '2000-03-05 00:17:44');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (86, 'unde', '1990-05-14 06:56:20', '2003-02-23 01:43:20');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (87, 'corporis', '2008-07-12 06:43:20', '1975-12-30 16:01:36');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (88, 'rerum', '2015-05-30 19:55:49', '1980-02-03 12:47:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (89, 'ad', '1988-09-12 15:30:36', '2018-05-04 19:50:45');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (90, 'rem', '1996-07-12 02:39:15', '1999-09-06 10:20:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (91, 'saepe', '1971-11-15 05:13:45', '2004-08-09 22:54:35');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (92, 'velit', '1992-07-23 22:30:38', '1990-09-29 20:21:46');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (93, 'officia', '2009-12-31 20:16:41', '1972-02-14 22:07:32');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (94, 'eos', '2013-08-23 03:47:00', '1970-11-10 03:55:03');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (95, 'hic', '2016-07-11 04:06:00', '2014-09-20 22:42:26');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (96, 'nam', '1970-02-17 14:37:44', '2007-11-16 22:12:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (97, 'incidunt', '2009-10-04 02:54:07', '1991-06-14 20:05:47');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (98, 'molestias', '2017-06-08 10:20:46', '2005-09-05 15:34:01');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (99, 'exercitationem', '2017-01-26 05:10:30', '2019-12-16 11:13:15');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES (100, 'nemo', '1991-06-10 00:29:48', '1974-02-26 23:31:50');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `from_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на отправителя сообщения',
  `to_user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на получателя сообщения',
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Текст сообщения',
  `media_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на вложенный медиа файл',
  `is_important` tinyint(1) DEFAULT NULL COMMENT 'Признак важности',
  `is_delivered` tinyint(1) DEFAULT NULL COMMENT 'Признак доставки',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Сообщения';

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (1, 9, 9, 'Nihil asperiores non quae. Voluptate corporis rem quasi qui blanditiis est quibusdam.', 1, 0, 1, '1990-06-09 15:34:31', '2007-02-12 12:15:05');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (2, 2, 9, 'Vel aut quia et eum et animi eaque quia. Quasi qui quos officiis ab porro odit. Aliquam repellendus amet fugit qui accusamus optio. Qui voluptatibus aliquam debitis corporis velit.', 2, 0, 1, '2008-11-10 12:42:03', '2010-08-01 05:38:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (3, 2, 1, 'Odio eligendi odio neque et qui. Ipsa fugit et harum. Sunt molestiae ea dicta ducimus. Consequatur numquam necessitatibus dolorem soluta.', 2, 0, 0, '1974-08-20 11:01:35', '1987-08-22 10:15:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (4, 6, 1, 'Esse impedit maiores quo voluptas. Sit repellendus est ut eligendi a. Voluptatem unde ullam quas incidunt.', 6, 1, 1, '2001-06-02 04:10:51', '1980-01-21 05:10:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (5, 2, 8, 'Qui qui magni optio magnam quam. Voluptas sed vel qui voluptatibus quae. Beatae ullam esse est fuga. Quia ad rerum nisi officiis.', 6, 1, 1, '2011-01-06 04:17:49', '1995-09-18 17:59:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (6, 1, 8, 'Qui porro cumque perferendis magnam cum voluptatum qui. Quas iusto mollitia et delectus. Ullam ullam repudiandae ut reprehenderit fugiat ipsum. Vero dolorem voluptatum perspiciatis consequatur et et.', 5, 1, 0, '1982-09-21 21:04:59', '2008-09-19 10:03:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (7, 9, 6, 'Minus repellendus a repellat ratione est hic est. Corrupti sit iusto amet. Eveniet hic quae sint est. Aut et perspiciatis quod facere iusto.', 6, 1, 1, '1974-10-06 13:12:48', '1985-07-30 16:35:42');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (8, 8, 7, 'Provident et et eos sint vitae. Ab ut quo sequi aut. Dolores et aut dolores harum.', 8, 1, 1, '2006-08-23 08:07:29', '2011-08-22 00:43:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (9, 3, 4, 'Est eum a corrupti corporis. Velit veritatis facilis sed id eum. Vel assumenda nam voluptatem. Doloribus nisi et explicabo minus ut.', 7, 1, 1, '1999-04-21 08:28:44', '1975-10-03 05:15:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (10, 7, 9, 'Aliquam qui blanditiis nulla voluptatum. Nobis beatae perspiciatis eveniet voluptates.', 4, 0, 1, '2012-07-15 03:55:17', '1979-01-26 05:47:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (11, 3, 5, 'Repudiandae eos repudiandae quam ducimus enim reprehenderit. Esse neque qui non suscipit qui ab. Ullam vero perspiciatis ut ut. Fugiat in ut itaque doloribus ullam occaecati rerum.', 4, 0, 1, '1976-09-04 08:25:33', '1989-08-29 21:19:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (12, 3, 8, 'Consequatur rerum omnis enim omnis est magnam consequatur. Ex vel voluptatem autem qui. Eius cum quis vel magni iste quasi. Laborum aut reprehenderit est est quis sit et.', 8, 1, 0, '1970-09-23 23:16:23', '1979-02-13 13:41:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (13, 6, 4, 'Suscipit tempora dignissimos magnam voluptatem ducimus amet. Sint temporibus consequatur quibusdam enim numquam quasi. Id unde voluptas ab magni.', 9, 0, 1, '1985-05-25 12:33:56', '1975-04-04 11:40:36');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (14, 4, 8, 'Eaque corrupti repellendus modi. Nobis iusto eveniet suscipit vel et ut. Modi vitae delectus omnis magnam id corporis sunt.', 5, 1, 1, '2012-11-20 12:45:41', '1991-10-13 21:28:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (15, 7, 6, 'Sed sunt rerum id fugit. Et aut natus voluptatum consectetur.', 3, 1, 1, '1980-10-10 20:56:43', '2007-03-27 00:14:43');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (16, 2, 7, 'Nulla itaque id consequatur earum deserunt voluptas facilis enim. Illum occaecati deserunt quia sunt suscipit neque. Dignissimos vero beatae explicabo quia omnis.', 3, 1, 0, '1996-03-22 19:14:18', '2010-06-06 20:25:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (17, 5, 2, 'Possimus omnis atque neque velit occaecati. Veniam et consequatur et dolorem velit occaecati nesciunt. Hic laborum odio voluptas.', 7, 0, 1, '1985-03-24 20:10:58', '1990-09-10 00:59:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (18, 5, 3, 'Dolores facilis qui repellendus. Quidem voluptatem pariatur eos suscipit. Temporibus dolor repellat sapiente.', 2, 0, 0, '1995-03-28 11:40:41', '1974-11-16 12:15:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (19, 7, 8, 'Perferendis maiores earum cupiditate a. Voluptatum beatae occaecati voluptate iste id excepturi quis. Necessitatibus corporis omnis nihil unde tempora. Rerum consequatur alias voluptate minima molestiae quia.', 7, 0, 0, '1979-05-14 07:58:18', '1991-03-17 09:52:55');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (20, 3, 1, 'Ducimus consectetur et corrupti ut. A numquam laborum qui consequatur. Rem qui tempora consequuntur vel quas. Est iusto accusamus enim libero temporibus facere aliquam quia.', 2, 0, 0, '2010-10-28 07:11:23', '1970-09-09 19:52:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (21, 7, 7, 'Unde velit quis illo perspiciatis reprehenderit. Mollitia autem voluptas officiis dolor. Nostrum delectus eligendi dolore ratione eum vero.', 9, 0, 0, '1991-04-30 13:48:06', '1982-05-07 03:53:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (22, 5, 7, 'Expedita nihil autem harum dolor. Aliquid laboriosam corporis fuga omnis recusandae vitae ea. Maiores vero ex magnam ullam molestiae sunt voluptatem molestias.', 6, 0, 1, '1972-03-26 08:28:02', '1975-07-15 17:00:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (23, 5, 4, 'Quis qui nobis magnam id. Expedita quo qui aliquam porro.', 4, 0, 1, '1978-08-27 17:55:39', '2012-07-30 07:19:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (24, 8, 9, 'Rem quas facilis laborum maxime. Quibusdam dolorum recusandae dignissimos. Et perspiciatis doloremque placeat modi dolor.', 4, 0, 0, '2010-12-19 23:17:23', '2009-12-26 15:40:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (25, 9, 2, 'Fugit neque velit officiis mollitia rem. Architecto rerum animi atque esse commodi temporibus voluptatibus.', 3, 0, 0, '1971-08-25 00:46:24', '1984-09-14 02:46:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (26, 8, 7, 'Harum et culpa quia provident. Excepturi laboriosam reiciendis unde et eaque sit. Ullam iste et quo quae ab fugit aut.', 8, 0, 0, '2014-05-12 04:59:16', '1985-06-24 05:01:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (27, 1, 9, 'Et qui in perferendis porro dolorem ex beatae minima. Asperiores ex est minus quas vitae a. Odio inventore et tempore vel doloribus ipsum.', 3, 0, 1, '2002-10-03 07:01:00', '1997-02-19 23:59:07');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (28, 3, 6, 'Libero non maxime hic vitae dolore a. Vitae laudantium animi eos omnis est aliquid. Sit iure et pariatur quo libero. Ipsum rerum fugit voluptatem harum. Pariatur ut dolore minus asperiores ut architecto.', 2, 1, 0, '1975-10-21 15:58:45', '1974-11-16 07:11:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (29, 2, 6, 'Fuga voluptatem id maiores. Iste quia sint quis fugiat aut natus hic. Tenetur eaque illo ut.', 7, 1, 0, '1998-01-13 23:59:28', '1995-07-29 12:41:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (30, 2, 7, 'Natus eos ducimus quasi non quod saepe inventore. Corrupti inventore magnam et facere dolores aut.', 1, 1, 1, '2009-11-30 07:38:17', '1973-08-31 15:32:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (31, 9, 5, 'Iste consequuntur voluptatem nostrum necessitatibus nam eos officia ullam. Consequatur qui voluptate nemo illo. Neque cum aut expedita deleniti asperiores officiis similique. Sequi modi sint est velit aliquid ad.', 5, 1, 0, '2012-02-18 06:31:34', '1973-08-22 21:27:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (32, 3, 3, 'Est sed eos beatae nobis voluptatibus aut. Aut culpa reprehenderit voluptas consectetur dolores quis. Rem molestiae molestiae eius sint rerum. Commodi maxime molestias perspiciatis numquam voluptate eos.', 5, 0, 0, '1974-10-09 18:36:10', '1996-08-01 08:30:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (33, 8, 7, 'Tempora facere quas quia dolor rerum aut. In temporibus quas a a sint itaque. Rem rerum debitis facilis est officiis et ut. Optio est laboriosam asperiores odio omnis corrupti nesciunt.', 8, 1, 0, '2015-11-15 03:30:29', '1993-05-20 01:48:56');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (34, 5, 2, 'Iste maiores natus aliquam tempore. Recusandae voluptatem recusandae sed non eos.', 8, 1, 1, '1993-02-28 04:27:59', '1991-02-08 09:20:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (35, 6, 4, 'Qui cum voluptatem vel quibusdam quis expedita quia. Sed quas autem libero et sapiente. Sint vitae voluptas iste dolor officiis.', 9, 0, 1, '2014-11-18 20:57:42', '2015-08-04 17:37:33');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (36, 4, 7, 'Cum excepturi tempore ut et. Omnis placeat a cum in fuga dolorem officia aspernatur. Quibusdam ab animi sit iusto non quia.', 1, 0, 1, '2014-01-16 07:28:53', '1992-07-08 07:49:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (37, 1, 2, 'Harum non rem accusantium praesentium quasi eos. In veritatis inventore officiis atque laborum harum. Expedita voluptate odit quidem commodi accusamus.', 3, 0, 1, '1984-09-11 17:19:23', '1988-06-16 19:38:11');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (38, 1, 6, 'Provident odit velit molestiae id modi. Vel incidunt officiis est reprehenderit et molestiae. Omnis nisi doloremque numquam aut quae accusantium. Architecto et ut ut veritatis et alias esse et. Saepe laboriosam vero fugiat voluptates exercitationem adipisci delectus.', 3, 1, 0, '2000-01-05 11:13:06', '2008-11-30 05:30:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (39, 1, 5, 'Mollitia vel praesentium consequuntur assumenda. Nisi aut velit culpa.', 8, 1, 1, '2004-07-23 02:06:08', '1975-03-04 17:18:35');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (40, 5, 9, 'Maiores iure velit est eligendi similique. Ea quia voluptatibus sint laboriosam debitis modi. Nesciunt et et error facere. Maxime voluptatem architecto id non consequatur alias maiores ut.', 2, 0, 0, '2010-03-27 23:24:52', '1987-10-29 12:02:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (41, 9, 9, 'Alias quia iusto soluta. Rerum et ex eos numquam.', 6, 1, 1, '1972-09-22 09:20:23', '2018-01-09 09:22:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (42, 2, 8, 'Ea itaque impedit voluptas dolores unde qui. Nam fugit provident eaque qui ut qui iste. Molestiae et consequatur qui doloribus accusamus consequatur occaecati. Omnis reprehenderit dolore dicta cupiditate ratione sint ut.', 1, 0, 0, '2002-03-20 07:14:29', '1995-11-03 20:43:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (43, 7, 9, 'Ut temporibus labore voluptatem et. Enim eius dolor culpa ut omnis consequatur non sunt.', 5, 0, 0, '1978-05-24 00:05:28', '1995-05-19 18:49:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (44, 8, 1, 'Aut tempora et corporis facere necessitatibus molestias enim est. Mollitia sed rerum enim iure. Nostrum eum facere ea id saepe ab qui.', 9, 1, 0, '1995-12-14 01:06:59', '1994-08-07 19:39:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (45, 7, 9, 'Non omnis architecto rerum error quam voluptates asperiores. Sed sunt aspernatur in tenetur dolore sed. Rerum dolorum rerum voluptate excepturi suscipit voluptas.', 2, 0, 0, '1981-10-05 01:28:42', '1980-08-13 02:51:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (46, 5, 2, 'Odit illo qui ipsam quam. Molestiae sapiente explicabo consequatur doloribus optio cupiditate. Odit labore ratione aliquid ea temporibus. Occaecati laborum rerum ut accusamus quo dolorum dolores.', 2, 0, 0, '1974-12-01 12:16:22', '1991-03-05 07:18:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (47, 5, 1, 'Omnis magni vitae non impedit quo. Et sit sequi consequatur neque ab. Fugit distinctio quasi nam quia saepe aut. Autem in eos omnis voluptatibus quo.', 6, 1, 1, '1993-11-15 03:47:34', '2004-12-05 13:05:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (48, 4, 9, 'Non laudantium commodi quam eaque. Qui minus voluptatibus ut voluptatem quia sequi tenetur. Eius in nulla ut et autem repellendus iste.', 1, 0, 1, '1999-06-06 20:22:24', '2014-11-29 21:21:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (49, 3, 4, 'Voluptas placeat iusto dolorem saepe at aut. Illum ad maiores animi inventore.', 2, 1, 1, '1991-02-17 14:16:21', '2014-08-26 01:05:41');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (50, 7, 4, 'Aut architecto adipisci quasi voluptatibus minus sit temporibus. Et eos ducimus aut quasi. Similique reiciendis sint unde at quo recusandae dolorem.', 1, 1, 0, '1993-01-16 13:22:33', '2010-01-10 21:43:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (51, 6, 5, 'Sunt debitis porro dolor sint est voluptas omnis eveniet. Dolorem occaecati est iste sed esse est.', 2, 0, 1, '2004-01-21 18:51:10', '2007-05-13 09:44:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (52, 1, 7, 'Voluptatem iusto nesciunt delectus omnis maxime eveniet. Ut sit quia nesciunt in nam atque error. Eum voluptas sunt deserunt et recusandae.', 1, 0, 1, '1974-11-29 10:40:32', '2018-06-23 23:33:50');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (53, 5, 6, 'Perspiciatis rerum repellat repellat odit nostrum blanditiis non maiores. Consequatur quos assumenda velit assumenda. Nulla eum iusto eos aut repellat et.', 2, 1, 0, '1970-12-20 05:50:44', '2011-04-04 22:25:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (54, 5, 7, 'Illum perspiciatis qui qui et quia aut. Possimus ad id non aut assumenda. Quia tempore ea temporibus quos doloribus.', 3, 0, 0, '1995-05-03 05:10:03', '1976-05-16 11:38:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (55, 4, 9, 'Est hic qui omnis ipsum debitis numquam et. Sed necessitatibus illum quia corporis sapiente dolorum. Commodi eos facilis illum nam pariatur non quibusdam.', 3, 0, 0, '1992-01-10 06:03:17', '2017-07-23 14:55:52');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (56, 7, 1, 'Velit sint perspiciatis eligendi. Ea nemo voluptate sequi earum pariatur velit. Provident tenetur et id in ut eum. Vel cumque quia aut ut numquam odit.', 4, 1, 1, '1980-08-22 23:17:11', '2011-03-09 17:04:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (57, 6, 3, 'Sapiente molestiae adipisci ducimus et rerum accusamus. Sit voluptatibus aut numquam qui consequuntur quia atque. Qui reprehenderit numquam omnis et impedit. Qui veritatis inventore tenetur aut.', 8, 1, 0, '1985-12-14 09:20:09', '2003-09-24 17:33:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (58, 5, 3, 'Tempore quas quia quisquam quam et. Quo ea iusto nihil. Ipsa est rerum est. Soluta consectetur iusto ea quo sint explicabo et.', 6, 0, 0, '1989-09-11 08:58:19', '2005-02-12 21:24:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (59, 6, 9, 'Quam magni mollitia modi iure rerum deleniti sunt. Iure dolores occaecati repudiandae est dolor. Dicta esse necessitatibus suscipit error. Quia rerum a et placeat aut reiciendis.', 3, 1, 1, '1984-05-18 09:24:42', '1972-11-25 16:44:53');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (60, 4, 3, 'Quasi maiores minus debitis eius aut sapiente. Velit nam rerum ut architecto impedit.', 5, 0, 1, '1977-10-20 22:00:51', '1992-10-20 16:26:09');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (61, 2, 4, 'Quis molestiae nihil repellat recusandae non aliquam et. Rem sint et ipsa neque qui aut. Vel consequuntur et corporis itaque eius cupiditate velit. Tenetur perferendis doloremque inventore quae dignissimos expedita.', 5, 0, 1, '1993-12-25 05:45:23', '2020-06-15 07:21:29');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (62, 3, 7, 'Similique officia nam unde sunt nostrum repellendus consequuntur. Odio aliquam totam qui ipsa incidunt saepe. Aperiam aliquid ad sit blanditiis non. Reiciendis qui ipsum sit eos incidunt quia.', 4, 0, 1, '1970-11-21 09:15:44', '1994-01-31 15:18:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (63, 1, 4, 'Atque et quos error. Dolores asperiores aut quidem eum repudiandae accusamus. Quaerat dolore deleniti inventore dicta recusandae alias dolorem.', 8, 1, 1, '1974-07-23 11:30:47', '1981-10-07 03:02:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (64, 1, 4, 'Voluptatem sed sapiente voluptatem consequatur voluptas consequatur debitis. Dignissimos quam accusantium repellat qui libero reiciendis nisi non. Molestiae non distinctio enim distinctio dolorem vitae. Aspernatur similique est consectetur et.', 4, 1, 1, '1972-08-01 06:26:13', '1998-11-23 17:46:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (65, 2, 3, 'Et laboriosam reiciendis nam vel magnam ut. In et et officiis incidunt. Et mollitia minima maxime dolor. Placeat unde placeat reprehenderit rem quis voluptatem occaecati.', 5, 0, 0, '2003-02-22 15:35:19', '1983-02-25 03:11:04');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (66, 5, 3, 'Amet dolor inventore voluptas illo ullam perspiciatis consequatur. Recusandae necessitatibus nihil quaerat qui. Officia in sint harum debitis quae animi. Asperiores deserunt deserunt nulla est corrupti consequatur. Excepturi quis hic enim eum rerum.', 9, 0, 1, '2011-04-12 13:52:23', '2008-04-15 04:11:10');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (67, 3, 1, 'Reiciendis nam quo sunt soluta qui animi accusantium est. Dicta necessitatibus molestias reprehenderit. Eum quo aut voluptates qui delectus quo.', 4, 0, 1, '1994-01-19 06:30:44', '2010-12-27 15:34:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (68, 2, 1, 'Omnis dolore harum qui delectus rem a. Dolorem est quod et inventore commodi qui. Repellendus rerum sint dolor esse eos. Sed sit accusamus ipsam et rerum omnis. Cum voluptatem consequatur dolores et.', 3, 1, 0, '2016-06-02 23:25:54', '2017-09-16 00:03:16');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (69, 2, 2, 'Est ab ut dolorum modi ullam mollitia beatae inventore. Fugiat explicabo adipisci inventore voluptates consequatur. Repellendus est non alias et voluptatum sequi dolor. Incidunt fugiat sunt quaerat ad.', 5, 0, 0, '2008-01-20 23:57:45', '2004-12-03 18:45:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (70, 7, 9, 'Dolores at nisi numquam nihil nobis quos qui quia. Est in id debitis blanditiis quo temporibus modi.', 4, 1, 1, '1989-04-23 19:59:09', '2001-04-09 01:18:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (71, 3, 1, 'Tempore fugit quia fugit perferendis libero est illum reiciendis. Repellat non vel ipsam. Eligendi dolorem in maxime et incidunt et ad quia. Ut ut enim ex.', 5, 1, 0, '1982-05-26 06:37:40', '1975-11-02 19:08:47');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (72, 8, 8, 'Fuga id sit voluptates itaque nihil sequi fuga tempora. Molestiae vel minima hic. Qui porro suscipit ut repellat sint dolor.', 7, 0, 0, '1973-01-28 22:25:34', '2017-10-31 11:50:06');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (73, 3, 7, 'Aut hic mollitia commodi numquam aperiam. Dolores corporis inventore nihil dolorem omnis quidem quia. Voluptas sequi dolor nemo quidem voluptatem aut.', 8, 0, 1, '2010-08-06 19:14:04', '1988-01-06 06:36:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (74, 3, 1, 'Ut totam ex qui quod tempora labore laudantium. Ut vero maxime dolores enim accusamus. Et dicta placeat labore non rerum voluptas. Dicta quibusdam nihil ut.', 9, 0, 1, '1979-09-09 19:15:22', '1974-07-06 07:06:40');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (75, 8, 5, 'Aut est id repellendus quia mollitia dolorem. Atque aspernatur facere voluptatem voluptate dolores porro ea. Consequatur autem necessitatibus iure qui repudiandae. Excepturi id quos eum libero vel deleniti omnis enim.', 1, 1, 1, '1977-07-04 11:30:39', '2018-09-26 14:30:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (76, 9, 7, 'Temporibus ut qui atque nisi molestiae. Ex voluptates dolore vel aut est. Dolore porro earum in qui. Expedita ut ducimus porro omnis et numquam sed.', 9, 0, 0, '1984-08-18 17:49:57', '1974-06-15 17:27:23');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (77, 8, 4, 'Dolor molestiae illum aut esse possimus. Vitae et quam earum voluptatem qui rerum enim. Omnis et velit est iusto et aut maiores.', 2, 1, 1, '1973-04-30 13:06:36', '1982-07-31 13:35:01');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (78, 7, 7, 'Quo dolore praesentium et culpa atque aut sit. Aut minima voluptatem dolore voluptatibus. Maxime et officia dignissimos ullam cum accusantium. Atque enim nostrum rem et necessitatibus autem omnis. Eum consectetur aliquid vitae saepe voluptatem quo placeat autem.', 9, 1, 0, '2008-11-11 14:23:00', '2016-05-24 17:29:26');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (79, 1, 4, 'Et commodi qui impedit modi ipsum tempore nobis. Ducimus dolores voluptates quo sit fuga.', 3, 0, 1, '2005-11-07 21:51:27', '2018-05-12 10:36:03');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (80, 5, 9, 'Provident consectetur nemo accusantium sunt quibusdam. Occaecati sint rerum similique.', 2, 1, 1, '2013-04-05 01:57:06', '1971-09-01 12:08:15');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (81, 4, 1, 'Soluta quis commodi eos vel. Pariatur in voluptatem a esse rerum. Labore doloremque tenetur laudantium laudantium omnis.', 8, 1, 0, '2010-06-22 11:04:57', '1987-05-13 05:53:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (82, 3, 1, 'Nostrum dolorum quis maiores esse dolor optio. Alias iste consectetur soluta aut aut exercitationem. Sit est provident sed. Exercitationem quo rem repellendus quam. Impedit blanditiis cum et eos est nulla.', 8, 0, 0, '1991-02-12 11:43:50', '1971-11-12 11:52:51');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (83, 5, 7, 'Excepturi sunt doloremque itaque autem et. Alias quae quibusdam omnis recusandae repudiandae. Omnis repellat qui numquam quis eum. Et dolores eaque ut qui.', 7, 1, 1, '1999-06-11 20:48:06', '1986-09-12 11:04:00');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (84, 9, 3, 'Eligendi corporis est consequuntur temporibus iure iusto adipisci. Officia porro est at quia et neque quas eum. Repellat assumenda id vero ab sit eum tenetur quas.', 9, 1, 0, '1986-07-15 09:13:33', '1983-03-23 03:28:54');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (85, 9, 1, 'Architecto corrupti blanditiis et recusandae similique nisi. Consequuntur aliquid aut dolore voluptatem mollitia dolore. Quia quisquam non eius ut.', 7, 0, 1, '1973-01-14 06:10:43', '1983-11-15 06:47:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (86, 1, 3, 'Molestias ea nemo enim. Sapiente autem et inventore assumenda in ducimus distinctio. Facilis aut iste aut non.', 7, 1, 0, '1998-02-16 20:22:27', '1978-05-22 13:17:18');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (87, 7, 5, 'Facilis nihil in ut qui et ipsum. Illo qui tempora aut. Quisquam neque possimus sint aut neque eum quam sit. Voluptate cumque et cupiditate tempora aliquid cum modi illo.', 7, 1, 0, '1995-08-13 11:42:15', '1987-08-03 01:31:57');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (88, 4, 6, 'Odio ratione vitae qui ea rerum aut vel quasi. Enim maiores unde nihil officiis eum similique. Tempore est et deserunt qui repudiandae corporis. Voluptas voluptas quisquam animi suscipit aut.', 7, 0, 1, '1992-08-16 10:53:28', '1997-09-29 05:09:21');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (89, 6, 6, 'Velit laudantium culpa voluptas occaecati quis. Expedita sed et itaque hic cum et sit. Vel et sed repellendus quibusdam velit voluptate. Dolorem tempora reiciendis quia quam.', 2, 0, 1, '2014-09-20 11:32:44', '1979-08-29 02:01:46');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (90, 9, 6, 'Vero at eligendi architecto soluta. Molestias minima facere magni et reprehenderit quaerat dolor qui. Qui voluptatem consequatur illum et iste nisi. Nihil placeat excepturi iure et.', 5, 0, 1, '1986-09-14 13:36:06', '2019-07-02 16:03:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (91, 2, 5, 'Qui magni est vel omnis deserunt. Eius numquam et magnam. Repellendus saepe fugit facilis blanditiis et. Delectus pariatur enim cum.', 6, 0, 1, '1993-12-31 05:18:03', '1978-04-17 18:57:02');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (92, 5, 7, 'Et sequi magni quasi dignissimos eaque. Id vel qui nihil ex. Vel odio rerum hic consequatur quis aut. Distinctio expedita sint facere eligendi et ipsum. Mollitia quo enim reprehenderit voluptas consequuntur veniam voluptatem culpa.', 1, 1, 0, '1983-03-30 15:26:11', '2004-05-12 04:46:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (93, 5, 3, 'Impedit dolorem tenetur qui harum saepe rerum consequatur. Nihil ullam tenetur nobis rerum occaecati est omnis. Est adipisci iure vitae esse est. Laboriosam ipsam in quaerat cumque voluptate ut sed.', 7, 0, 0, '2017-09-07 19:43:26', '2003-12-30 11:21:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (94, 4, 1, 'Omnis et et doloremque est ut. Illum voluptas et aut cum consequuntur perferendis. Dolores aut nemo et.', 7, 0, 0, '1984-05-29 19:31:26', '1972-11-11 11:04:13');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (95, 1, 2, 'Natus vero debitis magni eaque et ut. Eos veritatis qui eos deleniti doloribus earum. Excepturi pariatur asperiores enim nulla ipsum.', 7, 0, 0, '2001-01-20 13:21:43', '1995-03-20 02:09:37');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (96, 6, 3, 'Aut voluptatibus occaecati officiis in perferendis. Officia tempore officia aut molestias. Suscipit cumque placeat distinctio eos.', 1, 1, 1, '2017-12-08 15:38:22', '1992-05-23 04:16:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (97, 4, 5, 'Pariatur libero ipsum repellat quisquam accusantium corporis. Necessitatibus quo alias ipsam dolor suscipit voluptatem. Quod quia dolor a consectetur quia suscipit.', 7, 1, 0, '1979-11-29 14:31:31', '1973-01-13 09:58:39');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (98, 8, 8, 'Sint consequatur eligendi quo quae. Quia magni impedit fuga mollitia natus voluptatem iste iure. Sunt provident dicta est nulla dicta. Blanditiis quaerat dolorum eos aut natus.', 7, 1, 0, '1997-12-08 14:06:16', '2005-06-14 02:35:31');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (99, 6, 2, 'Omnis qui inventore ut accusantium voluptas ratione. Repudiandae odio consequuntur quas quia occaecati. Reiciendis illum id omnis maiores deserunt eos.', 6, 1, 0, '1971-02-15 15:27:43', '2021-01-14 19:10:25');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `media_id`, `is_important`, `is_delivered`, `created_at`, `updated_at`) VALUES (100, 7, 6, 'Hic dignissimos recusandae qui perferendis accusantium et quis provident. Ut quos cupiditate dolor officiis magnam aperiam at. Qui placeat quo laudantium tenetur eum reprehenderit iure consequatur.', 2, 0, 0, '2019-10-23 13:30:10', '1989-03-16 09:41:03');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` int(10) unsigned NOT NULL COMMENT 'Ссылка на пользователя',
  `gender` char(1) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Пол',
  `birthday` date DEFAULT NULL COMMENT 'Дата рождения',
  `photo_id` int(10) unsigned DEFAULT NULL COMMENT 'Ссылка на основную фотографию пользователя',
  `status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Текущий статус',
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Город проживания',
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Страна проживания',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Профили';

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (1, '', '2001-04-30', 9, 'Blanditiis dolorem voluptates ', 'Port Ubaldoborough', '77', '1985-04-05 18:19:12', '1974-11-16 23:47:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (2, '', '1973-08-25', 2, 'Saepe sit nemo vero voluptatem', 'Sandychester', '53843', '1979-01-29 07:35:18', '2017-09-04 19:39:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (3, '', '2015-09-17', 7, 'Assumenda ea aut voluptatem vo', 'Johnsonside', '16151867', '2005-08-02 02:39:32', '1995-12-27 09:46:17');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (4, '', '1997-07-08', 5, 'Nihil omnis quasi adipisci ius', 'South Albinaton', '443878533', '1974-10-07 10:49:20', '2001-11-04 13:20:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (5, '', '1974-06-08', 8, 'Cupiditate eum ipsa tenetur of', 'North Orlandbury', '91446975', '1986-11-10 20:06:29', '1999-03-02 13:22:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (6, '', '2012-01-01', 9, 'Temporibus praesentium sequi p', 'Wunschchester', '767641875', '2012-10-17 06:25:38', '1970-04-14 14:27:16');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (7, '', '1970-12-17', 5, 'Voluptatum vero voluptatem rem', 'Blancabury', '2055380', '1978-01-21 03:37:45', '2009-09-27 04:22:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (8, '', '1990-03-21', 9, 'Provident sed beatae vel ea mi', 'New Alfredaton', '98703632', '1970-04-30 20:47:50', '2003-02-04 02:39:41');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (9, '', '1970-12-26', 5, 'Nesciunt aut aut facilis iusto', 'Christiansenbury', '173169627', '1999-12-24 00:04:04', '2012-06-14 04:52:57');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (10, '', '2001-10-21', 4, 'Sed corrupti distinctio totam ', 'Brekketon', '', '1989-11-09 12:50:46', '1972-06-08 14:13:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (11, '', '2012-11-05', 4, 'Enim molestias qui dolores exp', 'West Gaston', '', '1988-12-05 12:48:10', '2000-11-29 17:36:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (12, '', '1995-06-12', 6, 'Consequatur voluptate aut maxi', 'West Josianemouth', '1', '2003-07-25 09:16:53', '2020-02-13 08:57:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (13, '', '1983-02-28', 9, 'Quisquam nulla ad atque nesciu', 'Kariside', '585395526', '1998-02-06 16:09:11', '1984-01-09 04:48:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (14, '', '1995-04-03', 2, 'Et totam et nobis iste repudia', 'Hillsfurt', '2', '2015-04-28 01:22:41', '2014-12-30 19:29:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (15, '', '1978-06-01', 3, 'Est odio neque velit corporis ', 'South Jeramie', '429687265', '1987-12-18 14:55:47', '1979-08-19 07:13:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (16, '', '1991-11-28', 9, 'Sed voluptatem maiores perspic', 'Port Leland', '450', '1977-02-09 18:41:53', '1984-04-05 03:48:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (17, '', '2015-08-17', 1, 'Aspernatur perferendis quo mag', 'South Karianne', '26', '2001-05-14 06:51:18', '2018-03-10 16:38:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (18, '', '2005-10-02', 2, 'Ratione rem nam rerum rerum. E', 'Gaylordview', '', '1996-03-15 15:15:50', '1985-05-11 23:50:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (19, '', '1973-08-17', 6, 'Enim ut voluptatibus sit corru', 'Lake Christafurt', '5709671', '1970-07-22 10:13:51', '2004-11-08 17:37:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (20, '', '1992-06-02', 2, 'Nihil dolores nulla ut blandit', 'East Hallieside', '', '1994-08-17 02:13:17', '1994-07-02 03:25:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (21, '', '2005-11-29', 6, 'Sit eligendi sapiente cumque e', 'Lake Tavares', '325285147', '2012-10-14 07:14:43', '1987-10-05 06:54:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (22, '', '1971-02-24', 7, 'Rerum vitae rerum neque culpa ', 'Lowestad', '27', '1994-08-30 11:31:38', '1984-05-22 16:40:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (23, '', '2014-11-30', 7, 'Quidem autem non et qui. Ipsam', 'Kreigerhaven', '6929', '2007-08-25 18:10:00', '2018-04-12 18:41:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (24, '', '1992-03-20', 3, 'Harum consequuntur voluptatem ', 'Willowtown', '85069717', '1990-06-15 15:11:57', '2011-01-02 00:57:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (25, '', '2017-10-28', 9, 'Eum aut rerum illo eligendi ne', 'Benniechester', '1958', '2015-03-20 22:26:39', '1972-10-18 09:13:30');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (26, '', '2003-04-12', 8, 'Ab rerum doloremque molestiae ', 'Lenoraton', '', '1988-09-05 03:00:49', '1989-10-30 19:05:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (27, '', '1983-02-03', 6, 'Dolor enim fuga odit et delect', 'Balistreriside', '89456', '1981-07-23 23:04:59', '2001-04-07 01:42:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (28, '', '2001-01-01', 1, 'Veniam placeat voluptas tempor', 'Port Shaniyaland', '928802772', '1973-04-20 23:04:05', '2008-05-04 18:38:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (29, '', '1995-02-01', 7, 'Ut enim tenetur voluptatem vol', 'Ofeliachester', '159736', '2007-07-29 09:59:15', '1998-04-10 09:35:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (30, '', '1996-04-30', 4, 'Dolor sunt in itaque sed. Volu', 'West Raheemchester', '', '2019-12-13 22:24:57', '1993-04-28 05:19:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (31, '', '2006-12-13', 9, 'Pariatur recusandae nobis dolo', 'East Gay', '75467804', '1987-02-02 14:03:44', '2000-02-21 05:43:58');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (32, '', '1976-08-31', 7, 'Soluta aliquid magnam omnis om', 'North Tryciamouth', '1', '1980-06-26 19:30:34', '1992-07-21 19:43:04');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (33, '', '1982-07-10', 6, 'Distinctio maxime quia assumen', 'Haliemouth', '8', '2003-04-24 08:08:56', '1974-01-20 13:59:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (34, '', '1988-03-02', 1, 'Aspernatur id beatae eligendi ', 'Harristown', '1031', '1978-05-24 01:38:31', '1986-10-31 10:45:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (35, '', '1979-07-18', 9, 'Eum consequatur rerum harum se', 'North Godfrey', '86', '2003-01-27 15:33:55', '2009-02-18 02:24:27');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (36, '', '1999-01-06', 9, 'Necessitatibus praesentium tot', 'Haneshire', '445', '1970-09-11 04:05:32', '2018-09-10 19:06:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (37, '', '2019-08-12', 9, 'Voluptatum occaecati sit elige', 'Hartmannmouth', '66', '1978-02-21 09:20:00', '1996-04-06 00:49:07');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (38, '', '1985-04-26', 4, 'Quis quasi eveniet enim laboru', 'Isacbury', '9804936', '2006-07-04 16:49:33', '2006-03-13 23:36:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (39, '', '1979-01-26', 3, 'Ullam dolor rerum et culpa pra', 'North Kyler', '74', '1997-11-21 18:16:13', '1974-06-27 10:39:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (40, '', '1972-02-11', 2, 'Ipsam quaerat ratione ut volup', 'New Daltontown', '1914100', '1990-09-07 06:20:53', '1989-12-14 04:59:50');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (41, '', '1979-04-07', 2, 'Et assumenda fugit nisi nihil ', 'North Mose', '216625', '1971-06-25 17:06:25', '2003-04-24 00:03:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (42, '', '1999-03-17', 8, 'Quo tempore odit et sapiente n', 'Lake Eunatown', '46', '1975-09-09 19:18:25', '2002-05-20 13:56:54');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (43, '', '2014-11-30', 1, 'Iusto cumque ad eos est minus ', 'Colleenfurt', '615653', '2013-03-09 06:41:35', '2015-06-20 04:24:09');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (44, '', '1985-07-09', 2, 'Quae sunt non qui sequi quia q', 'Olsontown', '45708107', '2002-11-05 13:48:20', '1986-07-08 16:27:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (45, '', '2010-08-20', 8, 'Minima necessitatibus exercita', 'Roscoestad', '77735621', '1977-09-20 02:29:10', '2015-02-28 09:28:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (46, '', '1982-08-08', 3, 'Sequi ut sint nostrum fugit. A', 'Balistrerimouth', '406', '2012-11-08 17:21:00', '1992-10-01 02:50:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (47, '', '1996-06-04', 8, 'Amet est dolores nihil nulla m', 'Janetfurt', '81', '1991-04-11 02:19:29', '2016-03-17 13:09:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (48, '', '2008-01-15', 8, 'Consequatur quibusdam sit mole', 'Schultztown', '875894102', '2006-08-05 23:56:36', '1973-02-10 02:06:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (49, '', '2003-11-26', 7, 'Nostrum distinctio accusamus v', 'Robbtown', '', '1987-11-02 14:10:49', '2005-12-14 16:03:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (50, '', '2009-11-01', 2, 'Voluptas id occaecati nam exce', 'North Jordan', '349', '1976-05-28 05:23:45', '1999-12-28 09:44:22');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (51, '', '1980-02-08', 3, 'Et nihil exercitationem rem pr', 'South Rooseveltfurt', '22', '2015-01-01 02:25:24', '2009-05-24 00:39:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (52, '', '1988-11-20', 5, 'Nesciunt eligendi ut magni et.', 'North Pascalefort', '8', '1987-05-16 19:22:36', '1997-05-12 15:27:59');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (53, '', '1982-03-18', 4, 'Fugit nesciunt culpa dolorem p', 'Port Baileehaven', '', '1984-08-27 06:28:31', '2000-12-23 04:00:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (54, '', '2012-09-27', 3, 'Aut doloremque aut dolores in.', 'South Johnson', '21', '2007-04-06 18:11:02', '2006-07-17 15:24:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (55, '', '1982-05-18', 1, 'At mollitia sed ut atque ut. M', 'Langstad', '98601930', '1979-03-15 09:46:40', '1994-12-03 19:45:26');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (56, '', '2002-02-15', 1, 'Debitis vel iure et est ullam.', 'South Pasquale', '32580318', '1972-02-12 20:11:53', '2017-04-07 22:58:43');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (57, '', '1994-05-02', 7, 'Nemo beatae magnam est ullam n', 'Jamiemouth', '48691195', '2009-09-08 11:49:19', '1974-06-26 12:37:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (58, '', '1974-07-10', 4, 'Et et facere vel architecto su', 'Rosieton', '164', '2012-12-24 22:36:14', '1993-09-18 21:00:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (59, '', '2021-01-02', 9, 'Dolor tenetur magni veniam dis', 'South Orenport', '607812797', '2012-09-23 15:56:33', '2010-03-20 13:09:48');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (60, '', '1979-04-16', 1, 'Eligendi error dolore dolor qu', 'West Nickton', '8', '2013-06-26 04:07:03', '1984-09-06 16:16:00');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (61, '', '2002-08-05', 4, 'Veritatis et sit accusamus pra', 'East Kalebfurt', '42', '2001-04-09 18:30:23', '2001-04-06 12:14:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (62, '', '2005-06-09', 3, 'Aliquam ullam assumenda sint c', 'Itzelland', '603', '1976-02-02 17:46:46', '1995-04-15 12:38:53');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (63, '', '2015-02-22', 7, 'Incidunt autem velit ut vitae.', 'Ziemannstad', '5', '2009-07-02 07:50:26', '1972-01-29 14:45:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (64, '', '2015-08-15', 3, 'Omnis non voluptatem blanditii', 'Ziemeton', '3098', '2010-10-16 20:11:52', '1997-04-09 12:40:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (65, '', '2002-08-04', 3, 'Velit illum id asperiores reic', 'South Ryderville', '1445', '2019-07-31 22:57:59', '2013-07-16 14:04:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (66, '', '1979-12-03', 9, 'Dolores et minus ut quisquam. ', 'Port Ulicesland', '67', '1992-12-12 11:56:08', '1998-04-25 23:27:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (67, '', '2000-03-22', 9, 'Quas quia ab consequatur non. ', 'East Vilma', '837755390', '1985-05-31 03:12:33', '1990-04-17 01:03:18');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (68, '', '2017-03-28', 7, 'Vero voluptas consequatur est ', 'Lake Delfina', '95', '2008-01-09 06:07:34', '1974-04-01 20:42:49');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (69, '', '1982-01-10', 9, 'Ipsum dignissimos quibusdam ad', 'Leschtown', '', '1973-09-10 00:38:07', '1990-12-04 04:09:32');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (70, '', '2018-07-16', 6, 'Nam nesciunt voluptate maxime ', 'South Daija', '7', '1981-09-04 22:25:53', '1993-05-10 23:35:34');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (71, '', '2012-11-27', 9, 'Debitis ea sint quo odit. Eius', 'West Jayceburgh', '9785', '2007-10-01 07:03:01', '1976-09-17 14:29:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (72, '', '1996-03-06', 1, 'Consequuntur nulla modi dicta ', 'New Alysonbury', '103201264', '2019-01-30 14:41:00', '2011-08-24 20:39:03');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (73, '', '1977-04-14', 3, 'Perspiciatis pariatur tenetur ', 'East Timmothyton', '', '2015-09-13 23:42:43', '1978-06-09 13:29:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (74, '', '1987-03-28', 6, 'Veniam voluptates mollitia eli', 'North Sammie', '3196212', '1992-01-18 22:29:00', '1994-07-25 07:55:52');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (75, '', '1975-06-05', 8, 'Dolores eius quia autem suscip', 'East Brookechester', '623', '2002-11-23 15:52:58', '1994-10-28 23:06:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (76, '', '1995-11-18', 5, 'Beatae in id ab illum qui cupi', 'East Melba', '941', '1979-04-09 13:56:12', '1985-12-19 01:14:31');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (77, '', '1987-11-12', 8, 'Voluptatum excepturi fuga sint', 'Edgarstad', '6310243', '1994-03-28 04:14:39', '2018-10-11 20:26:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (78, '', '2000-02-18', 8, 'Qui et necessitatibus ut ut vo', 'Stammchester', '850012', '1985-01-12 20:08:42', '1999-07-31 10:03:55');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (79, '', '2011-07-31', 4, 'Minus soluta voluptatem deleni', 'Reaganchester', '', '2006-08-19 01:59:31', '2015-10-29 08:39:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (80, '', '1981-04-09', 7, 'Officia esse rerum ex assumend', 'West June', '99', '2006-02-26 23:24:07', '1985-07-30 13:39:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (81, '', '1973-09-23', 2, 'Et consectetur pariatur volupt', 'South Rigoberto', '', '2004-12-11 11:14:52', '1997-12-08 03:32:14');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (82, '', '1972-07-11', 4, 'Sunt ipsa ea illo placeat dolo', 'Paucekport', '65', '1993-03-29 01:33:50', '1997-12-04 11:30:25');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (83, '', '2013-07-22', 2, 'Blanditiis fugit recusandae ex', 'New Patmouth', '43318', '1991-12-13 01:32:50', '1990-01-07 14:46:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (84, '', '1981-12-07', 1, 'Qui adipisci placeat voluptas ', 'Lefflerview', '3494', '1998-07-30 19:46:15', '1982-10-09 07:15:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (85, '', '2016-11-06', 5, 'Nulla ut id ut aut magnam. Eos', 'Carolynport', '743', '2013-07-21 21:12:43', '2005-12-14 19:59:05');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (86, '', '2002-06-01', 3, 'Iure incidunt modi nihil. Earu', 'Lake Milfordchester', '442681801', '2001-12-25 03:50:23', '1981-12-22 23:12:44');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (87, '', '1991-09-22', 7, 'Architecto sunt placeat qui ip', 'South Aleen', '4', '1985-07-12 11:03:14', '1995-02-01 01:50:10');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (88, '', '2002-05-04', 3, 'Dolorem natus dolor at est nes', 'Rennerchester', '796659', '1989-07-02 08:47:17', '1998-05-13 10:38:15');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (89, '', '2014-06-09', 5, 'Voluptate quae nisi ratione. E', 'Gerlachton', '2869', '2002-01-03 20:09:38', '1979-05-30 12:22:40');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (90, '', '1978-05-22', 8, 'Nisi ut perferendis aut asperi', 'Port Reinhold', '454059', '1984-02-17 17:41:20', '1982-05-25 02:56:01');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (91, '', '1998-05-09', 2, 'Est accusantium et aut. Repell', 'East Dawson', '5', '2004-06-17 15:20:42', '2008-04-23 00:38:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (92, '', '1996-06-30', 5, 'Possimus sit quia quos dolorum', 'Marleyburgh', '768895098', '1974-05-23 16:25:21', '1979-10-08 07:24:45');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (93, '', '1976-09-14', 8, 'Consequatur delectus nam ea te', 'Yeseniaview', '798229', '1997-06-25 16:51:53', '2007-09-29 00:00:13');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (94, '', '1985-11-13', 8, 'Ut sed commodi quisquam simili', 'South Wellington', '3581971', '1977-07-16 02:06:38', '1994-02-05 21:04:12');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (95, '', '2004-04-11', 3, 'Nisi accusamus cupiditate beat', 'Bergnaumbury', '370009', '2010-01-15 19:23:03', '1991-11-03 17:16:28');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (96, '', '2009-11-29', 3, 'Et corporis dolor laudantium i', 'West Bell', '336551', '1986-03-22 03:51:21', '1995-02-06 08:09:11');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (97, '', '1976-07-11', 9, 'Sit consectetur nobis nostrum ', 'North Gaylordmouth', '7', '2008-06-10 22:20:42', '1975-12-21 19:16:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (98, '', '1986-03-15', 6, 'Consequatur incidunt omnis iur', 'Port Maeve', '685684', '1979-07-28 15:43:18', '2013-09-30 09:54:21');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (99, '', '1996-02-29', 4, 'Omnis occaecati eaque perferen', 'South Hester', '71925297', '1982-09-16 23:03:47', '2006-12-25 21:09:08');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `status`, `city`, `country`, `created_at`, `updated_at`) VALUES (100, '', '1982-01-22', 7, 'Velit et quod omnis voluptas n', 'East Emmanuelle', '70084', '1987-01-18 21:25:13', '1996-11-12 10:55:48');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Идентификатор строки',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Имя пользователя',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Фамилия пользователя',
  `patronymic_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Отчество пользователя',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Почта',
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Телефон',
  `created_at` datetime DEFAULT current_timestamp() COMMENT 'Время создания строки',
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Время обновления строки',
  `last_login_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Последний вход',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Пользователи';

INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (1, 'Makenna', 'Lind', 'esse', 'isabella.pfannerstill@example.com', '+93(8)4141057706', '2005-02-15 17:01:25', '2001-06-11 08:29:14', '1984-09-24 11:10:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (2, 'Sallie', 'Wehner', 'sunt', 'eileen67@example.com', '729-821-7309', '1991-06-08 12:54:01', '1982-08-30 13:01:32', '1983-07-29 20:45:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (3, 'Jessyca', 'Lindgren', 'alias', 'helmer.rau@example.com', '256-215-0681x332', '1972-12-12 20:58:14', '2003-12-12 15:43:46', '2006-05-06 10:40:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (4, 'Hellen', 'Fay', 'voluptas', 'terrence97@example.org', '(285)041-7565', '1974-07-08 11:13:29', '2006-02-27 09:04:54', '1977-08-31 12:27:09');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (5, 'Kacie', 'Ledner', 'dolore', 'randal.trantow@example.net', '(955)103-5624', '2014-11-21 16:47:28', '1993-07-27 00:24:16', '1993-09-16 12:56:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (6, 'Adrien', 'Kihn', 'blanditiis', 'celestino.kuhn@example.org', '+02(7)1169008029', '2008-12-05 20:22:31', '1986-08-28 06:28:12', '2013-05-29 07:30:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (7, 'Alberto', 'Zieme', 'voluptatibus', 'filomena.murphy@example.net', '765.770.8937', '1988-12-07 13:11:05', '1977-10-12 22:13:20', '2012-09-26 11:47:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (8, 'Samanta', 'Barton', 'blanditiis', 'drew.bahringer@example.net', '285.408.2783x8325', '1985-04-29 01:57:00', '2016-04-22 06:14:59', '2002-03-12 09:33:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (9, 'Samanta', 'Cruickshank', 'iure', 'gonzalo50@example.net', '818-144-3988', '2018-03-10 10:21:57', '1972-01-03 13:05:38', '1992-01-23 03:18:40');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (10, 'Ahmad', 'Howe', 'aut', 'ufeest@example.com', '05668327609', '1970-11-30 23:31:59', '1977-09-13 16:10:47', '2000-03-25 09:32:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (11, 'Bryce', 'Strosin', 'sint', 'conn.davion@example.net', '224-239-2770x549', '2017-03-09 06:26:05', '1972-05-30 10:06:37', '2014-07-05 14:00:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (12, 'Hermina', 'Lemke', 'ea', 'adah.lowe@example.net', '(808)417-7423', '1990-04-05 05:48:52', '1998-01-02 06:07:42', '1979-08-31 00:11:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (13, 'Annabell', 'Kshlerin', 'voluptate', 'aschroeder@example.org', '(044)880-2459x98759', '2020-03-01 00:28:29', '2011-12-14 01:44:09', '1996-07-28 05:44:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (14, 'Donato', 'Aufderhar', 'enim', 'adelbert.jacobs@example.com', '924.064.5002x25286', '1997-12-05 11:53:03', '1975-07-18 18:22:12', '1978-12-04 13:12:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (15, 'Dorthy', 'Nitzsche', 'libero', 'natasha.mcclure@example.net', '(546)210-6974x55452', '1973-10-23 20:58:11', '1997-01-13 04:35:24', '1986-02-07 04:10:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (16, 'Herman', 'Blick', 'adipisci', 'lfriesen@example.com', '+48(7)0122939142', '1986-04-12 22:47:48', '2020-08-30 06:43:00', '1985-07-06 00:29:23');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (17, 'Deven', 'Deckow', 'quas', 'gladys.blanda@example.com', '505-672-1086x0653', '2002-04-19 18:50:10', '2009-03-23 07:07:25', '1977-03-18 14:22:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (18, 'Skylar', 'Lubowitz', 'mollitia', 'allan27@example.com', '(732)778-7633', '2006-09-28 04:01:07', '2020-01-25 04:13:21', '1982-11-04 18:14:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (19, 'Jovanny', 'Satterfield', 'soluta', 'turner.stefanie@example.net', '+35(9)2687544974', '1972-09-26 14:19:50', '2002-09-27 11:22:06', '2002-08-21 20:17:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (20, 'Maynard', 'McGlynn', 'voluptas', 'jerde.gillian@example.net', '(198)814-1715', '1981-01-18 17:55:39', '2002-05-03 14:07:25', '2020-07-11 07:57:07');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (21, 'Maci', 'Hamill', 'enim', 'kamille49@example.org', '09376957657', '1972-06-16 14:20:05', '1976-11-14 16:06:01', '1994-03-07 23:41:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (22, 'Jalen', 'Bartoletti', 'dolores', 'no\'keefe@example.net', '1-192-367-7550x7765', '2015-06-01 20:02:36', '2014-08-19 14:00:27', '2011-12-24 00:52:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (23, 'Conor', 'Smith', 'optio', 'lcrist@example.net', '142.861.6712', '2004-09-20 18:36:44', '1973-06-09 08:57:04', '2019-12-18 00:14:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (24, 'Demond', 'Huel', 'neque', 'ao\'connell@example.net', '1-224-539-7293x82072', '1974-09-15 03:42:35', '2000-04-23 21:30:41', '1973-04-20 08:43:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (25, 'Marlen', 'Ritchie', 'voluptas', 'lori.glover@example.net', '1-871-296-8219x0378', '1976-08-31 09:36:19', '2008-12-22 18:57:03', '1994-02-12 01:58:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (26, 'Brenna', 'Towne', 'sapiente', 'roxane14@example.net', '779.494.2562x09905', '1991-10-26 06:23:24', '2014-09-11 01:18:59', '1973-03-12 02:10:41');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (27, 'Else', 'Douglas', 'consequuntur', 'zboncak.melany@example.com', '073-374-8344x60452', '1990-12-30 06:58:28', '2004-04-23 15:41:22', '2005-11-18 07:32:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (28, 'Reilly', 'Mills', 'eos', 'bwhite@example.net', '02779176092', '2016-07-12 07:46:55', '1973-08-30 15:41:15', '1975-02-23 22:42:55');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (29, 'Geo', 'Smitham', 'eum', 'ijacobson@example.com', '07163228067', '1988-11-29 19:27:44', '2009-01-11 10:41:17', '1978-03-30 08:10:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (30, 'Ezequiel', 'Reichel', 'temporibus', 'johnston.haylee@example.org', '049-441-0901', '1998-04-01 20:22:32', '1970-09-23 15:19:15', '2020-07-27 23:24:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (31, 'Maribel', 'Swift', 'velit', 'morissette.ava@example.net', '1-256-217-8327x012', '2006-08-09 09:01:06', '2009-10-14 04:06:16', '1992-04-19 08:47:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (32, 'Caitlyn', 'Kerluke', 'laboriosam', 'dayana30@example.net', '1-354-905-4884x84126', '1997-11-27 10:40:10', '2018-09-20 14:27:37', '1974-11-14 18:54:11');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (33, 'Christiana', 'Smitham', 'laborum', 'vjohnson@example.net', '(020)992-1749', '1975-03-04 12:05:39', '2007-07-03 04:07:00', '1999-02-08 05:26:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (34, 'Maddison', 'Jacobs', 'dolorum', 'llind@example.net', '872-538-0805', '1980-03-07 21:49:10', '1989-07-17 18:39:21', '1977-05-29 15:52:22');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (35, 'Caterina', 'Hahn', 'blanditiis', 'beryl.monahan@example.net', '(597)708-1811x242', '2017-06-23 02:55:57', '2018-07-21 09:53:02', '1990-08-03 11:56:28');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (36, 'Clemens', 'Heller', 'eius', 'desiree.white@example.com', '1-336-664-7624x3678', '2020-02-23 12:08:14', '1981-05-18 07:30:37', '1987-04-23 16:44:15');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (37, 'Dangelo', 'Treutel', 'possimus', 'adelia88@example.net', '273.807.9273x450', '2013-07-04 07:23:06', '1982-12-17 16:38:15', '1982-04-10 19:41:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (38, 'Mittie', 'Langworth', 'illo', 'reese98@example.com', '273-005-2166', '1981-01-01 23:23:26', '2004-10-20 20:28:41', '1995-03-12 09:46:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (39, 'Verla', 'Howell', 'sequi', 'kade.eichmann@example.net', '366-051-0952', '2004-08-13 05:23:27', '1971-12-17 03:13:50', '1971-12-27 01:01:24');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (40, 'Vallie', 'Brekke', 'eos', 'mabel27@example.org', '+43(9)6744402509', '2003-12-30 13:08:48', '2010-01-23 06:28:45', '1997-04-19 02:42:45');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (41, 'Prince', 'Mills', 'sit', 'powlowski.jennings@example.org', '1-039-548-6083x22839', '1980-09-22 03:46:05', '1983-01-14 05:12:35', '2001-04-02 18:22:37');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (42, 'Adeline', 'Bashirian', 'facilis', 'sigmund.schmeler@example.com', '1-035-461-8849', '2020-01-17 10:34:15', '1994-10-28 17:04:06', '1994-05-18 13:27:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (43, 'Sadye', 'Cremin', 'alias', 'alena50@example.com', '283-931-0864x686', '1970-01-08 03:59:42', '2014-05-04 23:15:02', '1973-06-11 18:26:04');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (44, 'Mathias', 'Gleichner', 'aspernatur', 'alene99@example.net', '1-265-359-3624', '2005-03-22 22:14:50', '1980-02-14 22:32:23', '1979-12-17 15:00:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (45, 'Kiley', 'Runolfsdottir', 'esse', 'lia.dare@example.org', '1-371-046-4874x0027', '1976-01-13 19:47:31', '2001-08-26 06:41:00', '1991-05-24 09:03:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (46, 'Shanie', 'Rogahn', 'sint', 'shany.maggio@example.net', '(365)559-3584x38055', '1982-08-15 06:58:07', '2013-11-11 16:48:37', '2020-06-22 23:22:56');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (47, 'Augusta', 'Torp', 'dolorem', 'william.hayes@example.org', '+36(4)7980048128', '2008-01-23 00:11:24', '2009-08-24 10:22:36', '2005-08-11 20:26:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (48, 'Kane', 'Renner', 'rem', 'malinda.o\'connell@example.net', '(873)844-1043', '1998-10-08 09:29:46', '1970-12-20 18:46:20', '2013-09-14 07:11:47');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (49, 'Kyla', 'Baumbach', 'odio', 'marion.schroeder@example.com', '004-195-7008', '2008-09-08 17:36:51', '2012-08-18 12:33:31', '1985-05-12 19:43:43');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (50, 'Avery', 'Brekke', 'minima', 'welch.katlyn@example.com', '05569554840', '2003-11-14 23:02:16', '2017-05-28 04:27:01', '1999-11-14 11:51:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (51, 'German', 'Gerhold', 'id', 'jthompson@example.com', '1-069-698-1139x7685', '1980-03-22 12:12:20', '1989-01-08 12:10:35', '1990-11-17 18:59:14');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (52, 'Katrina', 'Wilderman', 'quis', 'lubowitz.cruz@example.net', '497.527.6594x930', '2013-10-17 21:36:31', '1995-04-28 00:15:27', '1973-08-26 02:22:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (53, 'Jaydon', 'Bechtelar', 'veniam', 'diana.mckenzie@example.org', '289.087.4235x7747', '1992-09-18 15:17:53', '1973-11-16 08:50:05', '1977-07-07 09:16:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (54, 'Estrella', 'Hudson', 'alias', 'keebler.vada@example.com', '577-477-6597x001', '1994-03-14 13:52:44', '2003-01-19 23:47:50', '2009-12-16 11:29:13');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (55, 'Hershel', 'Hirthe', 'totam', 'heathcote.leslie@example.net', '(368)299-9752', '1995-10-31 12:11:42', '1974-12-24 04:48:36', '1998-06-01 17:44:31');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (56, 'Britney', 'Lebsack', 'dolor', 'dietrich.elmo@example.net', '963.907.3006x066', '2007-01-02 21:38:28', '2009-01-25 03:18:03', '1973-07-08 10:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (57, 'Ian', 'Schuster', 'qui', 'louie.durgan@example.com', '(438)227-9070x19932', '1998-10-13 06:15:21', '1992-09-15 16:58:48', '2014-11-22 17:16:30');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (58, 'Sid', 'Brekke', 'dignissimos', 'rogahn.lyric@example.com', '(815)145-8664x99935', '1994-02-01 12:53:19', '1983-09-21 15:43:08', '1976-11-18 05:54:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (59, 'Katlynn', 'Kshlerin', 'aliquid', 'kenyatta.weimann@example.net', '+77(0)3196219061', '2010-01-09 13:34:52', '1998-03-28 23:48:46', '1979-09-26 11:38:38');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (60, 'Della', 'Sauer', 'beatae', 'otto.bins@example.com', '00153108091', '1983-03-04 18:54:19', '1989-09-11 17:53:00', '1980-05-29 16:59:06');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (61, 'Tyrell', 'Huel', 'magni', 'davin.marvin@example.org', '937.709.5450', '1986-07-31 21:36:10', '2013-06-19 00:53:49', '1977-09-21 05:35:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (62, 'Jaquelin', 'Huels', 'atque', 'ziemann.kavon@example.net', '544.716.3705x12122', '1979-12-09 08:04:31', '2013-03-23 19:50:39', '1988-01-09 03:25:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (63, 'Elinor', 'Schamberger', 'aspernatur', 'bauch.dominique@example.com', '+32(1)0473237477', '1975-09-12 20:10:20', '2015-08-03 05:27:12', '1995-07-23 12:17:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (64, 'Moises', 'Robel', 'quod', 'pheller@example.org', '786-338-8876x660', '1997-08-25 18:29:48', '1984-03-14 16:57:20', '2002-04-24 12:19:20');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (65, 'Jayden', 'Bogan', 'autem', 'mayer.jason@example.org', '762-134-2888', '1980-11-07 09:29:29', '2000-10-12 08:58:54', '1974-02-08 03:53:02');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (66, 'Karen', 'Thiel', 'sed', 'schuster.yasmine@example.net', '592-438-6873', '2011-11-20 18:20:12', '1978-02-28 22:30:14', '1977-02-07 10:55:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (67, 'Orval', 'Hodkiewicz', 'recusandae', 'schamberger.arthur@example.com', '124-580-3773', '1999-11-23 10:08:46', '1982-03-30 15:33:54', '2000-02-16 04:21:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (68, 'Bryana', 'Senger', 'magnam', 'robyn.volkman@example.org', '(849)755-2333x7368', '1988-03-08 08:42:07', '1984-10-15 11:58:39', '1976-10-19 14:43:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (69, 'Hermina', 'Roob', 'voluptates', 'keon53@example.net', '334.537.7295x148', '1980-05-25 22:48:08', '1984-12-05 09:03:49', '1996-03-30 22:02:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (70, 'Shanelle', 'Luettgen', 'et', 'zemlak.yasmin@example.net', '496-008-0616', '2002-10-01 23:27:26', '1994-12-27 23:17:50', '1970-12-31 00:19:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (71, 'Vida', 'Ratke', 'quae', 'chelsea77@example.org', '666.182.9002', '2005-10-11 12:52:39', '1980-06-15 16:08:29', '1981-03-14 20:39:46');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (72, 'Greg', 'Torphy', 'eligendi', 'hermina60@example.net', '1-140-459-9755', '1971-09-01 05:06:17', '1990-06-14 05:54:52', '2012-04-24 21:52:50');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (73, 'Ambrose', 'Bins', 'qui', 'dave.rolfson@example.org', '1-005-249-1808x7159', '1992-04-10 16:19:02', '2004-12-15 11:52:54', '1993-10-09 22:14:48');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (74, 'Schuyler', 'Larkin', 'eos', 'graham16@example.com', '440-382-3231x24992', '1986-06-13 10:36:46', '1985-04-13 20:32:21', '2001-11-21 08:06:51');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (75, 'Kameron', 'Smitham', 'numquam', 'opal00@example.org', '(281)618-3674x4157', '1984-05-18 13:37:13', '1971-09-09 22:43:45', '1992-07-07 19:11:16');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (76, 'Juanita', 'Jerde', 'ipsa', 'do\'connell@example.org', '+99(4)2570906456', '1987-01-16 09:04:47', '1972-03-09 13:03:46', '1991-08-02 08:50:12');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (77, 'Pietro', 'Smitham', 'dolor', 'ykling@example.org', '210-906-7478x468', '1974-01-02 02:51:10', '1972-01-28 15:31:40', '2001-07-21 07:16:32');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (78, 'Kristian', 'Rippin', 'nihil', 'cecilia42@example.com', '02891338464', '1987-11-11 21:55:41', '1984-07-14 03:33:04', '1992-01-06 09:34:39');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (79, 'Katlyn', 'Lubowitz', 'molestiae', 'tomasa21@example.org', '1-843-526-5644x1234', '1982-07-18 23:45:34', '2010-08-25 11:40:02', '2011-07-24 04:05:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (80, 'Karl', 'Strosin', 'asperiores', 'thilpert@example.net', '1-730-313-7115x87417', '1977-07-31 21:31:55', '1981-01-12 13:22:56', '1978-02-24 21:59:49');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (81, 'Sigrid', 'Pfannerstill', 'vel', 'hane.alyce@example.com', '616.871.9661x59832', '2013-03-11 08:38:29', '2005-04-11 22:37:49', '1991-12-20 21:12:08');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (82, 'Nathaniel', 'Christiansen', 'optio', 'ryost@example.org', '885.590.3703x93851', '2007-03-31 19:51:36', '1998-07-20 12:07:17', '2003-05-04 12:44:58');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (83, 'Marianna', 'Hammes', 'eaque', 'lakin.adelle@example.org', '(347)285-8181', '1982-01-20 01:24:24', '1978-10-16 20:24:34', '2010-11-07 15:20:52');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (84, 'Caleb', 'Emard', 'eos', 'chaz27@example.org', '(922)374-3311x9934', '1970-04-14 11:09:52', '2001-06-08 20:53:39', '2007-02-01 03:27:29');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (85, 'Elfrieda', 'Gibson', 'unde', 'green.daphne@example.org', '886-529-8182x15560', '2003-03-11 21:13:16', '1978-11-13 23:30:24', '1992-01-29 16:18:57');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (86, 'Charlie', 'Feil', 'tempore', 'adeline.mohr@example.org', '440.078.7556', '2016-06-08 03:37:02', '1973-03-14 05:26:57', '2021-01-14 10:39:54');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (87, 'Eloise', 'Ortiz', 'eius', 'schinner.zaria@example.net', '1-969-224-3079x356', '2018-06-18 23:08:13', '1978-07-30 05:35:23', '1973-04-20 14:06:00');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (88, 'Dan', 'Davis', 'ratione', 'vandervort.zaria@example.org', '635-652-8274x4723', '2002-02-24 20:20:19', '1993-05-11 04:20:56', '2009-04-07 08:07:44');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (89, 'Rashawn', 'Hodkiewicz', 'natus', 'roxane.satterfield@example.com', '076-036-8524', '2019-02-16 16:32:34', '2016-12-03 19:35:10', '1972-09-17 04:28:25');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (90, 'Candace', 'Hauck', 'nostrum', 'pacocha.mattie@example.com', '238-599-5925x590', '1977-08-22 13:04:54', '2005-10-05 19:43:07', '2009-09-17 18:12:19');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (91, 'Maxime', 'Prohaska', 'qui', 'ryley.langosh@example.net', '(945)208-2779x7917', '2017-12-07 11:36:03', '1980-02-03 07:24:27', '1974-03-26 05:42:59');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (92, 'Yazmin', 'Rath', 'dolor', 'lang.alexanne@example.net', '035.948.0921x02527', '1986-03-09 22:05:56', '1970-01-07 17:58:16', '1984-09-21 13:34:03');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (93, 'Damon', 'Torphy', 'deleniti', 'tremblay.alek@example.org', '693.122.6692x42251', '1976-01-03 12:33:25', '1992-03-27 21:46:53', '2014-04-20 23:57:35');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (94, 'Lewis', 'Kiehn', 'autem', 'wade.buckridge@example.net', '098-296-0755x0046', '1992-12-08 14:54:57', '1988-01-21 14:45:35', '2000-11-06 00:53:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (95, 'Carmel', 'Reinger', 'minima', 'lizeth82@example.com', '730.818.8193x897', '2019-02-27 20:54:53', '2014-12-28 16:02:48', '1981-12-05 17:46:27');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (96, 'Kiana', 'Toy', 'nesciunt', 'norbert24@example.net', '1-881-190-9799x38863', '1992-04-23 19:14:52', '2015-10-10 07:42:11', '2012-04-04 11:43:01');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (97, 'Gene', 'Dicki', 'voluptas', 'monahan.nestor@example.com', '1-041-032-6952x953', '1974-04-13 05:47:30', '1972-05-20 16:29:40', '1981-03-10 13:01:18');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (98, 'Henderson', 'Zboncak', 'aut', 'nina62@example.org', '1-693-962-3622', '2004-10-08 13:23:08', '1988-11-29 04:27:22', '1972-06-15 05:39:21');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (99, 'Arjun', 'Kiehn', 'dolor', 'bayer.annette@example.net', '699.753.7909x6065', '2016-12-16 02:12:43', '1987-04-12 05:29:27', '2018-04-10 00:11:26');
INSERT INTO `users` (`id`, `first_name`, `last_name`, `patronymic_name`, `email`, `phone`, `created_at`, `updated_at`, `last_login_at`) VALUES (100, 'Lyla', 'Kirlin', 'quo', 'armand23@example.org', '07810518966', '1995-09-22 10:16:59', '2007-10-26 14:38:27', '1989-04-17 21:28:44');


