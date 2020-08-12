SELECT * FROM lms.user_details;

DESC lms.user_details;

--  Added AUTO_INCREMENT to the id field

ALTER TABLE lms.user_details 
MODIFY id INT NOT NULL AUTO_INCREMENT;

-- Added DEFAULT CURRENT_TIMESTAMP to creator_stamp field 

ALTER TABLE lms.user_details 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- Added data into user details table

INSERT INTO lms.user_details( email,first_name,last_name,password,contact_number,verified,creator_user)
VALUES ('suresh@gmail.com','suresh','A','123456','7894561233','yes','abc'); 
INSERT INTO lms.user_details( email,first_name,last_name,password,contact_number,verified,creator_user)
VALUES ('naresh.1992@gmail.com','Naresh','J','9543321','9211231531','yes','abc'); 
INSERT INTO lms.user_details( email,first_name,last_name,password,contact_number,verified,creator_user)
VALUES ('prashanth@gmail.com','prashanth','n','45h1ss','6321184562','no','abc'); 

-- altered some columns in hired_candidate table

DESC lms.hired_candidate;

SELECT * FROM lms.hired_candidate;

DELETE FROM lms.hired_candidate WHERE email_id='madhu@gmail.com';

ALTER TABLE lms.hired_candidate 
MODIFY id INT UNSIGNED NOT NULL AUTO_INCREMENT;

ALTER TABLE lms.hired_candidate 
MODIFY email_id VARCHAR(100) NOT NULL UNIQUE;

ALTER TABLE lms.hired_candidate 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE lms.hired_candidate 
MODIFY hired_date DATE DEFAULT (DATE(CURRENT_TIMESTAMP));

ALTER TABLE lms.hired_candidate 
MODIFY aggregate_remark DECIMAL(4,2) NOT NULL;

ALTER TABLE lms.hired_candidate
RENAME COLUMN middlle_name TO middle_name;

ALTER TABLE lms.hired_candidate 
MODIFY attitude VARCHAR(10) NOT NULL;

ALTER TABLE lms.hired_candidate 
MODIFY communication_remark VARCHAR(10) NOT NULL;

ALTER TABLE lms.hired_candidate 
MODIFY knowledge_remark VARCHAR(10) NOT NULL;

-- queries to insert data into hired_candidate table

INSERT INTO lms.hired_candidate(first_name,middle_name,last_name, email_id,hired_city,degree,mobile_number,permanent_pincode,hired_lab,attitude,communication_remark,knowledge_remark,aggregate_remark,status,creator_user)
VALUES ('madhu','kuamar','v','madhu@gmail.com','banglore','B.Tech','7894561233','500072','Lab1','Good','OK','OK',72.4,'Pending','suresh'); 

INSERT INTO lms.hired_candidate(first_name,last_name, email_id,hired_city,degree,mobile_number,permanent_pincode,hired_lab,attitude,communication_remark,knowledge_remark,aggregate_remark,status,creator_user)
VALUES ('jayanth','v','jaynth@gmail.com','mumbai','B.Tech','4561213211','456125','Lab3','Good','EXCELLENT','OK',90.7,'Accepted','Naresh');

INSERT INTO lms.hired_candidate(first_name,last_name, email_id,hired_city,degree,mobile_number,permanent_pincode,hired_lab,attitude,communication_remark,knowledge_remark,aggregate_remark,status,creator_user)
VALUES ('tharun','K','tharun.123@yahoo.com','banglore','M.S','4861131362','133131','Lab2','OK','GOOD','OK',82.3,'Rejected','Suresh');

-- queries to alter the column datatype and default values

ALTER TABLE lms.fellowship_candidate 
MODIFY hired_date DATE;

ALTER TABLE lms.fellowship_candidate 
MODIFY email_id VARCHAR(100) NOT NULL UNIQUE;

ALTER TABLE lms.fellowship_candidate 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE lms.fellowship_candidate 
MODIFY aggregate_remark DECIMAL(4,2) NOT NULL;

ALTER TABLE lms.fellowship_candidate 
MODIFY local_address VARCHAR(255);

ALTER TABLE lms.fellowship_candidate 
MODIFY hired_date DATE NOT NULL;

ALTER TABLE lms.fellowship_candidate 
MODIFY parent_mobile_number BIGINT;

ALTER TABLE lms.fellowship_candidate 
MODIFY photo_path VARCHAR(200) NOT NULL;

ALTER TABLE lms.fellowship_candidate 
MODIFY personal_information VARCHAR(200);

