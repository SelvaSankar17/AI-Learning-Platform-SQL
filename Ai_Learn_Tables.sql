create database ai_learning_platform;
use ai_learning_platform;


CREATE TABLE Students(
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    student_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    gender VARCHAR(10),
    city VARCHAR(50),
    join_date DATE
);


CREATE TABLE Instructors(
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    instructor_name VARCHAR(100) NOT NULL,
    specialization VARCHAR(100),
    experience_years INT
);


CREATE TABLE Categories(
    category_id INT PRIMARY KEY AUTO_INCREMENT,
    category_name VARCHAR(100) NOT NULL
);


CREATE TABLE Courses(
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(100) NOT NULL,
    category_id INT,
    instructor_id INT,
    fee DECIMAL(10,2),

    FOREIGN KEY(category_id)
    REFERENCES Categories(category_id),

    FOREIGN KEY(instructor_id)
    REFERENCES Instructors(instructor_id)
);


CREATE TABLE Enrollments(
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    enrollment_date DATE,

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);


CREATE TABLE Assignments(
    assignment_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    assignment_name VARCHAR(100),
    max_marks INT,

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);


CREATE TABLE Assignment_Submissions(
    submission_id INT PRIMARY KEY AUTO_INCREMENT,
    assignment_id INT,
    student_id INT,
    marks_obtained INT,

    FOREIGN KEY(assignment_id)
    REFERENCES Assignments(assignment_id),

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id)
);



CREATE TABLE Quizzes(
    quiz_id INT PRIMARY KEY AUTO_INCREMENT,
    course_id INT,
    quiz_name VARCHAR(100),
    total_marks INT,

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);

CREATE TABLE Quiz_Attempts(
    attempt_id INT PRIMARY KEY AUTO_INCREMENT,
    quiz_id INT,
    student_id INT,
    score INT,

    FOREIGN KEY(quiz_id)
    REFERENCES Quizzes(quiz_id),

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id)
);


CREATE TABLE Payments(
    payment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    amount DECIMAL(10,2),
    payment_date DATE,

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);


CREATE TABLE Certificates(
    certificate_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    issue_date DATE,

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);


CREATE TABLE Feedback(
    feedback_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    rating INT,
    comments VARCHAR(255),

    FOREIGN KEY(student_id)
    REFERENCES Students(student_id),

    FOREIGN KEY(course_id)
    REFERENCES Courses(course_id)
);

