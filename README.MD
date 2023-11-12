# BookMyShow Database

This repository contains the SQL scripts for creating the database schema for BookMyShow, an online ticketing platform for booking movie shows.

## Database Structure

### 1. Cities Table

- **city_id:** Unique identifier for each city.
- **city_name:** Name of the city.
- **created_at:** Date and time when the city record was created.
- **updated_at:** Date and time when the city record was last updated.

### 2. Theatres Table

- **theatre_id:** Unique identifier for each theatre.
- **theatre_name:** Name of the theatre.
- **address:** Address of the theatre.
- **city_id:** Foreign key referencing the `cities` table, indicating the city in which the theatre is located.
- **created_at:** Date and time when the theatre record was created.
- **updated_at:** Date and time when the theatre record was last updated.

### 3. Screens Table

- **screen_id:** Unique identifier for each screen in a theatre.
- **screen_name:** Name or identifier of the screen.
- **theatre_id:** Foreign key referencing the `theatres` table, indicating the theatre to which the screen belongs.
- **capacity:** The seating capacity of the screen.
- **created_at:** Date and time when the screen record was created.
- **updated_at:** Date and time when the screen record was last updated.

### 4. Movies Table

- **movie_id:** Unique identifier for each movie.
- **movie_name:** Name of the movie.
- **genre:** Genre of the movie.
- **language:** Language of the movie.
- **release_date:** Release date of the movie.
- **created_at:** Date and time when the movie record was created.
- **updated_at:** Date and time when the movie record was last updated.

### 5. Screenings Table

- **screening_id:** Unique identifier for each screening.
- **movie_id:** Foreign key referencing the `movies` table, indicating the movie being screened.
- **theatre_id:** Foreign key referencing the `theatres` table, indicating the theatre where the screening takes place.
- **screen_id:** Foreign key referencing the `screens` table, indicating the screen for the screening.
- **show_date:** Date of the screening.
- **show_time:** Time of the screening.
- **created_at:** Date and time when the screening record was created.
- **updated_at:** Date and time when the screening record was last updated.

## Usage

1. Create the BookMyShow database using `CREATE DATABASE bookmyshow;`.
2. Switch to the BookMyShow database using `USE bookmyshow;`.
3. Run the provided SQL scripts, as detailed in the tables.sql file.

Feel free to modify the database structure or use these scripts as a foundation for your application's database.
