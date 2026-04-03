# Movie Recommendation & Rating Analysis System

## Project Overview

This project is a SQL-based database system designed to simulate a basic movie recommendation engine similar to those used by streaming platforms. It manages user data, movie information, ratings, and watch history, and performs analytical queries to generate insights and recommendations.

---

## Objectives

* Store and manage user, movie, and rating data
* Analyze user behavior and movie performance
* Generate basic movie recommendations
* Identify trends and popular content

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

* `user_id` (Foreign Key)
* `movie_id` (Foreign Key)
* `rating`

### Watch_History

* `user_id` (Foreign Key)
* `movie_id` (Foreign Key)
* `watch_date`

---

## Features and Queries

### Top Rated Movies

Identifies movies with the highest average ratings based on user feedback.

### Popular Genres

Determines which genres are most frequently watched by users.

### Movie Recommendations

Suggests movies to users based on similarities in viewing behavior with other users.

### User Behavior Analysis

Analyzes how actively users engage with the platform by counting watched movies.

### Trending Movies

Finds movies that have been watched most frequently in the recent period (last 30 days).

---

## Key Concepts Used
* SQL Joins
* Aggregation Functions (AVG, COUNT)
* Subqueries
* Date Functions
* Grouping and Sorting

---

## How to Run

1. Open MySQL Workbench or any SQL client
2. Open or import the file:
   movie_project.sql
3. Execute the script
4. Run the queries to view results

---


## Author

Vamshi krishna

---
