use mbogodigital;

/* PART 1: DATABASE STRUCTURE */
CREATE TABLE `user`(
    `id` CHAR(36) NOT NULL,
    `duoNumber` INT NULL,
    `firstName` VARCHAR(50) NOT NULL,
    `prefix` VARCHAR(20) NULL,
    `lastName` VARCHAR(50) NOT NULL,
    `secret` VARCHAR(255) NULL,
    `email` VARCHAR(255) NOT NULL,
    `phone` VARCHAR(20) NULL,
    `changeSecretAtLogon` BOOLEAN NULL,
    `enabled` BOOLEAN NOT NULL,
    `roleId` CHAR(36) NULL,
    `educationId` CHAR(36) NULL,
    `cohort` BIGINT NULL,
    `creationDate` DATETIME NOT NULL,
    `modificationDate` DATETIME NOT NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `user` ADD UNIQUE `user_firstname_unique`(`firstName`);
ALTER TABLE
    `user` ADD UNIQUE `user_email_unique`(`email`);
CREATE TABLE `education`(
    `id` CHAR(36) NOT NULL,
    `creboNumber` VARCHAR(20) NOT NULL,
    `name` VARCHAR(100) NOT NULL,
    `level` INT NULL,
    `description` BLOB NULL,
    `registerUntil` DATE NULL,
    `graduateUntil` DATE NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `education` ADD UNIQUE `education_crebonumber_unique`(`creboNumber`);
ALTER TABLE
    `education` ADD UNIQUE `education_name_unique`(`name`);
CREATE TABLE `keuzedelen`(
    `id` CHAR(36) NOT NULL,
    `code` VARCHAR(10) NOT NULL,
    `title` VARCHAR(100) NOT NULL,
    `sbu` INT NOT NULL,
    `description` BLOB NULL,
    `goalsDescription` BLOB NULL,
    `preconditions` BLOB NULL,
    `teachingMethods` BLOB NULL,
    `certificate` BOOLEAN NOT NULL,
    `linkVideo` VARCHAR(255) NULL,
    `linkKD` VARCHAR(255) NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `keuzedelen` ADD UNIQUE `keuzedelen_code_unique`(`code`);
CREATE TABLE `levels`(
    `id` CHAR(36) NOT NULL,
    `educationId` CHAR(36) NOT NULL,
    `level` INT NOT NULL,
    `subject` VARCHAR(50) NOT NULL,
    `description` BLOB NOT NULL,
    `deliverables` BIGINT NOT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE `role`(
    `id` CHAR(36) NOT NULL,
    `name` VARCHAR(30) NOT NULL,
    `level` INT NULL,
    PRIMARY KEY(`id`)
);
ALTER TABLE
    `role` ADD UNIQUE `role_name_unique`(`name`);
ALTER TABLE
    `levels` ADD CONSTRAINT `levels_educationid_foreign` FOREIGN KEY(`educationId`) REFERENCES `education`(`id`);
ALTER TABLE
    `user` ADD CONSTRAINT `user_educationid_foreign` FOREIGN KEY(`educationId`) REFERENCES `education`(`id`);
ALTER TABLE
    `user` ADD CONSTRAINT `user_roleid_foreign` FOREIGN KEY(`roleId`) REFERENCES `role`(`id`);

/* PART 2: DATA */
INSERT INTO `role` VALUES ('126c5a69-792c-427a-8bd9-0e20b8651f2b','Docent',20),('37914d3e-8e27-46e5-982f-30651d3276da','Applicatiebeheerder',80),('5482254d-709b-4f59-adf4-83d7f67d9553','Administrator',100),('6e27105c-c42a-46c8-9cd6-34ff1fe52572','Student',10);
