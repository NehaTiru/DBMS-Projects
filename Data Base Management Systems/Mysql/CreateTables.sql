-- Creating the students table
CREATE TABLE students (
    snum INTEGER UNIQUE,
    ssn INTEGER PRIMARY KEY,
    name VARCHAR(10),
    gender VARCHAR(1),
    dob DATETIME,
    c_addr VARCHAR(20),
    c_phone VARCHAR(10),
    p_addr VARCHAR(20),
    p_phone VARCHAR(10)
);

-- Creating the departments table
CREATE TABLE departments (
    code INTEGER PRIMARY KEY,
    name VARCHAR(50) UNIQUE, -- Candidate key
    phone VARCHAR(10),
    college VARCHAR(20)
);

-- Creating the degrees table
CREATE TABLE degrees (
    name VARCHAR(50),
    level VARCHAR(5),
    department_code INTEGER,
    PRIMARY KEY (name, level),
    FOREIGN KEY (department_code) REFERENCES departments(code)
);

-- Creating the courses table
CREATE TABLE courses (
    number INTEGER PRIMARY KEY,
    name VARCHAR(50) UNIQUE, -- Candidate key
    description VARCHAR(50),
    credithours INTEGER,
    level VARCHAR(20),
    department_code INTEGER,
    FOREIGN KEY (department_code) REFERENCES departments(code)
);

-- Creating the register table
CREATE TABLE register (
    snum INTEGER,
    course_number INTEGER,
    regtime VARCHAR(20),
    grade INTEGER,
    PRIMARY KEY (snum, course_number),
    FOREIGN KEY (snum) REFERENCES students(snum),
    FOREIGN KEY (course_number) REFERENCES courses(number)
);

-- Creating the major table
CREATE TABLE major (
    snum INTEGER,
    name VARCHAR(50),
    level VARCHAR(5),
    PRIMARY KEY (snum, name, level),
    FOREIGN KEY (snum) REFERENCES students(snum),
    FOREIGN KEY (name, level) REFERENCES degrees(name, level)
);

-- Creating the minor table
CREATE TABLE minor (
    snum INTEGER,
    name VARCHAR(50),
    level VARCHAR(5),
    PRIMARY KEY (snum, name, level),
    FOREIGN KEY (snum) REFERENCES students(snum),
    FOREIGN KEY (name, level) REFERENCES degrees(name, level)
);
