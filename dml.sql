-- lms schema sql query

CREATE SCHEMA `lms` ;


--User Details table sql query

CREATE TABLE `lms`.`user_details` (
  `id` INT NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `contact_number` VARCHAR(10) NOT NULL,
  `verified` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE);

--Hired Candidate table sql query

CREATE TABLE `lms`.`hired_candidate` (
  `id` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `middlle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email_id` VARCHAR(45) NOT NULL,
  `hired_city` VARCHAR(45) NOT NULL,
  `degree` VARCHAR(45) NOT NULL,
  `hired_date` DATE NOT NULL,
  `mobile_number` VARCHAR(45) NOT NULL,
  `permanent_pincode` INT NOT NULL,
  `hired_lab` VARCHAR(45) NOT NULL,
  `attitude` VARCHAR(45) NULL,
  `communication_remark` VARCHAR(45) NULL,
  `knowledge_remark` VARCHAR(45) NULL,
  `aggregate_remark` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

--fellowship table sql query

CREATE TABLE `lms`.`fellowship_candidate` (
  `candidate_id` INT UNSIGNED NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `middle_name` VARCHAR(45) NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email_id` VARCHAR(45) NOT NULL,
  `hired_city` VARCHAR(45) NOT NULL,
  `hired_date` DATE NOT NULL,
  `mobile_number` INT(10) UNSIGNED NOT NULL,
  `permanent_pincode` INT UNSIGNED NOT NULL,
  `hired_lab` VARCHAR(45) NOT NULL,
  `attitude` VARCHAR(45) NOT NULL,
  `communicatin_remark` VARCHAR(45) NOT NULL,
  `knowledge_remark` VARCHAR(45) NOT NULL,
  `aggregate_remark` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  `birth_date` DATE NOT NULL,
  `is_birthdate_verified` VARCHAR(10) NOT NULL,
  `parent_name` VARCHAR(45) NOT NULL,
  `parent_occupation` VARCHAR(45) NULL,
  `parent_mobile_number` INT(10) UNSIGNED NOT NULL,
  `parent_annual_salary` INT NULL,
  `local_address` VARCHAR(255) NOT NULL,
  `parmenent_address` VARCHAR(255) NOT NULL,
  `photo_path` VARCHAR(45) NOT NULL,
  `joining_date` DATE NOT NULL,
  `candidate_status` VARCHAR(45) NOT NULL,
  `personal_information` VARCHAR(255) NOT NULL,
  `bank_information` VARCHAR(255) NOT NULL,
  `educational_information` VARCHAR(255) NOT NULL,
  `document_status` VARCHAR(45) NOT NULL,
  `remark` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`candidate_id`));

-- candidate bank details table sql query

CREATE TABLE `lms`.`candidate_bank_details` (
  `id` INT NOT NULL,
  `candidate_id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `account_number` VARCHAR(45) NOT NULL,
  `is_account_number_verified` VARCHAR(45) NOT NULL,
  `ifsc_code` VARCHAR(11) NOT NULL,
  `is_ifsc_code_verified` VARCHAR(45) NOT NULL,
  `pan_number` VARCHAR(10) NOT NULL,
  ` is_pan_number_verified` VARCHAR(45) NOT NULL,
  `candidate_bank_detailscol` VARCHAR(45) NOT NULL,
  `addhaar_num` VARCHAR(12) NOT NULL,
  `is_addhaar_num_verified` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `candidate_id_idx` (`candidate_id` ASC) VISIBLE,
  UNIQUE INDEX `account_number_UNIQUE` (`account_number` ASC) VISIBLE,
  UNIQUE INDEX `pan_number_UNIQUE` (`pan_number` ASC) VISIBLE,
  UNIQUE INDEX `addhaar_num_UNIQUE` (`addhaar_num` ASC) VISIBLE,
  CONSTRAINT `candidate_id`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `lms`.`fellowship_candidate` (`candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- candidate_documents table creation sql query

CREATE TABLE `lms`.`candidate_documents` (
  `id` INT UNSIGNED NOT NULL,
  `candidate_id` INT UNSIGNED NOT NULL,
  `doc_type` VARCHAR(45) NOT NULL,
  `doc_path` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `candidate_id_idx` (`candidate_id` ASC) VISIBLE,
  CONSTRAINT `candidate_documenst_fk_candidate_id`
    FOREIGN KEY (`candidate_id`)
    REFERENCES `lms`.`fellowship_candidate` (`candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- sql query for creating company table

CREATE TABLE `lms`.`company` (
  `id` INT UNSIGNED NOT NULL,
  `name` VARCHAR(50) NOT NULL,
  `address` VARCHAR(200) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- sql query for creatin candidate_qualification table

CREATE TABLE `lms`.`candidate_qualification` (
  `id` INT UNSIGNED NOT NULL,
  `candidate_qualification_fk_candidate_id` INT UNSIGNED NOT NULL,
  `diploma` VARCHAR(60) NOT NULL,
  `degree_name` VARCHAR(45) NOT NULL,
  `is_degree_name_verified` TINYINT NOT NULL,
  `employee_decipline` VARCHAR(45) NULL,
  `is_employee_decipline_verified` TINYINT NULL,
  `passing_year` YEAR(4) NOT NULL,
  `is_passing_year_verified` TINYINT NOT NULL,
  `aggr_per` DECIMAL(4,2) UNSIGNED NOT NULL,
  `is_aggr_per_verified` TINYINT NOT NULL,
  `final_year_per` DECIMAL(4,2) UNSIGNED NOT NULL,
  `is_final_year_per_verified` TINYINT NOT NULL,
  `training_institute` VARCHAR(100) NULL,
  `is_training_institute_verified` TINYINT NULL,
  `training_duration_month` INT(2) NULL,
  `is_training_duration_month_verified` TINYINT NULL,
  `other_training` VARCHAR(150) NULL,
  `is_other_training_verified` TINYINT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `candidate_qualification_fk_candidate_id_idx` (`candidate_qualification_fk_candidate_id` ASC) VISIBLE,
  CONSTRAINT `candidate_qualification_fk_candidate_id`
    FOREIGN KEY (`candidate_qualification_fk_candidate_id`)
    REFERENCES `lms`.`fellowship_candidate` (`candidate_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

-- sql query to create lab table

CREATE TABLE `lms`.`lab` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  `address` VARCHAR(250) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- sql query to create tech_type table

CREATE TABLE `lms`.`tech_type` (
  `id` INT NOT NULL,
  `type_name` VARCHAR(45) NOT NULL,
  `cur_status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- sql query to create tech_stack table

CREATE TABLE `lms`.`tech_stack` (
  `id` INT NOT NULL,
  `tech_name` VARCHAR(45) NOT NULL,
  `image_path` VARCHAR(45) NOT NULL,
  `framework` VARCHAR(45) NOT NULL,
  `cur_status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- sql query to create mentor table

CREATE TABLE `lms`.`mentor` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `mentor_type` VARCHAR(45) NOT NULL,
  `lab_id` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

-- sql query to create mentor_ideation_map table

CREATE TABLE `lms`.`mentor_ideation_map` (
  `id` INT NOT NULL,
  `mentor_id` VARCHAR(45) NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `creator_stamp` TIMESTAMP(6) NOT NULL,
  `creator_user` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));