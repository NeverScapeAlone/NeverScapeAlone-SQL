CREATE TABLE `user_token` (
 `ID` int NOT NULL AUTO_INCREMENT COMMENT 'entry id',
 `user_id` int NOT NULL COMMENT 'user id as noted in users',
 `auth_level` tinyint NOT NULL DEFAULT '0' COMMENT 'auth_level, digit between 0-9 (0 - normal user, 9 - full access)',
 `token` tinytext NOT NULL COMMENT 'auth token for requests, this can include user-level requests, moderator requests, or other types of requests. This is a tiered system, with higher levels of access noted by higher numbers. 0 is the default access level.',
 PRIMARY KEY (`ID`),
 KEY `user_id` (`user_id`),
 CONSTRAINT `user_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci