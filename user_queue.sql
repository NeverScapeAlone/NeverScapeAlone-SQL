CREATE TABLE `user_queue` (
 `ID` int NOT NULL AUTO_INCREMENT,
 `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `user_id` int NOT NULL,
 `in_queue` tinyint(1) NOT NULL DEFAULT '0',
 `activity` tinytext NOT NULL,
 `party_member_count` int NOT NULL,
 `self_experience_level` int NOT NULL,
 `partner_experience_level` int NOT NULL,
 `us` tinyint(1) NOT NULL,
 `eu_central` tinyint(1) NOT NULL,
 `eu_west` tinyint(1) NOT NULL,
 `oceania` tinyint(1) NOT NULL,
 `f2p` tinyint(1) NOT NULL,
 `p2p` tinyint(1) NOT NULL,
 PRIMARY KEY (`ID`),
 KEY `user_id` (`user_id`),
 CONSTRAINT `user_queue_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10844 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
