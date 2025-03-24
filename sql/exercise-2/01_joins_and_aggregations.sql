-- Join: Students and Courses
SELECT students.first_name, courses.course_name
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.id
INNER JOIN courses ON enrollments.course_id = courses.course_id;

-- Count students per course
SELECT courses.course_name, COUNT(enrollments.student_id) AS total_students
FROM enrollments
INNER JOIN courses ON enrollments.course_id = courses.course_id
GROUP BY courses.course_name
ORDER BY total_students DESC;

-- Total ECTS per student
SELECT students.first_name, SUM(courses.ects) AS total_ects
FROM enrollments
INNER JOIN students ON enrollments.student_id = students.id
INNER JOIN courses ON enrollments.course_id = courses.course_id
GROUP BY students.first_name;