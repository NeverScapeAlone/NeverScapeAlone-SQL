CREATE TABLE `world_information` (
 `ID` int NOT NULL AUTO_INCREMENT,
 `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
 `world_number` int NOT NULL,
 `activity` text NOT NULL,
 `p2p` tinyint(1) NOT NULL,
 `f2p` tinyint(1) NOT NULL,
 `us` tinyint(1) NOT NULL,
 `eu_central` tinyint(1) NOT NULL,
 `eu_west` tinyint(1) NOT NULL,
 `oceania` tinyint(1) NOT NULL,
 `player_count` int NOT NULL,
 PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
