SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

CREATE TABLE if not exists order_item (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `order_count` int NOT NULL,
  `price` bigint NOT NULL,
  `item_id` bigint NOT NULL,
  `option_id` bigint NOT NULL,
  `order_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKija6hjjiit8dprnmvtvgdp6ru` (`item_id`),
  KEY `FKiord4lw7b58l795tbj9tcwqhs` (`option_id`),
  KEY `FKt4dc2r9nbvbujrljv3e23iibt` (`order_id`),
  CONSTRAINT `FKija6hjjiit8dprnmvtvgdp6ru` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FKiord4lw7b58l795tbj9tcwqhs` FOREIGN KEY (`option_id`) REFERENCES `item_option` (`id`),
  CONSTRAINT `FKt4dc2r9nbvbujrljv3e23iibt` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`)
) COLLATE=utf8mb4_unicode_ci;

INSERT INTO order_item (id, created_at, updated_at, order_count, price, item_id, option_id, order_id) VALUES(1, '2023-03-08 15:09:10.704684', '2023-03-08 15:09:10.704684', 1, 11111, 1, 1, 1);
INSERT INTO order_item (id, created_at, updated_at, order_count, price, item_id, option_id, order_id) VALUES(2, '2023-03-08 15:09:10.710956', '2023-03-08 15:09:10.710956', 1, 11111, 1, 1, 2);
INSERT INTO order_item (id, created_at, updated_at, order_count, price, item_id, option_id, order_id) VALUES(3, '2023-03-08 15:09:10.713456', '2023-03-08 15:09:10.713456', 1, 22222, 2, 2, 2);
INSERT INTO order_item (id, created_at, updated_at, order_count, price, item_id, option_id, order_id) VALUES(4, '2023-03-08 15:09:10.716455', '2023-03-08 15:09:10.716455', 1, 22222, 2, 2, 3);
INSERT INTO order_item (id, created_at, updated_at, order_count, price, item_id, option_id, order_id) VALUES(5, '2023-03-08 15:09:10.718957', '2023-03-08 15:09:10.718957', 2, 22222, 2, 2, 4);

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;