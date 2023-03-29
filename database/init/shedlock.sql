SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0;

use bshop_db;

create table if not exists shedlock
(
    name       varchar(64)  not null
        primary key,
    lock_until timestamp(3) null,
    locked_at  timestamp(3) null,
    locked_by  varchar(255) null
)
    collate = utf8mb4_unicode_ci;

SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS;