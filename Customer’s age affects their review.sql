WITH AgeReview AS (
    SELECT 
        c.age,
        r.customerid,
        r.ratings,
        AVG(r.ratings) OVER (PARTITION BY c.age) AS avg_rating_by_age
    FROM reviews r
    JOIN customers c ON r.customerid = c.ID
)
SELECT 
    age,
    COUNT(customerid) AS total_reviews,
    ROUND(AVG(ratings), 2) AS overall_avg_rating,
    ROUND(AVG(avg_rating_by_age), 2) AS avg_rating_per_age_group
FROM AgeReview
GROUP BY age
ORDER BY age;