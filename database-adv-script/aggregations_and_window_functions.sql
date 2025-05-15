SELECT B.user_id, COUNT(B.booking_id) AS number_of_property
FROM Booking as B
GROUP BY B.user_id;

SELECT
    review_id,
    property_id,
    user_id,
    rating,
    comment,
    created_at,
    AVG(rating) OVER (PARTITION BY property_id) AS average_property_rating
FROM
    Review
ORDER BY
    average_property_rating DESC;
