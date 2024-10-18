CREATE TABLE destinations (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    location VARCHAR(255)
);

CREATE TABLE tours (
    id INT AUTO_INCREMENT PRIMARY KEY,
    destination_id INT,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2),
    duration INT,
    FOREIGN KEY (destination_id) REFERENCES destinations(id)
);

CREATE TABLE bookings (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tour_id INT,
    customer_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    booking_date DATE,
    FOREIGN KEY (tour_id) REFERENCES tours(id)
);

CREATE TABLE feedback (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tour_id INT,
    customer_name VARCHAR(255) NOT NULL,
    comment TEXT,
    rating INT,
    FOREIGN KEY (tour_id) REFERENCES tours(id)
);
select * from feedback;