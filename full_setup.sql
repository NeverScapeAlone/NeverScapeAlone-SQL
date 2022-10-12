CREATE TABLE `access_tokens` (
 `ID` int NOT NULL AUTO_INCREMENT,
 `access_token` text NOT NULL,
 `permissions` int NOT NULL,
 PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `users` (
 `user_id` int NOT NULL AUTO_INCREMENT COMMENT 'auto-incremented user ID',
 `login` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'username',
 `discord` varchar(64) DEFAULT NULL,
 `discord_id` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
 `verified` tinyint(1) DEFAULT '0',
 `runewatch` tinytext,
 `wdr` tinytext,
 `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'account creation timestamp',
 PRIMARY KEY (`user_id`),
 UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Basic information for users of the NeverScapeAlone plugin'

CREATE TABLE `user_token` (
 `ID` int NOT NULL AUTO_INCREMENT COMMENT 'entry id',
 `user_id` int NOT NULL COMMENT 'user id as noted in users',
 `auth_level` tinyint NOT NULL DEFAULT '0' COMMENT 'auth_level, digit between 0-9 (0 - normal user, 9 - full access)',
 `token` tinytext NOT NULL COMMENT 'auth token for requests, this can include user-level requests, moderator requests, or other types of requests. This is a tiered system, with higher levels of access noted by higher numbers. 0 is the default access level.',
 PRIMARY KEY (`ID`),
 KEY `user_id` (`user_id`),
 CONSTRAINT `user_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci