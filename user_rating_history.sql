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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='User rating system after/before a meeting is complete'