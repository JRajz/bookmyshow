# BookMyShow Database

This repository contains the SQL scripts for creating the database schema for BookMyShow, an online ticketing platform for booking movie shows.

## Database Structure

## Cities Table

| Field      | Type           | Description                      |
|------------|----------------|----------------------------------|
| city_id    | INT UNSIGNED   | Unique city identifier           |
| city_name  | VARCHAR(255)   | Name of the city                 |
| created_at | DATETIME       | Timestamp of creation            |
| updated_at | DATETIME       | Timestamp of last update         |

## Theatres Table

| Field      | Type           | Description                      |
|------------|----------------|----------------------------------|
| theatre_id | INT UNSIGNED   | Unique theatre identifier        |
| theatre_name| VARCHAR(255)   | Name of the theatre               |
| address    | VARCHAR(255)   | Address of the theatre            |
| city_id    | INT UNSIGNED   | Foreign key to cities.city_id    |
| created_at | DATETIME       | Timestamp of creation            |
| updated_at | DATETIME       | Timestamp of last update         |

## Screens Table

| Field      | Type           | Description                      |
|------------|----------------|----------------------------------|
| screen_id  | INT UNSIGNED   | Unique screen identifier          |
| screen_name| VARCHAR(255)   | Name of the screen                |
| theatre_id | INT UNSIGNED   | Foreign key to theatres.theatre_id|
| capacity   | INT            | Seating capacity of the screen    |
| created_at | DATETIME       | Timestamp of creation             |
| updated_at | DATETIME       | Timestamp of last update          |

## Movies Table

| Field      | Type           | Description                      |
|------------|----------------|----------------------------------|
| movie_id   | INT UNSIGNED   | Unique movie identifier          |
| movie_name | VARCHAR(255)   | Name of the movie                |
| genre      | VARCHAR(255)   | Genre of the movie               |
| language   | VARCHAR(50)    | Language of the movie            |
| release_date| DATE           | Release date of the movie        |
| created_at | DATETIME       | Timestamp of creation            |
| updated_at | DATETIME       | Timestamp of last update         |

## Shows Table

| Field      | Type           | Description                      |
|------------|----------------|----------------------------------|
| show_id    | INT UNSIGNED   | Unique show identifier           |
| movie_id   | INT UNSIGNED   | Foreign key to movies.movie_id   |
| theatre_id | INT UNSIGNED   | Foreign key to theatres.theatre_id|
| screen_id  | INT UNSIGNED   | Foreign key to screens.screen_id  |
| show_datetime | DATETIME    | Date and time of the show         |
| created_at | DATETIME       | Timestamp of creation             |
| updated_at | DATETIME       | Timestamp of last update          |

This represents the detailed database schema for the BookMyShow application.

## Usage

1. Create the BookMyShow database using `CREATE DATABASE bookmyshow;`.
2. Switch to the BookMyShow database using `USE bookmyshow;`.
3. Run the provided SQL scripts, as detailed in the tables.sql file.

Feel free to modify the database structure or use these scripts as a foundation for your application's database.
