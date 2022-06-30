CREATE TABLE `bans_wdr` (
 `ID` int NOT NULL AUTO_INCREMENT,
 `login` tinytext NOT NULL,
 `ban_reason` tinytext NOT NULL,
 PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
