SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

CREATE TABLE if not exists orders (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `status` char(9) NOT NULL,
  `total_price` bigint NOT NULL,
  `member_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpktxwhj3x9m4gth5ff6bkqgeb` (`member_id`),
  CONSTRAINT `FKpktxwhj3x9m4gth5ff6bkqgeb` FOREIGN KEY (`member_id`) REFERENCES `member` (`id`)
) COLLATE=utf8mb4_unicode_ci;

ALTER TABLE orders ADD INDEX idx_created_at_member_id (created_at, member_id);

INSERT INTO orders (id, created_at, updated_at, status, total_price, member_id) VALUES(1, '2023-03-08 15:09:10.676303', '2023-03-08 15:09:10.676303', 'ACCEPTED', 11111, 6);
INSERT INTO orders (id, created_at, updated_at, status, total_price, member_id) VALUES(2, '2023-03-08 15:09:10.681304', '2023-03-08 15:09:10.681304', 'ACCEPTED', 33333, 6);
INSERT INTO orders (id, created_at, updated_at, status, total_price, member_id) VALUES(3, '2023-03-08 15:09:10.683302', '2023-03-08 15:09:10.683302', 'ACCEPTED', 22222, 7);
INSERT INTO orders (id, created_at, updated_at, status, total_price, member_id) VALUES(4, '2023-03-08 15:09:10.685802', '2023-03-08 15:09:10.685802', 'COMPLETED', 44444, 7);

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;
