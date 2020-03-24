DROP TABLE lightsabers;
DROP TABLE characters;

-- This is a comment --

CREATE TABLE characters(
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  age INT,
  darkside BOOLEAN
);

CREATE TABLE lightsabers(
  id SERIAL PRIMARY KEY,
  hilt_metal VARCHAR(255) NOT NULL,
  colour VARCHAR(255) NOT NULL,
  character_id INT REFERENCES characters(id)
);

INSERT INTO characters(name, darkside, age) --Doesn't have to be in the same order
VALUES ('Obi-Wan Kenobi', FALSE, 27); -- Single quotes must be used in PSQL
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside) VALUES ('Yoda', FALSE); -- Because no values in age column, it's a NULL value

INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtrooper', true, 25);

--UPDATE characters SET darkside = true;
UPDATE characters SET (darkside, name) = (true, 'Darth Vader') WHERE name = 'Anakin Skywalker';

INSERT INTO lightsabers(colour, hilt_metal,character_id)
VALUES ('green', 'paladium',4),
       ('red', 'gold',4);

--INSERT INTO lightsabers (colour) VALUES ('yellow');



--DELETE FROM characters WHERE name = 'Darth Maul';
--DELETE FROM characters WHERE id = 7;
--SELECT name, age FROM characters;
--SELECT COUNT(*) FROM characters;
--SELECT age FROM characters;
SELECT * FROM characters;

SELECT * FROM lightsabers;