ALTER TABLE lms.fellowship_candidate 
MODIFY joining_date DATE DEFAULT (DATE(CURRENT_TIMESTAMP));

-- sql queries to insert data into fellowship_candidate table

 INSERT INTO lms.fellowship_candidate
		(first_name,last_name,email_id,hired_city,hired_date ,mobile_number,permanent_pincode,hired_lab,attitude,communicatin_remark,knowledge_remark,aggregate_remark,creator_user,birth_date,  is_birthdate_verified,parent_name,parmenent_address,photo_path, joining_date, candidate_status,bank_information,educational_information,document_status,remark)
VALUES ( 'jayanth','y','jaynth@gmail.com','mumbai','2020-08-05',1234567894,321456,'Lab1','Good','OK','Good',85.00 ,'Naresh','1995-05-12','yes','prabhaker','Hyderabad', 'c:\images','2020-08-08','Active','SBI','B.Tech','recieved','Good');

INSERT INTO lms.fellowship_candidate
		(first_name,last_name,email_id,hired_city,hired_date ,mobile_number,permanent_pincode,hired_lab,attitude,communicatin_remark,knowledge_remark,aggregate_remark,creator_user,birth_date,is_birthdate_verified,parent_name,parmenent_address,photo_path, candidate_status,bank_information,educational_information,document_status,remark)
VALUES ( 'Madhu','V','madhu@gmail.com','banglore','2020-03-20',7682315245,500072,'Lab2','OK','Good','OK',75 ,'suresh','1994-06-05','yes','vijayarao','Hyderabad', 'c:\images\madhu','Active','SBI','M.Tech','recieved','Good');

INSERT INTO lms.fellowship_candidate
		(first_name,last_name,email_id,hired_city,hired_date ,mobile_number,permanent_pincode,hired_lab,attitude,communicatin_remark,knowledge_remark,aggregate_remark,creator_user,birth_date,  is_birthdate_verified,parent_name,parmenent_address,photo_path, joining_date, candidate_status,bank_information,educational_information,document_status,remark)
VALUES ( 'trinath','t','trinath@gmail.com','banglore','2020-03-20',4567891231,612345,'Lab1','Good','OK','Good',89.10 ,'suresh','1992-10-10','yes','shiva','Ongole', 'image','2020-08-08','Active','AndhraBank','MCA','recieved','Satisfactory');

INSERT INTO lms.fellowship_candidate
		(first_name,last_name,email_id,hired_city,hired_date ,mobile_number,permanent_pincode,hired_lab,attitude,communicatin_remark,knowledge_remark,aggregate_remark,creator_user,birth_date,  is_birthdate_verified,parent_name,parmenent_address,photo_path, candidate_status,bank_information,educational_information,document_status,remark)
VALUES ( 'phani','n','phani.123@yahoo.com','mumbai','2020-02-10',987643210,7862132,'Lab2','Good','Good','Good',70.8 ,'suresh','1993-07-07','yes','mani','Gudiwada', 'image\phani','Active','CANARABank','B.TECH','recieved','Good');

-- queries to alter some fields in candidate_bank_details  table

ALTER TABLE lms.candidate_bank_details 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE lms.candidate_bank_details
DROP COLUMN candidate_bank_detailscol;

-- queries to insert the data into candidate_bank_details table

INSERT INTO lms.candidate_bank_details (candidate_id,name,account_number,is_account_number_verified,ifsc_code,is_ifsc_code_verified,pan_number,is_pan_number_verified,addhaar_num,is_addhaar_num_verified,creator_user)
VALUES (1,'jayanth',123456,'yes','SBI23424','yes','nbjf123439','yes',123456789012,'yes','Naresh');

INSERT INTO lms.candidate_bank_details (candidate_id,name,account_number,is_account_number_verified,ifsc_code,is_ifsc_code_verified,pan_number,is_pan_number_verified,addhaar_num,is_addhaar_num_verified,creator_user)
VALUES (3,'trinath',654321,'yes','ANDB654','yes','xyz12354','yes',678901234512,'yes','suresh');

INSERT INTO lms.candidate_bank_details (candidate_id,name,account_number,is_account_number_verified,ifsc_code,is_ifsc_code_verified,pan_number,is_pan_number_verified,addhaar_num,is_addhaar_num_verified,creator_user)
VALUES (4,'phani',987654,'yes','CNR9786','yes','klm345322','yes',789011234562,'yes','suresh');

INSERT INTO lms.candidate_bank_details (candidate_id,name,account_number,is_account_number_verified,ifsc_code,is_ifsc_code_verified,pan_number,is_pan_number_verified,addhaar_num,is_addhaar_num_verified,creator_user)
VALUES (2,'Madhu',7681234,'yes','SBI7865','yes','ijk768153','yes',456278901123,'yes','suresh');

