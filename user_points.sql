CREATE TABLE `user_points` (
 `ID` bigint NOT NULL AUTO_INCREMENT COMMENT 'incremental ID for entry',
 `user_id` int NOT NULL COMMENT 'user ID',
 `points` bigint NOT NULL COMMENT 'accumulated points from engaging in content',
 PRIMARY KEY (`ID`),
 UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci