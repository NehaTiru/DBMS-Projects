-- Query 1: The student number and ssn of the student whose name is "Becky"
SELECT snum, ssn
FROM students
WHERE name = 'Becky';

-- Query 2: The major name and major level of the student whose ssn is 123097834
SELECT m.name, m.level
FROM major m
JOIN students s ON m.snum = s.snum
WHERE s.ssn = 123097834;

-- Query 3: The names of all courses offered by the department of Computer Science
SELECT c.name
FROM courses c
JOIN departments d ON c.department_code = d.code
WHERE d.name = 'Computer Science';

-- Query 4: All degree names and levels offered by the department Computer Science
SELECT d.name, d.level
FROM degrees d
JOIN departments dep ON d.department_code = dep.code
WHERE dep.name = 'Computer Science';

-- Query 5: The names of all students who have a minor
SELECT DISTINCT s.name
FROM students s
JOIN minor m ON s.snum = m.snum;

-- Query 6: The count of students who have a minor
SELECT COUNT(DISTINCT snum) AS 'Total Students with Minor'
FROM minor;

-- Query 7: The names and snums of all students enrolled in course “Algorithm”
SELECT s.name, s.snum
FROM students s
JOIN register r ON s.snum = r.snum
JOIN courses c ON r.course_number = c.number
WHERE c.name = 'Algorithm';

-- Query 8: The name and snum of the oldest student
SELECT name, snum
FROM students
ORDER BY dob ASC
LIMIT 1;

-- Query 9: The name and snum of the youngest student
SELECT name, snum
FROM students
ORDER BY dob DESC
LIMIT 1;

-- Query 10: The name, snum and SSN of the students whose name contains letter “n” or “N”
SELECT name, snum, ssn
FROM students
WHERE name LIKE '%n%' OR name LIKE '%N%';

-- Query 11: The name, snum and SSN of the students whose name does not contain letter “n” or “N”
SELECT name, snum, ssn
FROM students
WHERE name NOT LIKE '%n%' AND name NOT LIKE '%N%';

-- Query 12: The course number, name and the number of students registered for each course
SELECT c.number, c.name, COUNT(r.snum) AS 'Number Of Students Registered'
FROM courses c
LEFT JOIN register r ON c.number = r.course_number
GROUP BY c.number, c.name;

-- Query 13: The name of the students enrolled in Fall2020 semester
SELECT s.name
FROM students s
JOIN register r ON s.snum = r.snum
WHERE r.regtime = 'Fall2020';

-- Query 14: The course numbers and names of all courses offered by Department of Computer Science
SELECT c.number, c.name
FROM courses c
JOIN departments d ON c.department_code = d.code
WHERE d.name = 'Computer Science';

-- Query 15: The course numbers and names of all courses offered by either Department of Computer Science or Department of Landscape Architect
SELECT c.number, c.name
FROM courses c
JOIN departments d ON c.department_code = d.code
WHERE d.name IN ('Computer Science', 'Landscape Architect');
