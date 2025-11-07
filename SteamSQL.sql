CREATE SCHEMA IF NOT EXISTS `steam`;
USE `steam` ;

CREATE TABLE IF NOT EXISTS `steam`.`game` (
  `idGame` INT NOT NULL AUTO_INCREMENT,
  `gameName` VARCHAR(45) NOT NULL,
  `releaseDate` DATE NOT NULL,
  `price` INT NOT NULL,
  `reviewScore` INT NOT NULL,
  `image` VARCHAR(45) NULL,
  PRIMARY KEY (`idGame`));
  
INSERT INTO game (gameName, releaseDate, price, reviewScore, image) VALUES
('Cyberpunk 2077', '2020-12-10', 180000, 9, NULL),
('Minecraft', '2011-11-18', 90000, 10, NULL),
('Stardew Valley', '2016-02-26', 45000, 9, NULL),
('The Witcher 3', '2015-05-19', 150000, 10, NULL),
('Valorant', '2020-06-02', 0, 8, NULL),
('Overwatch 2', '2022-10-04', 0, 7, NULL),
('Red Dead Redemption 2', '2018-10-26', 200000, 10, NULL),
('Hades', '2020-09-17', 80000, 9, NULL),
('Elden Ring', '2022-02-25', 220000, 10, NULL),
('Apex Legends', '2019-02-04', 0, 8, NULL),
('GTA V', '2013-09-17', 120000, 9, NULL),
('League of Legends', '2009-10-27', 0, 8, NULL),
('Fortnite', '2017-07-21', 0, 7, NULL),
('Hollow Knight', '2017-02-24', 60000, 9, NULL),
('Assassin’s Creed Mirage', '2023-10-05', 180000, 8, NULL);

CREATE TABLE IF NOT EXISTS `steam`.`user` (
  `idUser` VARCHAR(45) NOT NULL,
  `userPassword` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `cellphone` VARCHAR(45) NOT NULL,
  `image` VARCHAR(45) NULL,
  PRIMARY KEY (`idUser`));

INSERT INTO user (idUser, userPassword, email, cellphone, image) VALUES
('camilag', 'pass123', 'camila.gomez@gmail.com', '3115029988', NULL),
('juancp', 'abc123', 'juan.perez@gmail.com', '3204412390', NULL),
('laurap', 'luna24', 'laura.pineda@hotmail.com', '3125557832', NULL),
('danielm', 'daniel12', 'daniel.martinez@gmail.com', '3018823344', NULL),
('marias', 'mari23', 'maria.sanchez@gmail.com', '3178822299', NULL),
('felipea', 'felipe99', 'felipe.arias@outlook.com', '3007711288', NULL),
('sofiar', 'sofita', 'sofia.ramirez@gmail.com', '3153345622', NULL),
('andresl', 'andres01', 'andres.lopez@gmail.com', '3119987744', NULL),
('karend', 'kar3n!', 'karen.duarte@gmail.com', '3028887711', NULL),
('sebastiant', 'tian99', 'sebastian.torres@gmail.com', '3102234455', NULL),
('paolap', 'paola123', 'paola.perez@outlook.com', '3128809911', NULL),
('ricardor', 'ricky22', 'ricardo.ramirez@gmail.com', '3008873311', NULL),
('angelicav', 'angy14', 'angelica.vargas@gmail.com', '3117729922', NULL),
('julianh', 'julio44', 'julian.herrera@gmail.com', '3199908812', NULL),
('valentinac', 'valen33', 'valentina.castillo@gmail.com', '3147712210', NULL);

CREATE TABLE IF NOT EXISTS `steam`.`library` (
  `idUser` VARCHAR(45) NOT NULL,
  `idGame` INT NOT NULL,
  `purchaseDate` DATE NOT NULL,
  `hoursPlayed` INT NULL DEFAULT NULL,
  PRIMARY KEY (`username`, `idGame`),
  INDEX `fk_user_has_game_game1_idx` (`idGame` ASC) ,
  INDEX `fk_user_has_game_user1_idx` (`idUser` ASC) ,
  CONSTRAINT `fk_user_has_game_game1`
    FOREIGN KEY (`idGame`)
    REFERENCES `steam`.`game` (`idGame`),
  CONSTRAINT `fk_user_has_game_user1`
    FOREIGN KEY (`idUser`)
    REFERENCES `steam`.`user` (`idUser`));
    
INSERT INTO `library` (`idUser`, `idGame`, `purchaseDate`, `hoursPlayed`) VALUES
('camilag', 1, '2024-10-10', 45),
('juancp', 2, '2024-09-22', 120),
('laurap', 3, '2024-08-18', 60),
('danielm', 4, '2024-07-11', 150),
('marias', 5, '2024-06-30', 90),
('felipea', 6, '2024-05-19', 40),
('sofiar', 7, '2024-04-23', 200),
('andresl', 8, '2024-04-10', 130),
('karend', 9, '2024-03-15', 300),
('sebastiant', 10, '2024-02-11', 180),
('paolap', 11, '2024-01-28', 220),
('ricardor', 12, '2024-01-10', 95),
('angelicav', 13, '2023-12-05', 300),
('julianh', 14, '2023-11-20', 55),
('valentinac', 15, '2023-10-30', 140);
    
SELECT * FROM user;
SELECT * FROM game;
SELECT * FROM `library`;