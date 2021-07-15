CREATE TABLE `eyf`.`game_clues` (
  `id` INT NOT NULL,
  `questionId` INT NOT NULL,
  `imageName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

ALTER TABLE `eyf`.`game_clues` 
CHANGE COLUMN `id` `id` INT(11) NOT NULL AUTO_INCREMENT ;
INSERT INTO eyf.game_clues (questionId, imageName) VALUES
(1, 'new'),(1,'white'),(1,'rain'),
(2, 'telephone'),(2,'bell'),(2,'poll'),(2,'smile'),
(3, 'heart'),(3,'letter'),(3,'thetave'),(3,'way'),
(4, 'heart'),(4,'Roja'),(4,'way'),(4,'Question'),(4,'You'),(4,'Question'),
(5, 'Number'),(5,'Avul'),(5,'A'),(5,'Slap'),(5,'Number'),(5,'Avul'),
(6, 'Me'),(6,'Dollar'),(6,'Alagu'),(6,'A'),(6,'You'),(6,'Dollar'),
(7, 'Small'),(7,'Small'),(7,'Asai'),(7,'Feather'),(7,'Slap'),(7,'Asai'),
(8, 'Number'),(8,'House'),(8,'Garden'),(8,'Dhill'),(8,'Flower'),
(9, 'Money'),(9,'Up'),(9,'Money'),(9,'Come'),(9,'Knock'),
(10, 'One'),(10,'bell'),(10,'Slap'),(10,'Paper'),(10,'Eye'),(10,'You'),
(11, 'You'),(11,'Pear'),(11,'Tell'),(11,'Asai'),
(12, 'Straw'),(12,'berry'),(12,'Eye'),(12,'A'),(12,'Space'),(12,'Pen'),(12,'A'),
(13, 'Number'),(13,'Eye'),(13,'Thalattu'),(13,'Varu'),(13,'Come'),
(14, 'say-o'),(14,'Butter'),(14,'Fly'),(14,'Butter'),(14,'Fly'),
(15, 'Kolambu'),(15,'Bus'),(15,'Kolambu'),(15,'Bus'),
(16, 'Drop'),(16,'Drop'),(16,'Drop'),(16,'rain'),(16,'Poop'),
(17, 'Watching'),(17,'First'),(17,'4'),(17,'A'),(17,'You'),(17,'Watching'),(17,'First'),(17,'4'),
(18, 'One'),(18,'Women'),(18,'One'),(18,'Nan'),(18,'Watching'),(18,'Centimeter'),(18,'smile'),
(19, 'Angel'),(19,'Watching'),(19,'heart'),(19,'Fell'),
(20, 'One'),(20,'2'),(20,'Asai'),(20,'Stone'),
(21, 'Manjal'),(21,'Forest'),(21,'Myna'),(21,'Me'),
(22, 'Pallanguli'),(22,'Pit'),(22,'Circle'),(22,'Watching'),
(23, 'Google'),(23,'Google'),(23,'Pig'),(23,'Watching'),(23,'Globe'),
(24, 'Thunder'),(24,'Catch'),(24,'Thunder'),(24,'Catch'),(24,'clouds'),
(25, 'Flower'),(25,'Stone'),(25,'Bloom'),(25,'Tharun'),(25,'6'),(25,'uyire'),
(26, 'Basket'),(26,'Up'),(26,'Basket'),(26,'Keep'),
(27, 'Singh'),(27,'Pen'),(27,'A'),(27,'Singh'),(27,'Pen'),(27,'A'),
(28, 'Crow'),(28,'Push'),(28,'Cricket'),(28,'Fell'),(28,'Wicket'),
(29, 'Lace'),(29,'say-ah'),(29,'Lace'),(29,'say-ah'),
(30, 'Selfie'),(30,'Women'),(30,'kiss'),(30,'kiss');