-- query to alter the creator-stamp column to generate time stamp automatically 

ALTER TABLE lms.candidate_qualification 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert data into candidate_qualificatino table 

INSERT INTO lms.candidate_qualification (candidate_id,diploma,degree_name,is_degree_name_verified,passing_year,is_passing_year_verified,aggr_per,is_aggr_per_verified,final_year_per,is_final_year_per_verified,training_institute,is_training_institute_verified,training_duration_month,is_training_duration_month_verified,other_training,is_other_training_verified,creator_user)
VALUES (1,'MPC','B.Tech',1,'2018',1,85.00,1,88.5,1,'global it',1,5,1,'networking',1,'Naresh');
INSERT INTO lms.candidate_qualification (candidate_id,diploma,degree_name,is_degree_name_verified,employee_decipline,is_employee_decipline_verified,passing_year,is_passing_year_verified,aggr_per,is_aggr_per_verified,final_year_per,is_final_year_per_verified,creator_user)
VALUES (3,'BSc','MCA',1,'network engg',0,'2016',1,70.35,1,80.25,1,'suresh');
INSERT INTO lms.candidate_qualification (candidate_id,diploma,degree_name,is_degree_name_verified,passing_year,is_passing_year_verified,aggr_per,is_aggr_per_verified,final_year_per,is_final_year_per_verified,training_institute,is_training_institute_verified,training_duration_month,is_training_duration_month_verified,creator_user)
VALUES (4,'MPC','B.Tech',1,'2017',1,63.9,1,70.5,1,'techsoft it',1,3,1,'suresh');
INSERT INTO lms.candidate_qualification (candidate_id,diploma,degree_name,is_degree_name_verified,passing_year,is_passing_year_verified,aggr_per,is_aggr_per_verified,final_year_per,is_final_year_per_verified,training_institute,is_training_institute_verified,training_duration_month,is_training_duration_month_verified,creator_user)
VALUES (2,'MPC','M.Tech',1,'2018',1,88.45,1,85.64,1,'iNetSolv',1,5,1,'suresh');

-- query to alter the creator-stamp column to generate time stamp automatically 

ALTER TABLE lms.company 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert data into company table 

INSERT INTO lms.company  (name,address,location,status,creator_user)
VALUES ('vinculum','Candor TechSpace','Noida','Active','suresh');
INSERT INTO lms.company  (name,address,location,status,creator_user)
VALUES ('capgemini',' Rajiv Gandhi Infotech Park',' Maharashtra','Active','suresh');
INSERT INTO lms.company  (name,address,location,status,creator_user)
VALUES ('meru','Shanti Nagar, Mahakali Caves Road','Mumbai','Active','prashanth');
INSERT INTO lms.company  (name,address,location,status,creator_user)
VALUES ('ola','IT park','pune','Inactive','vinay');

-- query to alter the tech_stack table 

ALTER TABLE lms.tech_stack 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE lms.tech_stack 
MODIFY tech_name VARCHAR(50) NOT NULL UNIQUE;

-- queries to insert data into tech_stack table 

INSERT INTO lms.tech_stack(tech_name,image_path,framework,cur_status,creator_user)
VALUES ('Java','java_image.jpg','Spring','Active','suresh');
INSERT INTO lms.tech_stack(tech_name,image_path,framework,cur_status,creator_user)
VALUES ('Mobile','mobile_image.png','React native','Active','naresh');
INSERT INTO lms.tech_stack(tech_name,image_path,framework,cur_status,creator_user)
VALUES ('PHP','image_php.svg','Laravel','Inactive','suresh');
INSERT INTO lms.tech_stack(tech_name,image_path,framework,cur_status,creator_user)
VALUES ('Python','python_image.jpeg','Django','Active','naresh');

-- query to alter the tech_type table 

ALTER TABLE lms.tech_type 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert data into tech_type table

INSERT INTO lms.tech_type(type_name,cur_status,creator_user)
VALUES ('Full Stack','Active','suresh');
INSERT INTO lms.tech_type(type_name,cur_status,creator_user)
VALUES ('Backend','Active','naresh');
INSERT INTO lms.tech_type(type_name,cur_status,creator_user)
VALUES ('Frontend','Active','suresh');

-- query to alter the lab table 

ALTER TABLE lms.lab 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert data into lab table

