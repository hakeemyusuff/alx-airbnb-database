-- INNER JOIN

-- FOR JOINING BOOKINGS, USER AND PROPERTY
SELECT
    B.booking_id,
    U.first_name,
    U.email as user_email,
    P.name as property_name,
    B.start_date,
    B.end_date,
    B.total_price,
    B.status
FROM 
    Booking AS B 
JOIN
    Users AS U ON B.user_id = U.user_id
JOIN
    Property AS P ON P.property_id = P.property_id;


-- FOR JOINING REVIEW, USER AND PROPERTY
SELECT
    R.review_id,
    P.name as property_name,
    P.location,
    U.first_name,
    R.rating,
    R.comment
FROM
    Review as R
JOIN
    Users AS U ON R.user_id = U.user_id
JOIN
    Property AS P ON P.property_id = R.property_id;


-- LEFT JOIN -----
SELECT
    P.property_id,
    P.name AS property_name,
    B.booking_id,
    B.start_date,
    B.end_date,
    B.status
FROM
    Property AS P
LEFT JOIN
    Booking AS B ON P.property_id = B.property_id;


SELECT
    P.property_id,
    P.name  AS property_name,
    P.description,
    P.price_per_night,
    R.rating,
    R.comment
FROM
    Property AS P
LEFT JOIN
    Review AS R ON P.property_id = R.property_id
ORDER BY
    property_name ASC;

-- FULL 0UTER JOIN

SELECT * 
FROM Users 
LEFT JOIN 
    Booking ON Users.user_id = Booking.user_id

UNION

SELECT * 
FROM Users 
RIGHT JOIN 
    Booking ON Users.user_id = Booking.user_id;

-- SELECT *
-- FROM Users
-- FULL OUTER JOIN
--     Booking ON Users.user_id = Booking.user_id