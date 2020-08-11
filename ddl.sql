-- lms schema sql query

CREATE SCHEMA lms;

-- User Details table sql query

CREATE TABLE IF NOT EXISTS lms.user_details (
  id INT NOT NULL,
  email VARCHAR(45) NOT NULL UNIQUE,
  first_name VARCHAR(45) NOT NULL,
  last_name VARCHAR(45) NOT NULL,
  password VARCHAR(45) NOT NULL,
  contact_number VARCHAR(10) NOT NULL,
  verified VARCHAR(45) NOT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

-- sql query to add auto increment to user_details table id

ALTER TABLE lms.user_details 
MODIFY id INT NOT NULL AUTO_INCREMENT;

-- Hired Candidate table sql query

CREATE TABLE IF NOT EXISTS lms.hired_candidate (
  id INT NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  middlle_name VARCHAR(45) NULL,
  last_name VARCHAR(45) NOT NULL,
  email_id VARCHAR(45) NOT NULL,
  hired_city VARCHAR(45) NOT NULL,
  degree VARCHAR(45) NOT NULL,
  hired_date DATE NOT NULL,
  mobile_number VARCHAR(45) NOT NULL,
  permanent_pincode INT NOT NULL,
  hired_lab VARCHAR(45) NOT NULL,
  attitude VARCHAR(45) NULL,
  communication_remark VARCHAR(45) NULL,
  knowledge_remark VARCHAR(45) NULL,
  aggregate_remark VARCHAR(45) NOT NULL,
  status VARCHAR(45) NOT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

-- fellowship table sql query

CREATE TABLE IF NOT EXISTS lms.fellowship_candidate (
  candidate_id INT UNSIGNED NOT NULL,
  first_name VARCHAR(45) NOT NULL,
  middle_name VARCHAR(45) NULL,
  last_name VARCHAR(45) NOT NULL,
  email_id VARCHAR(45) NOT NULL,
  hired_city VARCHAR(45) NOT NULL,
  hired_date DATE NOT NULL,
  mobile_number INT(10) UNSIGNED NOT NULL,
  permanent_pincode INT UNSIGNED NOT NULL,
  hired_lab VARCHAR(45) NOT NULL,
  attitude VARCHAR(45) NOT NULL,
  communicatin_remark VARCHAR(45) NOT NULL,
  knowledge_remark VARCHAR(45) NOT NULL,
  aggregate_remark VARCHAR(45) NOT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  birth_date DATE NOT NULL,
  is_birthdate_verified VARCHAR(10) NOT NULL,
  parent_name VARCHAR(45) NOT NULL,
  parent_occupation VARCHAR(45) NULL,
  parent_mobile_number INT(10) UNSIGNED NOT NULL,
  parent_annual_salary INT NULL,
  local_address VARCHAR(255) NOT NULL,
  parmenent_address VARCHAR(255) NOT NULL,
  photo_path VARCHAR(45) NOT NULL,
  joining_date DATE NOT NULL,
  candidate_status VARCHAR(45) NOT NULL,
  personal_information VARCHAR(255) NOT NULL,
  bank_information VARCHAR(255) NOT NULL,
  educational_information VARCHAR(255) NOT NULL,
  document_status VARCHAR(45) NOT NULL,
  remark VARCHAR(45) NOT NULL,
  PRIMARY KEY (candidate_id)
);

-- candidate bank details table sql query

CREATE TABLE IF NOT EXISTS lms.candidate_bank_details (
  id INT NOT NULL,
  candidate_id INT UNSIGNED NOT NULL,
  name VARCHAR(45) NOT NULL,
  account_number VARCHAR(45) NOT NULL UNIQUE,
  is_account_number_verified VARCHAR(45) NOT NULL,
  ifsc_code VARCHAR(11) NOT NULL,
  is_ifsc_code_verified VARCHAR(45) NOT NULL,
  pan_number VARCHAR(10) NOT NULL UNIQUE,
  is_pan_number_verified VARCHAR(45) NOT NULL,
  candidate_bank_detailscol VARCHAR(45) NOT NULL,
  addhaar_num VARCHAR(12) NOT NULL UNIQUE,
  is_addhaar_num_verified VARCHAR(45) NOT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate (candidate_id)
);

-- sql query for creatin candidate_qualification table

CREATE TABLE lms.candidate_qualification (
  id INT UNSIGNED NOT NULL,
  candidate_id INT UNSIGNED NOT NULL,
  diploma VARCHAR(60) NOT NULL,
  degree_name VARCHAR(45) NOT NULL,
  is_degree_name_verified TINYINT NOT NULL,
  employee_decipline VARCHAR(45) NULL,
  is_employee_decipline_verified TINYINT NULL,
  passing_year YEAR NOT NULL,
  is_passing_year_verified TINYINT NOT NULL,
  aggr_per DECIMAL(4,2) NOT NULL,
  is_aggr_per_verified TINYINT NOT NULL,
  final_year_per DECIMAL(4,2) NOT NULL,
  is_final_year_per_verified TINYINT NOT NULL,
  training_institute VARCHAR(100) NULL,
  is_training_institute_verified TINYINT NULL,
  training_duration_month TINYINT NULL,
  is_training_duration_month_verified TINYINT NULL,
  other_training VARCHAR(150) NULL,
  is_other_training_verified TINYINT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate (candidate_id)
);

-- candidate_documents table creation sql query

CREATE TABLE  lms.candidate_documents (
  id INT UNSIGNED NOT NULL,
  candidate_id INT UNSIGNED NOT NULL,
  doc_type VARCHAR(45) NOT NULL,
  doc_path VARCHAR(45) NOT NULL,
  status VARCHAR(45) NOT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate (candidate_id)
);

select * from information_schema.columns where column_name = 'candidate_id';
SELECT *
      FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
      WHERE REFERENCED_TABLE_SCHEMA IS NOT NULL;

-- sql query for creating company table

CREATE TABLE lms.company (
  id INT UNSIGNED NOT NULL,
  name VARCHAR(50) NOT NULL,
  address VARCHAR(200) NOT NULL,
  location VARCHAR(45) NOT NULL,
  status VARCHAR(45) NOT NULL,
  creator_stamp TIMESTAMP(6) NOT NULL,
  creator_user VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
);

-- sql query to create maker_program table

CREATE TABLE lms.maker_program (
	id INT UNSIGNED NOT NULL,
    program_name VARCHAR(50) NOT NULL,
    program_type VARCHAR(50) NOT NULL,
    program_link VARCHAR(50) NOT NULL,
    tech_stack_id INT NOT NULL,
    tech_type_id INT NOT NULL,
    is_program_approved VARCHAR(10) NOT NULL,
    description VARCHAR(250) NOT NULL,
    status VARCHAR(10) NOT NULL,
    creator_stamp TIMESTAMP NOT NULL,
    creator_user VARCHAR(45) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (tech_stack_id) REFERENCES tech_stack(id),
	FOREIGN KEY (tech_type_id) REFERENCES tech_type(id)
);

-- sql query to create app_parameters table

CREATE TABLE lms.app_parameters (
    id INT UNSIGNED NOT NULL,
    key_type VARCHAR(20) NOT NULL,
    key_value VARCHAR(15) NOT NULL,
    key_text VARCHAR(10) NOT NULL,
    cur_status VARCHAR(2) NOT NULL,
    lastupd_user VARCHAR(40) NOT NULL,
    lastupd_stamp TIMESTAMP NOT NULL,
    creator_stamp TIMESTAMP NOT NULL,
    creator_user VARCHAR(45) NOT NULL,
    seq_num INT NOT NULL
);

-- sql query to create mentor table

CREATE TABLE lms.mentor (
	id INT NOT NULL,
	name VARCHAR(45) NOT NULL,
	mentor_type VARCHAR(45) NOT NULL,
	lab_id VARCHAR(45) NOT NULL,
	status VARCHAR(45) NOT NULL,
	creator_stamp TIMESTAMP(6) NOT NULL,
	creator_user VARCHAR(45) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (lab_id) REFERENCES lab(id)
);

-- sql query for creating mentor_ideation_map table

CREATE TABLE lms.mentor_ideation_map (
	id INT NOT NULL,
    parent_id INT NOT NULL,
    mentor_id INT NOT NULL,
    status VARCHAR(20),
    creator_stamp TIMESTAMP NOT NULL,
    creator_user VARCHAR(45),
    PRIMARY KEY (id),
    FOREIGN KEY (parent_id) REFERENCES mentor (id),
    FOREIGN KEY (mentor_id) REFERENCES mentor (id)
);

-- sql query for creating mentor_tech_stack table

CREATE TABLE lms.mentor_tech_stack (
	id INT UNSIGNED NOT NULL,
	mentor_id INT NOT NULL,
	tech_stack_id INT NOT NULL,
	status VARCHAR(45) NOT NULL,
	creator_stamp DATETIME NOT NULL,
	creator_user VARCHAR(45) NOT NULL,
	PRIMARY KEY (id),
    FOREIGN KEY (mentor_id) REFERENCES mentor(id),
    FOREIGN KEY (tech_stack_id) REFERENCES tech_stack(id)
);

-- sql query to create tech_stack table

CREATE TABLE lms.tech_stack (
	id INT NOT NULL ,
	tech_name VARCHAR(45) NOT NULL,
	image_path VARCHAR(45) NOT NULL,
	framework VARCHAR(45) NOT NULL,
	cur_status VARCHAR(45) NOT NULL,
	creator_stamp TIMESTAMP(6) NOT NULL,
	creator_user VARCHAR(45) NOT NULL,
	PRIMARY KEY (id)
);

-- sql query to create tech_type table

CREATE TABLE lms.tech_type (
	id INT NOT NULL,
	type_name VARCHAR(45) NOT NULL,
	cur_status VARCHAR(45) NOT NULL,
	creator_stamp TIMESTAMP(6) NOT NULL,
	creator_user VARCHAR(45) NOT NULL,
	PRIMARY KEY (id)
);

-- sql query to create lab table

CREATE TABLE lms.lab (
	id INT NOT NULL,
	name VARCHAR(45) NOT NULL,
	location VARCHAR(45) NOT NULL,
	address VARCHAR(250) NOT NULL,
	status VARCHAR(45) NOT NULL,
	creator_stamp TIMESTAMP(6) NOT NULL,
	creator_user VARCHAR(45) NOT NULL,
	PRIMARY KEY (id)
);

CREATE TABLE lms.lab_threshold (
	id INT NOT NULL,
	lab_id INT NOT NULL,
	lab_capacity INT UNSIGNED NOT NULL,
	lead_threshold INT UNSIGNED NOT NULL,
	ideation_engg_threshold INT UNSIGNED NOT NULL,
	buddy_engg_threshold INT UNSIGNED NOT NULL,
	status VARCHAR(45) NOT NULL,
	creator_stamp TIMESTAMP(6) NOT NULL,
	creator_user VARCHAR(45) NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (lab_id) REFERENCES lms.lab(id)
);

-- sql query to create company_requirement table

CREATE TABLE lms.company_requirement (
	id INT UNSIGNED NOT NULL,
    company_id INT UNSIGNED NOT NULL,
    requested_month INT UNSIGNED NOT NULL,
    city VARCHAR(30) NOT NULL,
    is_doc_verifrication VARCHAR(10) NOT NULL,
    requirement_doc_path VARCHAR(70) NOT NULL,
    no_of_engg INT UNSIGNED NOT NULL,
    tech_stack_id INT NOT NULL,
    tech_type_id INT NOT NULL,
    maker_program_id  INT UNSIGNED NOT NULL,
    lead_id INT NOT NULL,
    ideation_engg_id INT NOT NULL,
    buddy_engg_id INT NOT NULL,
    special_remark VARCHAR(250) NOT NULL,
    status VARCHAR(50) NOT NULL,
    creator_stamp TIMESTAMP NOT NULL,
    creator_user VARCHAR(45) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (tech_stack_id) REFERENCES tech_stack (id),
    FOREIGN KEY (tech_type_id) REFERENCES tech_type (id),
    FOREIGN KEY (maker_program_id) REFERENCES maker_program (id),
    FOREIGN KEY (lead_id) REFERENCES mentor (id),
    FOREIGN KEY (ideation_engg_id) REFERENCES mentor (id),
    FOREIGN KEY (buddy_engg_id) REFERENCES mentor (id) 
);

-- sql query to create candidate_stack_assignment table

CREATE TABLE lms.candidate_stack_assignment (
	id INT UNSIGNED NOT NULL,
    requirement_id INT UNSIGNED NOT NULL,
    candidate_id INT UNSIGNED NOT NULL,
    assign_date DATE NOT NULL,
    status VARCHAR(10) NOT NULL,
    creator_stamp TIMESTAMP NOT NULL,
    creator_user VARCHAR(45) NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (requirement_id) REFERENCES company_requirement (id),
    FOREIGN KEY (candidate_id) REFERENCES fellowship_candidate (candidate_id)
);