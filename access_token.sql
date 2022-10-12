CREATE TABLE `access_tokens` (
 `ID` int NOT NULL AUTO_INCREMENT,
 `access_token` text NOT NULL,
 `permissions` int NOT NULL,
 PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=0 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
