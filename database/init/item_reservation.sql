SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

CREATE TABLE item_reservation (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1x64c8jkqlo2rxumrqfpd0yjy` (`item_id`),
  CONSTRAINT `FK1x64c8jkqlo2rxumrqfpd0yjy` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) COLLATE=utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;