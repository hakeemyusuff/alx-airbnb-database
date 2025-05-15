SELECT B.user_id, COUNT(B.booking_id) AS number_of_property
FROM Booking as B
GROUP BY B.user_id;

SELECT 
    p.property_id,
    p.name as property_name,
    COUNT(b.booking_id) AS total_bookings,
    ROW_NUMBER() OVER (ORDER BY COUNT(b.booking_id) DESC) AS row_number_rank,
    RANK() OVER (ORDER BY COUNT(b.booking_id) DESC) AS rank_rank
FROM 
    Property p
LEFT JOIN 
    Booking b ON p.property_id = b.property_id
GROUP BY 
    p.property_id, 
    p.name
ORDER BY 
    total_bookings DESC;