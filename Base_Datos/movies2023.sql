USE movies2023;
SELECT * FROM movie_dataset;
DROP TABLE IF EXISTS movies;

DROP TABLE IF EXISTS movie;
CREATE TABLE movie AS
    SELECT id, original_title, overview, popularity, status, tagline, title
FROM movie_dataset;

DROP TABLE IF EXISTS cast;
CREATE TABLE  cast AS
    SELECT id, cast
FROM movie_dataset;

CREATE TABLE movies (
    idMovie INT NOT NULL PRIMARY KEY,
    `index` INT NOT NULL,
    title VARCHAR (255) NOT NULL,
    release_date INT NOT NULL,
    budget DECIMAL (10,2) NOT NULL,
    revenue DECIMAL (10,2) NOT NULL,
    runtime INT NOT NULL,
    'status' VARCHAR (255) NOT NULL,
    tagline VARCHAR (255),
    voteAverage DECIMAL (2,1) NOT NULL,
    voteCount INT NOT NULL,
    homepage VARCHAR (255),
    popularity DECIMAL (10,2),
    originalLanguage VARCHAR (255),
    originalTittle VARCHAR (255),
    overview TEXT
);

ALTER TABLE movies
ADD PRIMARY KEY (idMovie);



