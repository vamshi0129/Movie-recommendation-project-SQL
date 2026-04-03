# Movie Recommendation & Rating Analysis System

## Project Overview

This project is a SQL-based database system that simulates a simple movie recommendation engine, like those used by streaming services. It handles user data, movie information, ratings, and watch history while running queries to generate insights and recommendations.

---

## Objectives

* Store and manage user, movie, and rating data.
* Analyze user behavior and movie performance.
* Generate basic movie recommendations.
* Identify trends and popular content.

---
---

## Files required
movies_project.sql

* SQL Joins (INNER JOIN, LEFT JOIN)
* Aggregation Functions (AVG, COUNT)
* Subqueries
* Date Functions
* Grouping and Sorting

---

## Database Schema

### Users

* `user_id` (Primary Key)
* `name`
* `age`

### Movies

* `movie_id` (Primary Key)
* `title`
* `genre`

### Ratings

* `user_id` 
* `movie_id` 
* `rating`

### Watch_History

* `user_id` 
* `movie_id`
* `watch_date`

---

## Features and Queries

### Top Rated Movies

This feature identifies movies with the highest average ratings based on user feedback.

### Popular Genres

This feature finds the genres that users watch most often.

### Movie Recommendations

This feature suggests movies to users based on similar viewing habits with other users.

### User Behavior Analysis

This feature looks at how actively users engage with the platform by counting the number of watched movies.

### Trending Movies

This feature discovers which movies have been watched the most in the last 30 days.

---

## Key Concepts Used

* SQL Joins (INNER JOIN, LEFT JOIN)
* Aggregation Functions (AVG, COUNT)
* Subqueries
* Date Functions
* Grouping and Sorting

---

## How to Run

1. Open MySQL Workbench or any SQL client.
2. Open or import the file: movie_project.sql.
3. Execute the script.
4. Run the queries to view the results.

---

## Author

Vamshi Krishna

---
