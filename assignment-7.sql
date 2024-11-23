-- Createin tables

-- ...........student table.............
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    student_name VARCHAR(50),
    age INTEGER check (age > 0),
    email VARCHAR(70) UNIQUE NOT NULL,
    frontend_mark INTEGER check (
        frontend_mark between 0 and 100
    ),
    backend_mark INTEGER check (
        backend_mark between 0 and 100
    ),
    status VARCHAR(10)
)
-- ............courses table.............

CREATE Table courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(50) NOT NULL,
    credits INTEGER check (credits > 0)
)
-- ............enrolement table............

CREATE Table enrollment (
    enrollment_id SERIAL PRIMARY KEY,
    student_id INTEGER REFERENCES students (student_id) on delete CASCADE,
    course_id INTEGER REFERENCES courses (course_id) on delete CASCADE
)

-- inserting Data........

INSERT INTO
    students (
        student_name,
        age,
        email,
        frontend_mark,
        backend_mark,
        status
    )
VALUES (
        'Sameer',
        21,
        'sameer@example.com',
        48,
        60,
        NULL
    ),
    (
        'Zoya',
        23,
        'zoya@example.com',
        52,
        58,
        NULL
    ),
    (
        'Nabil',
        22,
        'nabil@example.com',
        37,
        46,
        NULL
    ),
    (
        'Rafi',
        24,
        'rafi@example.com',
        41,
        40,
        NULL
    ),
    (
        'Sophia',
        22,
        'sophia@example.com',
        50,
        52,
        NULL
    ),
    (
        'Hasan',
        23,
        'hasan@gmail.com',
        43,
        39,
        NULL
    );

INSERT INTO
    courses (course_name, credits)
VALUES ('Next.js', 3),
    ('React.js', 4),
    ('Databases', 3),
    ('Prisma', 3);

INSERT INTO
    enrollment (student_id, course_id)
VALUES (1, 1),
    (1, 2),
    (2, 1),
    (3, 2);

--.................................. Query's ..............................................





-- ..................................Query1.................................................

-- Question:
-- Insert a new student record with the following details:
-- Name:YourName Age:YourAge Email:YourEmail Frontend - Mark:YourMark Backend - Mark:YourMark Status:NULL

-- Code:
INSERT INTO students (student_name,age,email,frontend_mark,backend_mark,status) VALUES ('Saiful',22,'saifulIslam10400i5@gmail.com',70,80,NULL)

-- Explaination: in this query we insert a new row/record into our students table.



-- ..................................Query2.................................................

-- Question:
-- Retrieve the names of all students who are enrolled in the course titled 'Next.js'.

-- Code:
SELECT student_name FROM enrollment
JOIN students USING(student_id)
JOIN courses USING(course_id)
WHERE course_name='Next.js'

-- Explaination: here i retrieved all student name who enroled "Next.js" course. here "Joint" phrase used for join 2 table and "Where" keyword used for write condition.



-- ..................................Query3.................................................

-- Question:
-- Update the status of the student with the highest total (frontend_mark + backend_mark) to 'Awarded'.

-- Code:
UPDATE students
SET status='Awarded'
WHERE frontend_mark+backend_mark=(SELECT (frontend_mark + backend_mark )as total FROM students
ORDER BY total DESC LIMIT 1 )


-- Explaination: we retrieved the max total mark with the help of sub-query.and then update it .



-- ..................................Query4.................................................

-- Question:
-- Delete all courses that have no students enrolled.

-- Code:
DELETE FROM courses
WHERE course_id NOT IN (SELECT course_id from enrollment
GROUP BY course_id)


-- Explaination: here we retrieved all course id which is enroled with the help of sub query and then we delete those courses who are not present in enroled course column .



-- ..................................Query5.................................................

-- Question:
-- Retrieve the names of students using a limit of 2, starting from the 3rd student.

-- Code:
SELECT student_name FROM students
ORDER BY student_id ASC
LIMIT 2 OFFSET 2


-- Explaination: here we retrieved 2 students name. "Limit" phrase limit the total number of row and "Offset" phrase skip the row from the top.



-- ..................................Query6.................................................

-- Question:Retrieve the course names and the number of students enrolled in each course.
-- 

-- Code:
SELECT course_name,count(course_name) as students_enrolled from enrollment
JOIN courses USING(course_id)
GROUP BY course_name


-- Explaination: At first i join 2 table with "Join" key word.and then i make a group of "group_name".Then i cout the number with aggregation function.



-- ..................................Query7.................................................

-- Question: Calculate and display the average age of all students.
-- 

-- Code:
SELECT round(avg(age),2) as average_age from students


-- Explaination: here i use "round" phrase for round the average.'avg' phrase used for get the average of average_age.



-- ..................................Query8.................................................

-- Question: Retrieve the names of students whose email addresses contain 'example.com'.
-- 

-- Code:
SELECT student_name from students
WHERE email='example.com'


-- Explaination: here i use "round" phrase for round the average.'avg' phrase used for get the average of average_age.







