
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

-- 10-find name of candidates which is joined in dec month

-- query to find candidate who joined in dec for the year 2019 

SELECT first_name 
From lms.fellowship_candidate 
WHERE joining_date BETWEEN '2019-12-01' AND '2019-12-31' ;

-- query to find candidate who joined in dec irrespective of year

SELECT first_name
FROM lms.fellowship_candidate
WHERE MONTH(joining_date)= 12;

-- 13-find all candidates which is passed out in 2019 year

SELECT t1.first_name 
FROM lms.fellowship_candidate t1
LEFT JOIN lms.candidate_qualification t2
ON t1.candidate_id = t2.candidate_id
WHERE t2.passing_year = '2019';  
