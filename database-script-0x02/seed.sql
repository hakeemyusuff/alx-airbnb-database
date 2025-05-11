-- Inserting into User table
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES ('a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Alice', 'Smith', 'alice.smith@example.com', 'hashed_password_1', '+1-555-123-4567', 'guest', '2025-05-10 10:00:00');

INSERT INTO User (user_id, first_name, last_name, email, password_hash, role)
VALUES ('f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'Bob', 'Johnson', 'bob.johnson@example.com', 'hashed_password_2', 'host');

INSERT INTO User (user_id, first_name, last_name, email, password_hash, role, created_at)
VALUES ('11223344-5566-7788-9900-aabbccddeeff', 'Charlie', 'Brown', 'charlie.brown@example.com', 'hashed_password_3', 'admin', '2025-05-11 12:00:00');

INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES ('98765432-10fe-dcba-9876-543210fedcba', 'Diana', 'Miller', 'diana.miller@example.com', 'hashed_password_4', '+234-801-234-5678', 'guest');

-- Inserting into Property table (referencing User as host)
INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at)
VALUES ('01234567-89ab-cdef-0123-456789abcdef', 'f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'Cozy Apartment in Lagos', 'A comfortable one-bedroom apartment with city views.', 'Lagos, Nigeria', 50.00, '2025-05-10 11:00:00');

INSERT INTO Property (property_id, host_id, name, description, location, price_per_night)
VALUES ('fedcba98-7654-3210-fedc-ba9876543210', 'f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'Luxury Villa in Abuja', 'A spacious villa with a private pool and garden.', 'Abuja, Nigeria', 120.50);

INSERT INTO Property (property_id, host_id, name, description, location, price_per_night, created_at)
VALUES ('abcdef01-2345-6789-abcd-ef0123456789', 'f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'Beachfront Studio in Calabar', 'A modern studio apartment right on the beach.', 'Calabar, Nigeria', 75.00, '2025-05-11 09:00:00');

-- Inserting into Booking table (referencing User and Property)
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES ('1a2b3c4d-e5f6-7890-1234-567890abcdef', '01234567-89ab-cdef-0123-456789abcdef', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', '2025-05-15', '2025-05-18', 150.00, 'confirmed', '2025-05-11 13:00:00');

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES ('fedcba98-7654-3210-fedc-ba9876543210', 'fedcba98-7654-3210-fedc-ba9876543210', '98765432-10fe-dcba-9876-543210fedcba', '2025-06-01', '2025-06-07', 843.50, 'pending');

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES ('abcdef01-2345-6789-abcd-ef0123456789', 'abcdef01-2345-6789-abcd-ef0123456789', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', '2025-05-25', '2025-05-27', 150.00, 'confirmed', '2025-05-11 14:00:00');

-- Inserting into Payment table (referencing Booking)
INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES ('11aa22bb-33cc-44dd-55ee-ff0011223344', '1a2b3c4d-e5f6-7890-1234-567890abcdef', 150.00, '2025-05-11 13:15:00', 'credit_card');

INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES ('aabbccdd-eeff-0011-2233-445566778899', 'fedcba98-7654-3210-fedc-ba9876543210', 400.00, 'paypal'); -- Partial payment

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES ('99887766-5544-3322-1100-aabbccddeeff', 'fedcba98-7654-3210-fedc-ba9876543210', 443.50, '2025-05-28 10:00:00', 'credit_card'); -- Remaining payment

-- Inserting into Review table (referencing User and Property)
INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES ('a1b2c3d4-e5f6-7890-1234-567890abcdef', '01234567-89ab-cdef-0123-456789abcdef', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 4, 'Great location and comfortable stay!', '2025-05-19 09:00:00');

INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES ('fedcba98-7654-3210-fedc-ba9876543210', '01234567-89ab-cdef-0123-456789abcdef', '98765432-10fe-dcba-9876-543210fedcba', 5, 'Absolutely loved the villa! The pool was fantastic.');

INSERT INTO Review (review_id, property_id, user_id, rating, created_at)
VALUES ('12345678-90ab-cdef-1234-567890abcdef', 'abcdef01-2345-6789-abcd-ef0123456789', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 3, 'Okay for a short stay.', '2025-05-27 15:00:00');

-- Inserting into Message table (referencing User as sender and recipient)
INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES ('aabbccdd-eeff-0011-2233-445566778899', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'Hi Bob, I have a question about your Lagos apartment.', '2025-05-11 15:00:00');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES ('99887766-5544-3322-1100-aabbccddeeff', 'f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'a1b2c3d4-e5f6-7890-1234-567890abcdef', 'Sure, Alice, what would you like to know?');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES ('123abc45-def6-7890-1234-567890abcdef', '11223344-5566-7788-9900-aabbccddeeff', 'f9e8d7c6-b5a4-3210-fedc-ba9876543210', 'Admin notification: A new property has been listed.', '2025-05-11 16:00:00');