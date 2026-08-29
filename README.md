# AI Learning Platform Database Management System

## Overview

A MySQL-based AI Learning Platform Database Management System designed to manage students, instructors, categories, courses, enrollments, assignments, quizzes, payments, certificates, and feedback.

The project demonstrates how a relational database can be designed and queried to support the core activities of an online learning platform.

## Technologies Used

- MySQL
- SQL
- MySQL Workbench
- GitHub

## Features

- Student Management
- Instructor Management
- Course Management
- Course Category Management
- Student Enrollment Tracking
- Assignment Management
- Assignment Submission and Marks Tracking
- Quiz Management
- Quiz Attempt and Score Tracking
- Payment Management
- Certificate Management
- Course Feedback and Rating Management

## Database Structure

The database `ai_learning_platform` contains 11 related tables:

1. Students
2. Instructors
3. Categories
4. Courses
5. Enrollments
6. Assignments
7. Assignment_Submissions
8. Quizzes
9. Quiz_Attempts
10. Payments
11. Certificates
12. Feedback

These tables are connected using primary keys and foreign keys to maintain relationships and referential integrity.

## Database Relationships

- Students can enroll in courses through the Enrollments table.
- Courses belong to categories and are handled by instructors.
- Courses can contain multiple assignments and quizzes.
- Students can submit assignments and attempt quizzes.
- Students can make payments for courses.
- Students can receive certificates for courses.
- Students can provide ratings and feedback for courses.

## SQL Concepts Used

### Basic SQL
- SELECT
- WHERE
- ORDER BY
- DISTINCT
- LIKE
- LIMIT

### Aggregate Functions
- COUNT()
- SUM()
- AVG()
- MAX()
- MIN()

### Intermediate SQL
- INNER JOIN
- LEFT JOIN
- GROUP BY
- HAVING

### Advanced SQL
- Subqueries
- Nested Queries
- NOT EXISTS
- Window Functions

## SQL Analysis

The project includes 60 SQL practice and analysis questions divided into different difficulty levels:

### Easy Level
Covers basic data retrieval, filtering, sorting, pattern matching, and aggregate functions.

### Medium Level
Covers joins, grouping, aggregations, and course/student analysis.

### Hard Level
Covers subqueries, nested queries, and LEFT JOIN-based analysis.

### Advanced Level
Covers NOT EXISTS, missing relationships, and window functions for ranking.

The queries are designed to analyze areas such as:

- Student enrollment
- Course performance
- Quiz scores
- Assignment marks
- Course fees
- Revenue
- Feedback and ratings
- Payments
- Certificates
- Unused or missing relationships between entities

## ER Diagram

The ER diagram represents the database entities, attributes, primary keys, foreign keys, and relationships between the tables.

Add the ER diagram image to this repository and reference it here:

`ER_Diagram.png`

## How to Run

1. Open MySQL Workbench.
2. Create or select the database `ai_learning_platform`.
3. Import or open the SQL project file.
4. Execute the SQL script to create the tables and relationships.
5. Insert the required data.
6. Run the SQL queries for analysis and reporting.

## Project Structure

```text
AI-Learning-Platform-SQL/
│
├── README.md
├── ai_learning_platform.sql
├── ER_Diagram.png
```

> Update the file names in this section if your actual uploaded file names are different.

## Project Objective

The main objective of this project is to design and implement a relational database for an AI learning platform and use SQL queries to retrieve, analyze, and generate meaningful information from the stored data.

## Key Learning Outcomes

- Designed a relational database with multiple interconnected tables.
- Implemented primary key and foreign key relationships.
- Practiced SQL queries from basic to advanced levels.
- Used joins and aggregate functions for data analysis.
- Applied subqueries and nested queries for complex analysis.
- Analyzed learning, enrollment, payment, assessment, and feedback data.

## Author

**Selva Sankar M.**

Data Science & AI | SQL | Python | Excel | Power BI
