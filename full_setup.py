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
) ENGINE=InnoDB AUTO_INCREMENT=88437 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user_points` (
 `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'incremental ID for entry',
 `user_id` int NOT NULL COMMENT 'user ID',
 `points` bigint NOT NULL COMMENT 'accumulated points from engaging in content',
 PRIMARY KEY (`ID`),
 UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user_queue` (
 `ID` int NOT NULL AUTO_INCREMENT,
 `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `user_id` int NOT NULL,
 `in_queue` tinyint(1) NOT NULL DEFAULT '0',
 `activity` tinytext NOT NULL,
 `party_member_count` int NOT NULL,
 `self_experience_level` int NOT NULL,
 `partner_experience_level` int NOT NULL,
 `us_east` tinyint(1) NOT NULL,
 `us_west` tinyint(1) NOT NULL,
 `eu_central` tinyint(1) NOT NULL,
 `eu_west` tinyint(1) NOT NULL,
 `oceania` tinyint(1) NOT NULL,
 `f2p` tinyint(1) NOT NULL,
 `p2p` tinyint(1) NOT NULL,
 PRIMARY KEY (`ID`),
 KEY `user_id` (`user_id`),
 CONSTRAINT `user_queue_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10844 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `user_rating_history` (
 `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'entry ID for this table',
 `timestamp` timestamp NOT NULL COMMENT 'timestamp for last created/updated',
 `s_user_id` int NOT NULL COMMENT 'user sending the rating',
 `r_user_id` int NOT NULL COMMENT 'user receiving the rating',
 `rating` tinyint NOT NULL COMMENT '5 star rating system',
 `comment` tinytext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'comment given by the rating user',
 `request_history_id` bigint NOT NULL COMMENT 'request history identifier as found in request_history.ID',
 PRIMARY KEY (`ID`),
 KEY `s_user_id` (`s_user_id`),
 KEY `r_user_id` (`r_user_id`),
 CONSTRAINT `user_rating_history_ibfk_1` FOREIGN KEY (`s_user_id`) REFERENCES `users` (`user_id`),
 CONSTRAINT `user_rating_history_ibfk_2` FOREIGN KEY (`r_user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='User rating system after/before a meeting is complete';

CREATE TABLE `user_token` (
 `ID` int NOT NULL AUTO_INCREMENT COMMENT 'entry id',
 `user_id` int NOT NULL COMMENT 'user id as noted in users',
 `auth_level` tinyint NOT NULL DEFAULT '0' COMMENT 'auth_level, digit between 0-9 (0 - normal user, 9 - full access)',
 `token` tinytext NOT NULL COMMENT 'auth token for requests, this can include user-level requests, moderator requests, or other types of requests. This is a tiered system, with higher levels of access noted by higher numbers. 0 is the default access level.',
 PRIMARY KEY (`ID`),
 KEY `user_id` (`user_id`),
 CONSTRAINT `user_token_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
