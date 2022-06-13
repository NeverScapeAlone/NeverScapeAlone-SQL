CREATE TABLE `active_matches` (
 `ID` bigint NOT NULL AUTO_INCREMENT,
 `user_queue_ID` int NOT NULL COMMENT 'ID for the relevant user queue',
 `user_id` int NOT NULL,
 `party_identifier` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
 `activity` text NOT NULL,
 `party_member_count` tinyint NOT NULL,
 `has_accepted` tinyint(1) DEFAULT '0',
 `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 PRIMARY KEY (`ID`),
 UNIQUE KEY `user_queue_ID` (`user_queue_ID`),
 KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci