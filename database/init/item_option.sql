SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

-- bshop_db.item_option definition

CREATE TABLE if not exists item_option (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `deleted` bit(1) NOT NULL,
  `description` varchar(255) NOT NULL,
  `option_price` int NOT NULL,
  `stock_quantity` int NOT NULL,
  `item_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKpiufbijq6m8l18jf9a0nwny62` (`item_id`),
  CONSTRAINT `FKpiufbijq6m8l18jf9a0nwny62` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`)
) COLLATE=utf8mb4_unicode_ci;


CREATE TABLE if not exists `item_option_aud` (
  `id` bigint NOT NULL,
  `rev` int NOT NULL,
  `revtype` tinyint DEFAULT NULL,
  `deleted` bit(1) DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_quantity` int DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`rev`,`id`),
  CONSTRAINT `FKknp5drqmf4qb3xo48hnemae3q` FOREIGN KEY (`rev`) REFERENCES `revinfo` (`rev`)
) COLLATE=utf8mb4_unicode_ci;

ALTER TABLE item_option
    ADD INDEX idx_id_item_id (id, item_id);

INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(1, '2023-03-08 15:09:10.463528', '2023-03-08 15:09:10.463528', 0, 'description', 0, 10, 1);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(2, '2023-03-08 15:09:10.469029', '2023-03-08 15:09:10.469029', 0, 'description', 1000, 5, 1);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(3, '2023-03-08 15:09:10.471529', '2023-03-08 15:09:10.471529', 0, 'description', 2000, 5, 1);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(4, '2023-03-08 15:09:10.473527', '2023-03-08 15:09:10.473527', 0, 'description', 2000, 5, 1);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(5, '2023-03-08 15:09:10.475527', '2023-03-08 15:09:10.475527', 0, 'description', 1999, 10, 1);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(6, '2023-03-08 15:09:10.478028', '2023-03-08 15:09:10.478028', 0, 'xl', 0, 10, 4);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(7, '2023-03-08 15:09:10.480029', '2023-03-08 15:09:10.480029', 0, 'xs', 1000, 5, 4);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(8, '2023-03-08 15:09:10.482527', '2023-03-08 15:09:10.482527', 0, 's', 2000, 5, 4);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(9, '2023-03-08 15:09:10.485029', '2023-03-08 15:09:10.485029', 0, 'm', 2000, 5, 4);
INSERT INTO item_option (id, created_at, updated_at, deleted, description, option_price, stock_quantity, item_id) VALUES(10, '2023-03-08 15:09:10.487028', '2023-03-08 15:09:10.487028', 0, 'l', 1999, 10, 4);

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;