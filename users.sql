CREATE TABLE `users` (
 `user_id` int NOT NULL AUTO_INCREMENT COMMENT 'auto-incremented user ID',
 `login` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'username',
 `discord` varchar(64) DEFAULT NULL,
 `verified` tinyint(1) DEFAULT '0',
 `runewatch` tinytext,
 `wdr` tinytext,
 `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT 'account creation timestamp',
 PRIMARY KEY (`user_id`),
 UNIQUE KEY `login` (`login`)
) ENGINE=InnoDB AUTO_INCREMENT=77823 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Basic information for users of the NeverScapeAlone plugin'
