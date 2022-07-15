DROP DATABASE IF EXISTS `project_estately`;

CREATE DATABASE `project_estately`;

CREATE TABLE `user` (
    `email` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `mobile_no` CHAR(11) UNIQUE NOT NULL,
    `document_id` CHAR(17) UNIQUE NOT NULL,
    `joined_on` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY (`email`)
);

CREATE TABLE `vendor` (
    `email` VARCHAR(50) NOT NULL,
    `password` VARCHAR(50) NOT NULL,
    `name` VARCHAR(50) NOT NULL,
    `mobile_no` CHAR(11) UNIQUE NOT NULL,
    `document_id` CHAR(17) UNIQUE NOT NULL,
    `joined_on` DATETIME NOT NULL DEFAULT NOW(),
    PRIMARY KEY (`email`)
);

CREATE TABLE `property` (
    `id` CHAR(10) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `type` ENUM('Apartment', 'Studio') NOT NULL,
    `vendor_email` VARCHAR(50) NOT NULL,
    `description` TINYTEXT DEFAULT NULL,
    `created_at` DATETIME NOT NULL DEFAULT NOW(),
    `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    `enlisted_for` ENUM('Rent', 'Lease', 'Both') NOT NULL,
    `availability_status` ENUM('vacant', 'rented', 'leased') NOT NULL DEFAULT 'vacant',
    `post` ENUM('draft', 'public') NOT NULL DEFAULT 'draft',
    PRIMARY KEY (`id`)
);

CREATE TABLE `gallery` (
    `id` CHAR(10) NOT NULL,
    `ordinal_number` TINYINT NOT NULL,
    `image_source` VARCHAR(500) DEFAULT NULL,
    PRIMARY KEY (`id`, `ordinal_number`)
);

CREATE TABLE `address` (
    `id` CHAR(10) NOT NULL,
    `street_address` TEXT NOT NULL,
    `district` VARCHAR(50) NOT NULL,
    `division` VARCHAR(50) NOT NULL,
    `latitude` DECIMAL(10, 5),
    `longitude` DECIMAL(10, 5),
    PRIMARY KEY (`id`)
);

CREATE TABLE `apartment` (
    `id` CHAR(10) NOT NULL,
    `area` SMALLINT UNSIGNED NOT NULL,
    `bedroom` SMALLINT UNSIGNED NOT NULL,
    `attached_bathroom` SMALLINT UNSIGNED NOT NULL,
    `bathroom` SMALLINT UNSIGNED NOT NULL,
    `balcony` SMALLINT UNSIGNED NOT NULL,
    `kitchen` SMALLINT UNSIGNED NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `studio` (
    `id` CHAR(10) NOT NULL,
    `area` SMALLINT UNSIGNED NOT NULL,
    `length` SMALLINT UNSIGNED NOT NULL,
    `breadth` SMALLINT UNSIGNED NOT NULL,
    `separate_bedroom` BOOLEAN DEFAULT FALSE NOT NULL,
    `balcony` BOOLEAN DEFAULT FALSE NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `amenity` (
    `id` CHAR(10) NOT NULL,
    `ac_type` ENUM('Central', 'Split', 'Window') DEFAULT NULL,
    `elevator` BOOLEAN DEFAULT FALSE NOT NULL,
    `gym` BOOLEAN DEFAULT FALSE NOT NULL,
    `laundry` BOOLEAN DEFAULT FALSE NOT NULL,
    `microwave` BOOLEAN DEFAULT FALSE NOT NULL,
    `parking` BOOLEAN DEFAULT FALSE NOT NULL,
    `pharmacy` BOOLEAN DEFAULT FALSE NOT NULL,
    `prayer_area` BOOLEAN DEFAULT FALSE NOT NULL,
    `refrigerator` BOOLEAN DEFAULT FALSE NOT NULL,
    `tv` BOOLEAN DEFAULT FALSE NOT NULL,
    `wheelchair` BOOLEAN DEFAULT FALSE NOT NULL,
    `wifi` BOOLEAN DEFAULT FALSE NOT NULL,
    PRIMARY KEY (`id`)
);

CREATE TABLE `rent_info` (
    `id` CHAR(10) NOT NULL,
    `rent` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `terms` text DEFAULT NULL,
    `reservation_percentage` DECIMAL(3, 2) UNSIGNED DEFAULT 0.05 NOT NULL,
    `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    PRIMARY KEY (`id`)
);

