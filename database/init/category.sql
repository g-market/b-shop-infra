SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

create table if not exists category
(
    id         bigint auto_increment
        primary key,
    created_at datetime(6)  not null,
    deleted bit(1) NOT NULL,
    updated_at datetime(6)  not null,
    name       varchar(255) not null,
    constraint category_name_const
        unique (name)
) COLLATE=utf8mb4_unicode_ci;

create table if not exists category_aud (
  id bigint NOT NULL,
  rev int NOT NULL,
  revtype tinyint DEFAULT NULL,
  deleted bit(1) DEFAULT NULL,
  name varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (rev,id),
  CONSTRAINT FKc9m640crhsib2ws80um6xuk1w FOREIGN KEY (rev) REFERENCES revinfo (rev)
) COLLATE=utf8mb4_unicode_ci;

INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.154325', '2023-03-08 15:09:10.154325', 0, 1, '주방');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.162826', '2023-03-08 15:09:10.162826', 0, 2, '리빙');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.165324', '2023-03-08 15:09:10.165324', 0, 3, '인테리어');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.167825', '2023-03-08 15:09:10.167825', 0, 4, '원예');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.169823', '2023-03-08 15:09:10.169823', 0, 5, '건강');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.173255', '2023-03-08 15:09:10.173255', 0, 6, '미용');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.175344', '2023-03-08 15:09:10.175344', 0, 7, '패션');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.177993', '2023-03-08 15:09:10.177993', 0, 8, '문구');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.181137', '2023-03-08 15:09:10.181137', 0, 9, '파티');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.183227', '2023-03-08 15:09:10.183227', 0, 10, '포장');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.185912', '2023-03-08 15:09:10.185912', 0, 11, '모바일');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.188330', '2023-03-08 15:09:10.188330', 0, 12, '스포츠');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.190832', '2023-03-08 15:09:10.190832', 0, 13, '취미');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.192831', '2023-03-08 15:09:10.192831', 0, 14, '완구');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.194831', '2023-03-08 15:09:10.194831', 0, 15, '반려동물');
INSERT INTO category (created_at, updated_at, deleted, id, name) VALUES('2023-03-08 15:09:10.196331', '2023-03-08 15:09:10.196331', 0, 16, '식품');

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;