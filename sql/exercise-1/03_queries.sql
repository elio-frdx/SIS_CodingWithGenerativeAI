-- List all students
SELECT * FROM students;

-- Students enrolled after Sept 2023
SELECT * FROM students WHERE enrollment_date > '2023-09-30';

-- Students not using Gmail
SELECT * FROM students WHERE email NOT ILIKE '%@gmail.com';