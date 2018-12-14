DROP DATABASE IF EXISTS apissqltables;
CREATE DATABASE apissqltables;

\c apissqltables;

-- Users (table)
CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT
);
-- Posts
CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  poster_id INT REFERENCES users(id),
  body TEXT NOT NULL
);
-- Likes
CREATE TABLE Likes (
  id SERIAL PRIMARY KEY,
  liker_id INT REFERENCES users(id),
  post_id INT REFERENCES Posts(id)
);
-- Comments
CREATE TABLE Comments (
  id SERIAL PRIMARY KEY,
  commenter_id INT REFERENCES users(id),
  post_id INT REFERENCES Posts(id),
  body TEXT NOT NULL
);
-- Albums
CREATE TABLE Albums (
  id SERIAL PRIMARY KEY,
  user_id INT REFERENCES users(id)
);
-- Pictures
CREATE TABLE Pictures (
  id SERIAL PRIMARY KEY,
  album_id INT REFERENCES albums(id),
  url TEXT
);

INSERT INTO users (name, age) VALUES ('Victoria Adams', 47), ('Gerson Lopez', 33);
