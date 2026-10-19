Create database flight_app4;
use flight_app4;
CREATE TABLE airports (
    airport_id INT AUTO_INCREMENT PRIMARY KEY,
    iata_code VARCHAR(10) UNIQUE NOT NULL
);
Desc airports;
CREATE TABLE searches (
    search_id INT AUTO_INCREMENT PRIMARY KEY,
    source_airport_id INT,
    destination_airport_id INT,
    travel_date DATE,
    search_timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,

    FOREIGN KEY (source_airport_id)
        REFERENCES airports(airport_id),

    FOREIGN KEY (destination_airport_id)
        REFERENCES airports(airport_id)
);
desc searches;
CREATE TABLE flights (
    flight_id INT AUTO_INCREMENT PRIMARY KEY,
    search_id INT,

    airline VARCHAR(100),
    departure_airport VARCHAR(10),
    arrival_airport VARCHAR(10),

    departure_time DATETIME,
    arrival_time DATETIME,

    duration_minutes INT,
    price DECIMAL(10,2),

    FOREIGN KEY(search_id)
        REFERENCES searches(search_id)
        ON DELETE CASCADE
);

desc searches;

select * From searches;
select * from flights;
select * from airports;

