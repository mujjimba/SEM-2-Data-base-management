CREATE TABLE TVSeries (
    series_id SERIAL PRIMARY KEY,
    title VARCHAR(100),
    genre VARCHAR(50)
);

CREATE TABLE Episode (
    episode_id INT PRIMARY KEY,
    episode_number INT,
    series_id INT,
    air_date DATE,
    FOREIGN KEY (series_id) REFERENCES TV_Series(series_id)
);

CREATE TABLE Actor (
    actor_id INT PRIMARY KEY,
    actor_name VARCHAR(255),
    gender VARCHAR(10),
    date_of_birth DATE
);

CREATE TABLE Director (
    director_id INT PRIMARY KEY,
    director_name VARCHAR(255),
    nationality VARCHAR(50)
);

CREATE TABLE Participation (
    participation_id INT PRIMARY KEY,
    actor_id INT,
    series_id INT,
    FOREIGN KEY (actor_id) REFERENCES Actor(actor_id),
    FOREIGN KEY (series_id) REFERENCES TV_Series(series_id)
);

CREATE TABLE Direction (
    direction_id INT PRIMARY KEY,
    episode_id INT,
    director_id INT,
    FOREIGN KEY (episode_id) REFERENCES Episode(episode_id),
    FOREIGN KEY (director_id) REFERENCES Director(director_id)
);
