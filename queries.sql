
--  query to find name of candidate which did not assign technology

SELECT t1.first_name
FROM lms.fellowship_candidate t1
    LEFT JOIN lms.candidate_stack_assignment t2
		ON t1.candidate_id = t2.candidate_id
WHERE t2.candidate_id IS NULL;

-- query find name of cnadidate which is not submit documents 

SELECT t1.first_name
FROM lms.fellowship_candidate t1
    LEFT JOIN lms.candidate_documents t2
		ON t1.candidate_id = t2.candidate_id
WHERE t2.status IS NULL OR t2.status = 'Pending';

-- query to find name of candidate who is not submit bank details

SELECT t1.first_name
FROM lms.fellowship_candidate t1
    LEFT JOIN lms.candidate_bank_details t2
		ON t1.candidate_id = t2.candidate_id
WHERE t2.candidate_id IS NULL;

-- query to find name of candidates which is joined in dec month

SELECT first_name 
From lms.fellowship_candidate 
WHERE joining_date BETWEEN '2019-12-01' AND '2019-12-31' ;

-- find name of candidates which is joined in dec month

-- query to find candidate who joined in dec for the year 2019 

SELECT first_name 
From lms.fellowship_candidate 
WHERE joining_date BETWEEN '2019-12-01' AND '2019-12-31' ;

-- query to find candidate who joined in dec irrespective of year

SELECT first_name
FROM lms.fellowship_candidate
WHERE MONTH(joining_date)= 12;

-- find all candidates which is passed out in 2019 year

SELECT t1.first_name 
FROM lms.fellowship_candidate t1
LEFT JOIN lms.candidate_qualification t2
ON t1.candidate_id = t2.candidate_id
WHERE t2.passing_year = '2019';  

--  which technology assign to whom candidates which is having MCA background

SELECT t1.tech_name , t1.creator_stamp 
FROM lms.tech_stack t1
JOIN lms.company_requirement t2
ON t1.id = t2.tech_stack_id
JOIN lms.candidate_stack_assignment t3
ON t2.id = t3.requirement_id
JOIN lms.candidate_qualification t4 
ON t3.candidate_id = t4.candidate_id
WHERE t4.degree_name = 'MCA';

-- how many week candidate completed in the bridgelabz since joining date candidate id is 2

SELECT (week(current_date()) - week(t1.joining_date))
FROM lms.fellowship_candidate t1
WHERE t1.candidate_id = 2;

-- find joining date of candidate if candidate id is 4

SELECT t1.joining_date
FROM lms.fellowship_candidate t1
WHERE t1.candidate_id = 4;

call getJoiningDate(4);

-- how many week remaining of candidate in the bridglabz from today if candidate id is 5

SELECT 16 - (WEEK(current_date()) - WEEK(t1.joining_date)) 
FROM lms.fellowship_candidate t1
WHERE candidate_id = 5;

-- how many days remaining of candidate in the bridgelabz from today if candidate is is 6

SELECT 112 - DATEDIFF(CURRENT_DATE(), t1.joining_date) AS DAYS
FROM lms.fellowship_candidate t1
WHERE t1.candidate_id = 6;
