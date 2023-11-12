-- create bookmyshow database
CREATE DATABASE bookmyshow;

USE bookmyshow;

-- creating cities table
CREATE TABLE cities (
  city_id int unsigned NOT NULL AUTO_INCREMENT,
  city_name varchar(255) NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY (`city_id`)
);

-- inserting cities
INSERT INTO
  cities (city_name, created_at, updated_at)
VALUES
  ('Mumbai', NOW(), NOW()),
  ('Delhi', NOW(), NOW()),
  ('Bangalore', NOW(), NOW()),
  ('Hyderabad', NOW(), NOW()),
  ('Chennai', NOW(), NOW()),
  ('Kolkata', NOW(), NOW()),
  ('Ahmedabad', NOW(), NOW()),
  ('Pune', NOW(), NOW()),
  ('Jaipur', NOW(), NOW()),
  ('Lucknow', NOW(), NOW());

-- create theatres table
CREATE TABLE theatres (
  theatre_id int unsigned NOT NULL AUTO_INCREMENT,
  theatre_name varchar(255) NOT NULL,
  address varchar(255),
  city_id int unsigned NOT NULL,
  created_at datetime NOT NULL,
  updated_at datetime NOT NULL,
  PRIMARY KEY (theatre_id),
  FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

-- insert data into theatres
INSERT INTO
  theatres (
    theatre_name,
    address,
    city_id,
    created_at,
    updated_at
  )
VALUES
  (
    'Cityplex Cinemas',
    '123 Main Street',
    1,
    NOW(),
    NOW()
  ),
  -- Mumbai
  (
    'Star Movies',
    '456 Central Avenue',
    2,
    NOW(),
    NOW()
  ),
  -- Delhi
  (
    'PVR Orion Mall',
    'Brigade Gateway, Orion Mall, Dr. Rajkumar Road, Malleswaram, Bangalore',
    3,
    NOW(),
    NOW()
  ),
  (
    'INOX Forum Mall',
    'The Forum Mall, Hosur Road, Koramangala, Bangalore',
    3,
    NOW(),
    NOW()
  ),
  (
    'Cinepolis ETA Namma Mall',
    'ETA Mall, 3rd Floor, 33, Brigade Road, Bangalore',
    3,
    NOW(),
    NOW()
  ),
  (
    'Gopalan Cinemas',
    'Bannerghatta Road, Bangalore',
    3,
    NOW(),
    NOW()
  ),
  (
    'Rockline Cinemas',
    'Yelahanka, Bangalore',
    3,
    NOW(),
    NOW()
  ),
  -- Bangalore
  (
    'Metro Cinemas',
    '567 Jubilee Hills',
    4,
    NOW(),
    NOW()
  ),
  -- Hyderabad
  (
    'Grand Theatre',
    '890 Mount Road',
    5,
    NOW(),
    NOW()
  ),
  -- Chennai
  (
    'CineStar Plaza',
    '345 Park Street',
    6,
    NOW(),
    NOW()
  ),
  -- Kolkata
  (
    'Royal Cinemas',
    '678 Ashram Road',
    7,
    NOW(),
    NOW()
  ),
  -- Ahmedabad
  ('PVR Cinemas', '901 MG Road', 8, NOW(), NOW()),
  -- Pune
  (
    'CityLights Multiplex',
    '234 Tonk Road',
    9,
    NOW(),
    NOW()
  ),
  -- Jaipur
  (
    'Lucknow Cineplex',
    '432 Hazratganj',
    10,
    NOW(),
    NOW()
  );

-- screens table
CREATE TABLE screens (
  screen_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  screen_name VARCHAR(255) NOT NULL,
  theatre_id INT UNSIGNED NOT NULL,
  capacity INT NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (screen_id),
  FOREIGN KEY (theatre_id) REFERENCES theatres(theatre_id)
);

-- Screen details for theatres
INSERT INTO
  screens (
    screen_name,
    capacity,
    theatre_id,
    created_at,
    updated_at
  )
VALUES
  -- Cityplex Cinemas, Mumbai
  ('Screen 1', 150, 1, NOW(), NOW()),
  ('Screen 2', 120, 1, NOW(), NOW()),
  -- Star Movies, Delhi
  ('Screen 1', 140, 2, NOW(), NOW()),
  ('Screen 2', 110, 2, NOW(), NOW()),
  -- PVR Orion Mall, Bangalore
  ('Screen 1', 200, 3, NOW(), NOW()),
  ('Screen 2', 180, 3, NOW(), NOW()),
  ('Screen 3', 120, 3, NOW(), NOW()),
  -- INOX Forum Mall, Bangalore
  ('Screen 1', 160, 4, NOW(), NOW()),
  ('Screen 2', 120, 4, NOW(), NOW()),
  -- Cinepolis ETA Namma Mall, Bangalore
  ('Screen 1', 180, 5, NOW(), NOW()),
  ('Screen 2', 150, 5, NOW(), NOW()),
  -- Gopalan Cinemas, Bangalore
  ('Screen 1', 120, 6, NOW(), NOW()),
  ('Screen 2', 90, 6, NOW(), NOW()),
  -- Rockline Cinemas, Bangalore
  ('Screen 1', 130, 7, NOW(), NOW()),
  ('Screen 2', 100, 7, NOW(), NOW()),
  -- Metro Cinemas, Hyderabad
  ('Screen 1', 170, 8, NOW(), NOW()),
  ('Screen 2', 140, 8, NOW(), NOW()),
  -- Grand Theatre, Chennai
  ('Screen 1', 150, 9, NOW(), NOW()),
  ('Screen 2', 110, 9, NOW(), NOW()),
  -- CineStar Plaza, Kolkata
  ('Screen 1', 120, 10, NOW(), NOW()),
  ('Screen 2', 90, 10, NOW(), NOW()),
  -- Royal Cinemas, Ahmedabad
  ('Screen 1', 160, 11, NOW(), NOW()),
  ('Screen 2', 130, 11, NOW(), NOW()),
  -- PVR Cinemas, Pune
  ('Screen 1', 180, 12, NOW(), NOW()),
  ('Screen 2', 150, 12, NOW(), NOW()),
  -- CityLights Multiplex, Jaipur
  ('Screen 1', 130, 13, NOW(), NOW());

-- movies
CREATE TABLE movies (
  movie_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  movie_name VARCHAR(255) NOT NULL,
  genre VARCHAR(255),
  language VARCHAR(50),
  release_date DATE,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (movie_id)
);

-- insert movies
INSERT INTO
  movies (
    movie_name,
    genre,
    language,
    release_date,
    created_at,
    updated_at
  )
VALUES
  (
    'Pathaan',
    'Action',
    'Hindi',
    '2023-01-25',
    NOW(),
    NOW()
  ),
  (
    'Bhediya',
    'Comedy Horror',
    'Hindi',
    '2023-02-17',
    NOW(),
    NOW()
  ),
  (
    'Selfiee',
    'Comedy Drama',
    'Hindi',
    '2023-04-08',
    NOW(),
    NOW()
  ),
  (
    'Adipurush',
    'Epic Drama',
    'Hindi',
    '2023-06-16',
    NOW(),
    NOW()
  );

--
-- Create movie screnening (shows) table
-- Info - we can also set show date and time in one column
CREATE TABLE screenings (
  screening_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  movie_id INT UNSIGNED NOT NULL,
  theatre_id INT UNSIGNED NOT NULL,
  screen_id INT UNSIGNED NOT NULL,
  show_date DATE NOT NULL,
  show_time TIME NOT NULL,
  created_at DATETIME NOT NULL,
  updated_at DATETIME NOT NULL,
  PRIMARY KEY (screening_id),
  UNIQUE KEY unique_screening (screen_id, movie_id, show_date, show_time),
  FOREIGN KEY (movie_id) REFERENCES movies(movie_id),
  FOREIGN KEY (theatre_id) REFERENCES theatres(theatre_id),
  FOREIGN KEY (screen_id) REFERENCES screens(screen_id)
);

--
-- setting screening data
INSERT INTO
  screenings (
    movie_id,
    theatre_id,
    screen_id,
    show_date,
    show_time,
    created_at,
    updated_at
  )
VALUES
  -- PVR Orion Mall, Bangalore
  (1, 3, 5, '2023-01-25', '10:00:00', NOW(), NOW()),
  (1, 3, 5, '2023-01-25', '13:00:00', NOW(), NOW()),
  (1, 3, 5, '2023-01-25', '16:00:00', NOW(), NOW()),
  (1, 3, 5, '2023-01-25', '20:00:00', NOW(), NOW()),
  (2, 3, 6, '2023-01-25', '10:00:00', NOW(), NOW()),
  (2, 3, 6, '2023-01-25', '13:00:00', NOW(), NOW()),
  (2, 3, 6, '2023-01-25', '16:00:00', NOW(), NOW()),
  (2, 3, 6, '2023-01-25', '20:00:00', NOW(), NOW()),
  (3, 3, 7, '2023-01-25', '10:00:00', NOW(), NOW()),
  (3, 3, 7, '2023-01-25', '13:00:00', NOW(), NOW()),
  (2, 3, 7, '2023-01-25', '20:00:00', NOW(), NOW()),
  -- INOX Forum Mall, Bangalore
  (1, 4, 8, '2023-01-25', '16:30:00', NOW(), NOW()),
  (2, 4, 9, '2023-01-25', '20:00:00', NOW(), NOW()),
  -- Cinepolis ETA Namma Mall, Bangalore
  (1, 5, 10, '2023-01-25', '18:30:00', NOW(), NOW()),
  (2, 5, 11, '2023-01-25', '22:00:00', NOW(), NOW()),
  -- Gopalan Cinemas, Bangalore
  (1, 6, 12, '2023-01-25', '10:00:00', NOW(), NOW()),
  (2, 6, 13, '2023-01-25', '14:30:00', NOW(), NOW()),
  -- Rockline Cinemas, Bangalore
  (1, 7, 14, '2023-01-25', '22:30:00', NOW(), NOW()),
  (2, 7, 15, '2023-01-25', '18:00:00', NOW(), NOW());

--
-- Query to list down all the shows on a given date at a given theatre along with their respective show timings. 
--
-- Theatre - PVR Orion Mall, Bangalore
-- Date - 2023-01-25 (Assumes current date  2023-01- 12:30)
--
-- Bookings for each show will be closed at a minimum of 30 minutes before the scheduled start time. 
--
--  If the selected date is the current date, the compare time will be set current time plus 30 minutes; otherwise, it will be set to midnight (00:00).
--
--
--
SELECT
  t.theatre_name,
  s.screen_name,
  s.capacity,
  m.movie_name,
  sn.show_date,
  sn.show_time
FROM
  theatres AS t
  JOIN screens AS s ON s.theatre_id = t.theatre_id
  JOIN screenings AS sn ON sn.theatre_id = s.theatre_id
  AND sn.screen_id = s.screen_id
  JOIN movies AS m ON m.movie_id = sn.movie_id
WHERE
  t.theatre_id = 3
  AND sn.show_date = '2023-01-25'
  AND sn.show_time > '12:30'
ORDER BY
  sn.show_time,
  s.screen_id;