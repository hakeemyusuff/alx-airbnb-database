# Analysis of Database Schema Normalization

I analyzed the following tables in the database schema to ensure they comply with the principles of normalization, specifically up to the Third Normal Form (3NF):

## 1. User Table

* **Primary Key:** `user_id` (UUID)
* **Analysis:**
  * **1NF:** All attributes (`first_name`, `last_name`, `email`, `password_hash`, `phone_number`, `role`, `created_at`) contain single, atomic values.
  * **2NF:** Not applicable as the primary key (`user_id`) is a single attribute.
  * **3NF:** All non-key attributes directly depend on the primary key (`user_id`). There are no transitive dependencies (no non-key attribute depends on another non-key attribute).
* **Conclusion:** The `User` table is in **3NF**.

## 2. Property Table

* **Primary Key:** `property_id` (UUID)
* **Analysis:**
  * **1NF:** All attributes (`host_id`, `name`, `description`, `location`, `pricepernight`, `created_at`, `updated_at`) contain single, atomic values.
  * **2NF:** Not applicable as the primary key (`property_id`) is a single attribute.
  * **3NF:** All non-key attributes directly depend on the primary key (`property_id`). There are no transitive dependencies.
* **Conclusion:** The `Property` table is in **3NF**.

## 3. Booking Table

* **Primary Key:** `booking_id` (UUID)
* **Analysis:**
  * **1NF:** All attributes (`property_id`, `user_id`, `start_date`, `end_date`, `total_price`, `status`, `created_at`) contain single, atomic values.
  * **2NF:** Not applicable as the primary key (`booking_id`) is a single attribute.
  * **3NF:** The `total_price` is calculated based on the `pricepernight` of the related `Property` and the duration of the booking. While it's derived data, once a booking is confirmed, the `total_price` becomes a direct and essential attribute of that specific booking event, directly dependent on the `booking_id`.
* **Conclusion:** The `Booking` table is in **3NF**.

## 4. Payment Table

* **Primary Key:** `payment_id` (UUID)
* **Analysis:**
  * **1NF:** All attributes (`booking_id`, `amount`, `payment_date`, `payment_method`) contain single, atomic values.
  * **2NF:** Not applicable as the primary key (`payment_id`) is a single attribute.
  * **3NF:** All non-key attributes directly depend on the `payment_id`. The `amount` may differ from the booking's `total_price` due to fees or discounts, making it directly relevant to the specific payment transaction.
* **Conclusion:** The `Payment` table is in **3NF**.

## 5. Review Table

* **Primary Key:** `review_id` (UUID)
* **Analysis:**
  * **1NF:** All attributes (`property_id`, `user_id`, `rating`, `comment`, `created_at`) contain single, atomic values.
  * **2NF:** Not applicable as the primary key (`review_id`) is a single attribute.
  * **3NF:** All non-key attributes directly depend on the `review_id`.
* **Conclusion:** The `Review` table is in **3NF**.

## 6. Message Table

* **Primary Key:** `message_id` (UUID)
* **Analysis:**
  * **1NF:** All attributes (`sender_id`, `recipient_id`, `message_body`, `sent_at`) contain single, atomic values.
  * **2NF:** Not applicable as the primary key (`message_id`) is a single attribute.
  * **3NF:** All non-key attributes directly depend on the `message_id`.
* **Conclusion:** The `Message` table is in **3NF**.

**Overall Conclusion:** Based on the analysis, all the tables in the provided database schema appear to be in compliance with the Third Normal Form (3NF). Each table has a clear primary key, and all non-key attributes directly depend on that primary key, with no apparent transitive dependencies or non-atomic values.