INSERT INTO lms.lab(name,location,address,status,creator_user)
VALUES ('BridgeLabz Solutions','Mumbai','Malhotra Chambers, Deonar' ,'Active','suresh');
INSERT INTO lms.lab(name,location,address,status,creator_user)
VALUES ('BridgeLabz Solutions','Pune','prakash nagar','Active','naresh');
INSERT INTO lms.lab(name,location,address,status,creator_user)
VALUES ('BridgeLabz Solutions','Bangalore','hsr layout','Active','suresh');

-- query to alter the lab_threshold table 

ALTER TABLE lms.lab_threshold 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE lms.lab_threshold 
MODIFY lab_id INT UNSIGNED NOT NULL UNIQUE;

-- queries to insert lab capacity data into lab_threshold table

INSERT INTO lms.lab_threshold(lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status, creator_user)
VALUES (1,250,6,20,40,'Active','suresh');
INSERT INTO lms.lab_threshold(lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status, creator_user)
VALUES (2,150,3,15,20,'Active','naresh');
INSERT INTO lms.lab_threshold(lab_id, lab_capacity, lead_threshold, ideation_engg_threshold, buddy_engg_threshold, status, creator_user)
VALUES (3,150,4,15,20,'Active','suresh');

-- query to alter the app_parameters table 

ALTER TABLE lms.app_parameters 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

ALTER TABLE lms.app_parameters 
MODIFY cur_status VARCHAR(45) NOT NULL;

ALTER TABLE lms.app_parameters 
MODIFY key_type VARCHAR(20) NOT NULL;

ALTER TABLE lms.app_parameters 
MODIFY lastupd_stamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP;

-- queries to insert data into app_parameters table

INSERT INTO lms.app_parameters(key_type, key_value, key_text, cur_status, lastupd_user, creator_user, seq_num)
VALUES ('DOC_STATUS','PND','Pending','A','suresh','suresh',1);
INSERT INTO lms.app_parameters(key_type, key_value, key_text, cur_status, lastupd_user, creator_user, seq_num)
VALUES ('CUR_STATUS','ACTV','Active','A','suresh','naresh',1);
INSERT INTO lms.app_parameters(key_type, key_value, key_text, cur_status, lastupd_user, creator_user, seq_num)
VALUES ('DOC_STATUS','RCEVD','Received','A','naresh','suresh',2);
INSERT INTO lms.app_parameters(key_type, key_value, key_text, cur_status, lastupd_user, creator_user, seq_num)
VALUES ('CUR_STATUS','IACTV','Inactive','A','naresh','suresh',2);

-- query to alter the mentor table

ALTER TABLE lms.mentor 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert mentor data into mentor table

INSERT INTO lms.mentor(name,mentor_type,lab_id, status, creator_user)
VALUES ('Sunil','lead',3,'Active','suresh');
INSERT INTO lms.mentor(name,mentor_type,lab_id, status, creator_user)
VALUES ('Venkat','ideation',3,'Active','suresh');
INSERT INTO lms.mentor(name,mentor_type,lab_id, status, creator_user)
VALUES ('mohith','buddy',2,'Active','suresh');
INSERT INTO lms.mentor(name,mentor_type,lab_id, status, creator_user)
VALUES ('aniket','lead',1,'Active','suresh');
INSERT INTO lms.mentor(name,mentor_type,lab_id, status, creator_user)
VALUES ('mohith','buddy',1,'Active','suresh');

-- query to alter the mentor_ideation_map table

ALTER TABLE lms.mentor_ideation_map 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert mentor mapping data into mentor_ideation_map table

INSERT INTO lms.mentor_ideation_map(parent_id,mentor_id, status, creator_user)
VALUES (1,2,'Active','suresh');
INSERT INTO lms.mentor_ideation_map(parent_id,mentor_id, status, creator_user)
VALUES (4,5,'Active','suresh');
INSERT INTO lms.mentor_ideation_map(parent_id,mentor_id, status, creator_user)
VALUES (1,3,'Active','suresh');

-- query to alter the mentor_tech_stack table

ALTER TABLE lms.mentor_tech_stack 
MODIFY creator_stamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP;

-- queries to insert mentor stack data into mentor_tech_stack table

INSERT INTO lms.mentor_tech_stack(mentor_id,tech_stack_id, status, creator_user)
VALUES (1,1,'Active','suresh');
INSERT INTO lms.mentor_tech_stack(mentor_id,tech_stack_id, status, creator_user)
VALUES (2,1,'Active','suresh');
INSERT INTO lms.mentor_tech_stack(mentor_id,tech_stack_id, status, creator_user)
VALUES (4,1,'Active','suresh');