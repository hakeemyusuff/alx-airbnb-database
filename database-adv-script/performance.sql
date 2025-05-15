SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pm.payment_id,
    pm.payment_date,
    pm.amount
FROM
    Booking AS b
JOIN
    Users AS u ON b.user_id = u.user_id
JOIN
    Property AS p ON b.property_id = p.property_id
LEFT JOIN
    Payment AS pm ON b.booking_id = pm.booking_id;

EXPLAIN SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name,
    u.last_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    pm.payment_id,
    pm.payment_date,
    pm.amount
FROM
    Booking AS b
JOIN
    Users AS u ON b.user_id = u.user_id
JOIN
    Property AS p ON b.property_id = p.property_id
LEFT JOIN
    Payment AS pm ON b.booking_id = pm.booking_id;

EXPLAIN SELECT
    b.booking_id,
    b.start_date,
    b.end_date,
    b.total_price AS booking_price,
    b.status AS booking_status,
    u.user_id,
    u.first_name,
    p.property_id,
    p.name AS property_name,
    p.location,
    pm.payment_id,
    pm.payment_date,
    pm.amount
FROM
    (SELECT * FROM Booking) AS b -- Force materialization? (Usually not needed)
JOIN
    Users AS u ON b.user_id = u.user_id
JOIN
    Property AS p ON b.property_id = p.property_id
LEFT JOIN
    Payment AS pm ON b.booking_id = pm.booking_id;