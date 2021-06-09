Select *
FROM job
INNER JOIN employer
ON job.employer_id = employer.id
WHERE location = "St. Louis City"