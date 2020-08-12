
--  query to find name of candidate which did not assign technology

SELECT t1.first_name
FROM lms.fellowship_candidate t1
    LEFT JOIN lms.candidate_stack_assignment t2
		ON t1.candidate_id = t2.candidate_id
WHERE t2.candidate_id IS NULL;