
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