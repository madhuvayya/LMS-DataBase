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