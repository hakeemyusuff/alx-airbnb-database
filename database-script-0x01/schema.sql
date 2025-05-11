CREATE TABLE User(
    user_id UUID PRIMARY KEY,
    first_name VARCHAR NOT NULL,
    last_name VARCHAR NOT NULL,
    email VARCHAR UNIQUE NOT NULL,
    password_hash VARCHAR NOT NULL,
    phone_number VARCHAR NULL,
    role ENUM('guest', 'host', 'admin') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)

CREATE TABLE Property(
    property_id UUID PRIMARY KEY,
    host_id UUID NOT NULL,
    name VARCHAR NOT NULL,
    description TEXT NOT NULL,
    location VARCHAR NOT NULL,
    price_per_night DECIMAL(10, 2) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    CONSTRAINT fk_property_host
        FOREIGN KEY (host_id)
        REFERENCES USER (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

CREATE TABLE Booking(
    booking_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'confirmed', 'cancelled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    CONSTRAINT fk_booking_property
        FOREIGN KEY (property_id)
        REFERENCES Property (property_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_booking_user
        FOREIGN KEY (user_id)
        REFERENCES User (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

CREATE TABLE Payment(
    payment_id UUID PRIMARY KEY,
    booking_id UUID NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('credit_card', 'paypal', 'stripe') NOT NULL
    CONSTRAINT fk_booking
        FOREIGN KEY (booking_id)
        REFERENCES Booking (booking_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

CREATE TABLE Review(
    review_id UUID PRIMARY KEY,
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    rating INTEGER CHECK(rating >= 1 AND rating <= 5) NOT NULL,
    comment TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    CONSTRAINT fk_property
        FOREIGN KEY (property_id)
        REFERENCES Property (property_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES User (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

CREATE TABLE Message(
    message_id UUID PRIMARY KEY,
    sender_id UUID NOT NULL,
    recipient_id UUID NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
    CONSTRAINT fk_message_sender
        FOREIGN KEY (sender_id)
        REFERENCES User (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    CONSTRAINT fk_message_recipient
        FOREIGN KEY (recipient_id)
        REFERENCES User (user_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
)

CREATE UNIQUE INDEX idx_user_email on USER (email);
CREATE INDEX idx_booking_property_id on Booking (property_id);
CREATE INDEX idx_payment_booking_id on Payment (booking_id);