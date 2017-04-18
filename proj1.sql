/* create project1 */

CREATE DATABASE project1;
CREATE DATABASE mashur1;

SHOW DATABASES;

DROP DATABASE mashur1;


/* create tables for project1 */

USE project1;

CREATE TABLE project1.people(
    PersonID INT,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);
DROP TABLE people;

CREATE TABLE project1.people2(
    PersonID INT NOT NULL AUTO_INCREMENT,
    first_name varchar(100),
    last_name varchar(100),
    PRIMARY KEY (PersonID)
);

CREATE TABLE project1.Actors(
    ActorID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
     
    PRIMARY KEY (ActorID)
);

CREATE TABLE project1.Movies(
    MovieID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    release_year INT UNSIGNED,
    rating VARCHAR(100),
 
    PRIMARY KEY (MovieID)
);

SHOW TABLES;
SHOW COLUMNS IN Actors;
SHOW COLUMNS IN Movies;

/* Insert actors into tables */

INSERT INTO Actors (first_name, last_name) VALUES ('Ben', 'Stiller');
INSERT INTO Actors(first_name, last_name) VALUES
    ('Owen', 'Wilson'),
    ('Will', 'Farrel'),
    ('Milla', 'Jovovich'),
    ('Jerry', 'Stiller'),
    ('David', 'Duchovy'),
    ('Jon', 'Voight'),
    ('Nathan', 'Graham')
;

INSERT INTO Actors (first_name, last_name) VALUES
    ('Kristen', 'Wiig'),
    ('Penelope', 'Cruz'),
    ('Lenny', 'Kravitz'),
    ('Justin', 'Beiber'),
    ('Cyrus', 'Arnold')
;

INSERT INTO Actors (first_name, last_name) VALUES
    ('Christine', 'Taylor'),
    ('Macaulay', 'Culkin')
;

SELECT * FROM Actors;


/* Insert movies into table */

INSERT INTO Movies (title, release_year, rating) VALUES
    ('Zoolander', 2001, 'PG-13'),
    ('Zoolander 2', 2016, 'PG-13'),
    ('Night at the Museum: Secret of the Tomb', 2014, 'PG'),
    ('Night at the Museum: Battle of the Smithsonian', 2009, 'PG'),
    ('Night at the Museum:', 2004, 'PG'),
    ('National Treasure', 2004, 'PG'),
    ('Tropic Thunder', 2008, 'R')
;

SELECT * FROM Movies;


/* different selectors */

SELECT title FROM Movies;
SELECT MovieID, title, release_year, rating, FROM Movies;
SELECT last_name FROM Actors;
SELECT first_name, last_name FROM Actors;

/* string functions */

SELECT CONCAT(last_name, ', ', first_name) FROM Actors;
SELECT CONCAT(last_name, ', ', first_name) AS actor_name FROM Actors;
SELECT last_name, SUBSTRING(last_name, 1, 3) FROM Actors;
SELECT last_name, SUBSTRING(last_name, 1, 5) AS sub_last FROM Actors;
SELECT first_name, last_name, SUBSTRING(first_name, 1, 1), CONCAT(SUBSTRING(first_name, 1, 1), last_name) AS user_name FROM Actors;
SELECT CONCAT(last_name, ', ', first_name) AS "Actor's Names",
    last_name AS LName,
    first_name AS "First Name",
    CONCAT(SUBSTRING(first_name, 1, 1), last_name) AS user_name,
    'Any Text' AS anything,
    1+2 AS math
    
    FROM Actors
;


/* Bowlers Challenge */
CREATE TABLE project1.Bowlers(
    BowlerID INT UNSIGNED NOT NULL AUTO_INCREMENT,
    fName VARCHAR(100),
    lName VARCHAR(100),
    game1 INT UNSINGED,
    game2 INT UNSINGED,
    game3 INT UNSINGED,
    game4 INT UNSINGED,
    
    PRIMARY KEY (BowlerID)
);


INSERT INTO Bowlers (fName, lName, game1, game2, game3, game4) VALUES
    ('Mashur', 'Hossain', 121, 87, 115, 124),
    ('Mark', 'Futre', 111, 99, 135, 105),
    ('John' , 'Smith', 80, 90, 101, 120),
    ('Evgeny', 'Ramen', 120, 115, 119, 120)
;

SELECT CONCAT(lName, ", ", fName) AS "Player",
    CONCAT(SUBSTRING(fName, 1, 1), SUBSTRING(lName, 1, 1)) AS "Initials",
    game1 AS "G1",
    game2 AS "G2",
    game3 AS "G3",
    game4 AS "G4",
    (game1 + game2 + game3 + game4) AS "Total Score",
    (game1 + game2 + game3 + game4) / 4 AS "Average Score"
    
    FROM project1.Bowlers
;


/* Advances selectors */

SELECT * FROM Actors LIMIT 10;
SELECT * FROM Actors LIMIT 4;
SELECT * FROM Actors ORDER BY 3;
SELECT * FROM Actors ORDER BY 2;
SELECT * FROM Actors ORDER BY last_name ASC;
SELECT * FROM Actors ORDER BY last_name DESC;
SELECT * FROM Actors ORDER BY 3 DESC;
SELECT * FROM Actors ORDER BY last_name ASC, first_name DESC;
SELECT * FROM Actors ORDER BY last_name ASC, first_name ASC;
SELECT * FROM Actors ORDER BY last_name ASC, first_name ASC, LIMIT 10;
SELECT DISTINCT rating FROM Movies;
SELECT DISTINCT MovieID, rating FROM Movies;

SELECT COUNT(*) AS cnt FROM movies;
