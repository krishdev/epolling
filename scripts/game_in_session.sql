CREATE TABLE `eyf`.`game_in_session` (
  `id` INT NOT NULL,
  `sessionId` INT NOT NULL,
  `teamOneName` VARCHAR(45) NOT NULL,
  `teamTwoName` VARCHAR(45) NOT NULL,
  `teamOneScore` INT NULL,
  `teamTwoScore` INT NULL,
  `createdOn` DATETIME NULL,
  PRIMARY KEY (`id`));
ALTER TABLE `eyf`.`game_in_session` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ;