CREATE TABLE `rent_log` (
    `id` CHAR(10) NOT NULL,
    `log_id` CHAR(10) NOT NULL,
    `user_email` VARCHAR(50) NOT NULL,
    `rent_amount` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `paid_amount` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `medium` VARCHAR(50) NOT NULL,
    `paid_for` DATE NOT NULL,
    `paid_at` DATETIME NOT NULL DEFAULT NOW(),
    `status` ENUM('Pending', 'Approved', 'Rejected') NOT NULL DEFAULT 'Pending',
    PRIMARY KEY (`id`, `log_id`)
);

CREATE TABLE `lease_info` (
    `id` CHAR(10) NOT NULL,
    `lease` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `terms` text DEFAULT NULL,
    `tenure_months` SMALLINT NOT NULL,
    `reservation_percentage` DECIMAL(3, 2) UNSIGNED DEFAULT 0.05 NOT NULL,
    `termination_percentage` DECIMAL(3, 2) UNSIGNED DEFAULT NULL,
    `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    PRIMARY KEY (`id`)
);

CREATE TABLE `lease_log` (
    `id` CHAR(10) NOT NULL,
    `log_id` CHAR(10) NOT NULL,
    `user_email` VARCHAR(50) NOT NULL,
    `lease_amount` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `lease_tenure` DATE NOT NULL,
    `paid_amount` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `due_amount` DECIMAL(15, 2) UNSIGNED DEFAULT NULL,
    `medium` VARCHAR(50) NOT NULL,
    `reference_log_id` CHAR(10) DEFAULT NULL,
    `remarks` TINYTEXT DEFAULT NULL,
    `paid_at` DATETIME NOT NULL DEFAULT NOW(),
    `status` ENUM('Pending', 'Approved', 'Rejected') NOT NULL DEFAULT 'Pending',
    PRIMARY KEY (`id`, `log_id`)
);

CREATE TABLE `application` (
    `id` CHAR(10) NOT NULL,
    `property_id` CHAR(10) NOT NULL,
    `user_email` VARCHAR(50) NOT NULL,
    `reservation_fee` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `status` ENUM('Pending', 'Approved', 'Rejected') NOT NULL DEFAULT 'Pending',
    `remarks` TINYTEXT DEFAULT NULL,
    `applied_at` DATETIME NOT NULL DEFAULT NOW(),
    `updated_at` DATETIME NOT NULL DEFAULT NOW() ON UPDATE NOW(),
    PRIMARY KEY (`id`)
);

CREATE TABLE `featured` (
    `id` CHAR(10) NOT NULL,
    `log_id` CHAR(10) NOT NULL,
    `paid_amount` DECIMAL(15, 2) UNSIGNED NOT NULL,
    `paid_at` DATETIME NOT NULL DEFAULT NOW(),
    `status` ENUM('active', 'inactive') NOT NULL DEFAULT 'active',
    PRIMARY KEY (`id`, `log_id`)
);

-- CREATE TABLE `log` (
--     `email` CHAR(10) NOT NULL,
--     `logged_at` DATETIME NOT NULL DEFAULT NOW(),
--     `role` ENUM('Admin', 'User', 'Vendor') NOT NULL,
--     `task` TINYTEXT NOT NULL,
--     PRIMARY KEY (`email`, `logged_at`)
-- );
ALTER TABLE
    `property`
ADD
    CONSTRAINT `property_fk0` FOREIGN KEY (`vendor_email`) REFERENCES `vendor`(`email`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `gallery`
ADD
    CONSTRAINT `gallery_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `address`
ADD
    CONSTRAINT `address_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `apartment`
ADD
    CONSTRAINT `apartment_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `studio`
ADD
    CONSTRAINT `studio_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `amenity`
ADD
    CONSTRAINT `amenity_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `rent_info`
ADD
    CONSTRAINT `rent_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `rent_log`
ADD
    CONSTRAINT `rent_log_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `rent_log`
ADD
    CONSTRAINT `rent_log_fk1` FOREIGN KEY (`user_email`) REFERENCES `user`(`email`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `lease_info`
ADD
    CONSTRAINT `lease_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `lease_log`
ADD
    CONSTRAINT `lease_log_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `lease_log`
ADD
    CONSTRAINT `lease_log_fk1` FOREIGN KEY (`user_email`) REFERENCES `user`(`email`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `application`
ADD
    CONSTRAINT `application_fk0` FOREIGN KEY (`property_id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `application`
ADD
    CONSTRAINT `application_fk1` FOREIGN KEY (`user_email`) REFERENCES `user`(`email`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE
    `featured`
ADD
    CONSTRAINT `featured_fk0` FOREIGN KEY (`id`) REFERENCES `property`(`id`) ON DELETE CASCADE ON UPDATE CASCADE;