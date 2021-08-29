USE clevelandbrownsfb;
SELECT * FROM player_name JOIN gameday_performance ON player_name.player_number = gameday_performance.player_number;CREATE TABLE `gameday_performance` (
  `player_number` int NOT NULL,
  `td_pass` int NOT NULL,
  `td_run` int NOT NULL,
  `td_catch` int NOT NULL,
  `sacks` int NOT NULL,
  `tackles` int NOT NULL,
  `def_turnover` int NOT NULL,
  `off_turnover` int NOT NULL,
  PRIMARY KEY (`player_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `gameday_status` (
  `player_number` int NOT NULL,
  `health_status` varchar(45) NOT NULL,
  UNIQUE KEY `player_number_UNIQUE` (`player_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `player_name` (
  `player_number` int NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `position` varchar(45) NOT NULL,
  `height` int NOT NULL,
  `age` int NOT NULL,
  `college` varchar(45) NOT NULL,
  `years_of_experience` int NOT NULL,
  PRIMARY KEY (`player_number`),
  UNIQUE KEY `player_number_UNIQUE` (`player_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
