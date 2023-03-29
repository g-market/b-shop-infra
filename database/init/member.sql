SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

CREATE TABLE if not exists member (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `email` varchar(255) NOT NULL,
  `grade` varchar(8) NOT NULL,
  `hiworks_id` varchar(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone_number` char(11) DEFAULT NULL,
  `profile_image_url` varchar(255) NOT NULL,
  `role` char(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`),
  UNIQUE KEY `UK_bts7dbxk2tw05el19wvguxrv4` (`hiworks_id`),
  UNIQUE KEY `UK_n2qryhkfoqeel6njfhrcq6k7u` (`phone_number`)
) COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(1, '2023-03-08 15:09:10.053255', '2023-03-08 15:09:10.053255', 'admin01@gabia.com', 'DIAMOND', 'admin01', 'admin01', '01000000001',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(2, '2023-03-08 15:09:10.105876', '2023-03-08 15:09:10.105876', 'admin02@gabia.com', 'DIAMOND', 'admin02', 'admin02', '01000000002',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(3, '2023-03-08 15:09:10.108876', '2023-03-08 15:09:10.108876', 'admin03@gabia.com', 'DIAMOND', 'admin03', 'admin03', '01000000003',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(4, '2023-03-08 15:09:10.111377', '2023-03-08 15:09:10.111377', 'admin04@gabia.com', 'DIAMOND', 'admin04', 'admin04', '01000000004',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(5, '2023-03-08 15:09:10.114378', '2023-03-08 15:09:10.114378', 'admin05@gabia.com', 'DIAMOND', 'admin05', 'admin05', '01000000005',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(6, '2023-03-08 15:09:10.116876', '2023-03-08 15:09:10.116876', 'normal06@gabia.com', 'BRONZE', 'normal06', 'normal06', '01000000006',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(7, '2023-03-08 15:09:10.119510', '2023-03-08 15:09:10.119510', 'normal07@gabia.com', 'SILVER', 'normal07', 'normal07', '01000000007',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(8, '2023-03-08 15:09:10.121939', '2023-03-08 15:09:10.121939', 'normal08@gabia.com', 'GOLD', 'normal08', 'normal08', '01000000008',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(9, '2023-03-08 15:09:10.124377', '2023-03-08 15:09:10.124377', 'normal09@gabia.com', 'PLATINUM', 'normal09', 'normal09', '01000000009',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(10, '2023-03-08 15:09:10.126376', '2023-03-08 15:09:10.126376', 'normal10@gabia.com', 'DIAMOND', 'normal10', 'normal10', '01000000010',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');
INSERT INTO `member` (id, created_at, updated_at, email, grade, hiworks_id, name, phone_number, profile_image_url, `role`) VALUES(11, '2023-03-08 15:09:10.126376', '2023-03-08 15:09:10.126376', 'sjbaek@gabia.com', 'DIAMOND', '6951666', 'admin100', '01076764563',"https://gabiaoffice.hiworks.com/gabia.com/common/profile/me", 'ADMIN');

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;