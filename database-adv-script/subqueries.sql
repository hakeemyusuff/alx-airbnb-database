SELECT * FROM Property
WHERE
    Property.property_id IN(
        SELECT Review.property_id
        FROM Review
        GROUP BY Review.property_id
        HAVING AVG(Review.rating) > 4.0
    );

SELECT * FROM Users
WHERE
    Users.user_id IN(
        SELECT  Booking.user_id
        FROM Booking
        GROUP BY    Booking.user_id
        HAVING COUNT(Booking.booking_id) > 3
    );