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
VALUES ('madhu@gmail.com','madhu','v','123456','7894561233','yes','abc'); 

INSERT INTO lms.user_details( email,first_name,last_name,password,contact_number,verified,creator_user)
VALUES ('jayanth@gmail.com','Jayanth','Y','9543321','9211231531','yes','xyz'); 

INSERT INTO lms.user_details( email,first_name,last_name,password,contact_number,verified,creator_user)
VALUES ('tarun123@gmail.com','Tarun','K','45h1ss','6321184562','no','abc'); 


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
