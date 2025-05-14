-- SEED USERS DATAT
-- INSERT INTO Users (user_id, first_name, last_name, email, password_hash, phone_number, role)
-- VALUES
-- (UUID(), 'Aisha', 'Yusuf', 'aisha.yusuf@example.com', 'hashed_pw_01', '08031234567', 'guest'),
-- (UUID(), 'Michael', 'Adekunle', 'michael.adekunle@example.com', 'hashed_pw_02', '08145678901', 'host'),
-- (UUID(), 'Chinonso', 'Okafor', 'chinonso.okafor@example.com', 'hashed_pw_03', NULL, 'guest'),
-- (UUID(), 'Grace', 'Olowu', 'grace.olowu@example.com', 'hashed_pw_04', '09022334455', 'admin'),
-- (UUID(), 'Ibrahim', 'Sule', 'ibrahim.sule@example.com', 'hashed_pw_05', '07055667788', 'host');

-- SEED PROPERTIES DATA
-- INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
-- VALUES
-- (UUID(), 'b6c2ee1b-3102-11f0-8163-a0510b1d0f29', 'Lagos Lagoon View', 'A cozy apartment with a beautiful view of the lagoon in Lekki Phase 1.', 'Lekki, Lagos', 15000.00),
-- (UUID(), 'b6c2ee1b-3102-11f0-8163-a0510b1d0f29', 'Abuja City Loft', 'Modern and spacious loft in the heart of Abuja with free Wi-Fi and AC.', 'Wuse, Abuja', 25000.00),
-- (UUID(), 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 'Ocean Breeze Villa', 'Luxury villa just 5 minutes from Tarkwa Bay beach.', 'Victoria Island, Lagos', 45000.00),
-- (UUID(), 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 'Ibadan Cozy Studio', 'Affordable studio perfect for students and travelers near UI.', 'Agbowo, Ibadan', 8000.00);

-- SEED BOOKINGS
-- INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
-- VALUES
-- (UUID(), '8a5f674e-3103-11f0-8163-a0510b1d0f29', 'b6c2e165-3102-11f0-8163-a0510b1d0f29', '2025-06-01', '2025-06-05', 60000.00, 'confirmed'),

-- (UUID(), '8a5f75ae-3103-11f0-8163-a0510b1d0f29', 'b6c2f2d7-3102-11f0-8163-a0510b1d0f29', '2025-06-10', '2025-06-12', 90000.00, 'pending'),

-- (UUID(), '8a5f79b6-3103-11f0-8163-a0510b1d0f29', 'b6c2f60c-3102-11f0-8163-a0510b1d0f29', '2025-07-01', '2025-07-04', 24000.00, 'confirmed'),

-- (UUID(), '8a5f70b8-3103-11f0-8163-a0510b1d0f29', 'b6c2ee1b-3102-11f0-8163-a0510b1d0f29', '2025-07-10', '2025-07-12', 50000.00, 'cancelled'),

-- (UUID(), '8a5f674e-3103-11f0-8163-a0510b1d0f29', 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', '2025-07-15', '2025-07-18', 45000.00, 'confirmed');


-- SEED PAYMENTS
-- INSERT INTO Payment (payment_id, booking_id, amount, payment_method, payment_date)
-- VALUES
-- (UUID(), 'aceff2cc-3105-11f0-8163-a0510b1d0f29', 60000.00, 'credit_card', '2025-05-10'),

-- (UUID(), 'acf0038b-3105-11f0-8163-a0510b1d0f29', 90000.00, 'paypal', '2025-05-12'),

-- (UUID(), 'acf00b20-3105-11f0-8163-a0510b1d0f29', 24000.00, 'stripe', '2025-06-25'),

-- (UUID(), 'acf0107e-3105-11f0-8163-a0510b1d0f29', 50000.00, 'credit_card', '2025-06-30'),

-- (UUID(), 'acf0159e-3105-11f0-8163-a0510b1d0f29', 45000.00, 'paypal', '2025-07-01');

-- SEED REVIEWS
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
(UUID(), '8a5f674e-3103-11f0-8163-a0510b1d0f29', 'b6c2e165-3102-11f0-8163-a0510b1d0f29', 4, 'Beautiful view and nice ambiance. The host was very welcoming!', '2025-05-14 21:55:00'),

(UUID(), '8a5f75ae-3103-11f0-8163-a0510b1d0f29', 'b6c2f2d7-3102-11f0-8163-a0510b1d0f29', 5, 'The villa was amazing! Loved the proximity to the beach. Highly recommend.', '2025-05-14 21:55:00'),

(UUID(), '8a5f79b6-3103-11f0-8163-a0510b1d0f29', 'b6c2f60c-3102-11f0-8163-a0510b1d0f29', 3, 'The studio was okay, but there was some noise from the street at night. Otherwise, it was convenient.', '2025-05-14 21:55:00'),

(UUID(), '8a5f70b8-3103-11f0-8163-a0510b1d0f29', 'b6c2ee1b-3102-11f0-8163-a0510b1d0f29', 4, 'Nice location and a comfortable space. The only issue was with the Wi-Fi connection.', '2025-05-14 21:55:00'),

(UUID(), '8a5f674e-3103-11f0-8163-a0510b1d0f29', 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 5, 'Wonderful experience! The apartment was clean and exactly as described. Will definitely come back.', '2025-05-14 21:55:00');


-- SEED MESSAGES
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
(UUID(), 'b6c2e165-3102-11f0-8163-a0510b1d0f29', 'b6c2f2d7-3102-11f0-8163-a0510b1d0f29', 'Hey, I wanted to ask if the villa is available for next weekend.', '2025-05-14 21:56:00'),

(UUID(), 'b6c2f2d7-3102-11f0-8163-a0510b1d0f29', 'b6c2e165-3102-11f0-8163-a0510b1d0f29', 'Yes, it is available! Let me know if you need more details.', '2025-05-14 21:57:00'),

(UUID(), 'b6c2f60c-3102-11f0-8163-a0510b1d0f29', 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 'I have a question regarding the checkout time. What time do we need to leave on the last day?', '2025-05-14 21:58:00'),

(UUID(), 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 'b6c2f60c-3102-11f0-8163-a0510b1d0f29', 'Checkout time is at 11 AM. Let me know if you need any further assistance!', '2025-05-14 21:59:00'),

(UUID(), 'b6c2ee1b-3102-11f0-8163-a0510b1d0f29', 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 'Just confirming that the booking is all set for next week. Excited!', '2025-05-14 21:59:00'),

(UUID(), 'b6c2fb2f-3102-11f0-8163-a0510b1d0f29', 'b6c2ee1b-3102-11f0-8163-a0510b1d0f29', 'Yes, everything is set! Looking forward to hosting you.', '2025-05-14 22:00:00');
