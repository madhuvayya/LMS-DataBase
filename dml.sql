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