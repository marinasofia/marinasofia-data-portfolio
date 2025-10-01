-- Netflix Titles SQL Project
-- Author: Marina Sofia

-- 1. Count movies vs TV shows
SELECT type, COUNT(*) AS total
FROM netflix_titles
GROUP BY type;

-- 2. Top 5 countries producing content
SELECT country, COUNT(*) AS total_titles
FROM netflix_titles
GROUP BY country
ORDER BY total_titles DESC
LIMIT 5;

-- 3. Average release year by genre
SELECT listed_in AS genre, AVG(release_year) AS avg_year
FROM netflix_titles
GROUP BY genre
ORDER BY avg_year;
