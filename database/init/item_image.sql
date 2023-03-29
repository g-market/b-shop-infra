SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

CREATE TABLE if not exists item_image (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKta6kqet3u8mv95y7jwtgwqpys` (`item_id`),
  CONSTRAINT `FKta6kqet3u8mv95y7jwtgwqpys` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) COLLATE=utf8mb4_unicode_ci;

CREATE TABLE if not exists item_image_aud (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKawb00bilj69ec9lum56qlrc1a` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`)
) COLLATE=utf8mb4_unicode_ci;

INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(1, '2023-03-08 15:09:10.543639', '2023-03-08 15:09:10.543639', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 1);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(2, '2023-03-08 15:09:10.548639', '2023-03-08 15:09:10.548639', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 1);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(3, '2023-03-08 15:09:10.552639', '2023-03-08 15:09:10.552639', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 1);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(4, '2023-03-08 15:09:10.555139', '2023-03-08 15:09:10.555139', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 2);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(5, '2023-03-08 15:09:10.558139', '2023-03-08 15:09:10.558139', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 3);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(6, '2023-03-08 15:09:10.560639', '2023-03-08 15:09:10.560639', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 3);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(7, '2023-03-08 15:09:10.563641', '2023-03-08 15:09:10.563641', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 4);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(8, '2023-03-08 15:09:10.567140', '2023-03-08 15:09:10.567140', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 4);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(9, '2023-03-08 15:09:10.569638', '2023-03-08 15:09:10.569638', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 5);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(10, '2023-03-08 15:09:10.572139', '2023-03-08 15:09:10.572139', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 5);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(11, '2023-03-08 15:09:10.574640', '2023-03-08 15:09:10.574640', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 6);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(12, '2023-03-08 15:09:10.577139', '2023-03-08 15:09:10.577139', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 6);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(13, '2023-03-08 15:09:10.580138', '2023-03-08 15:09:10.580138', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 7);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(14, '2023-03-08 15:09:10.584138', '2023-03-08 15:09:10.584138', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 7);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(15, '2023-03-08 15:09:10.586713', '2023-03-08 15:09:10.586713', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 8);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(16, '2023-03-08 15:09:10.589208', '2023-03-08 15:09:10.589208', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 8);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(17, '2023-03-08 15:09:10.591708', '2023-03-08 15:09:10.591708', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 9);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(18, '2023-03-08 15:09:10.594207', '2023-03-08 15:09:10.594207', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 9);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(19, '2023-03-08 15:09:10.596707', '2023-03-08 15:09:10.596707', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 10);
INSERT INTO item_image (id, created_at, updated_at, deleted, image_name, item_id) VALUES(20, '2023-03-08 15:09:10.600709', '2023-03-08 15:09:10.600709', 0, 'http://139.15.7..182:90000/images/No_Image.jpg', 10);

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;