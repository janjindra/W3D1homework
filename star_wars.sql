DROP TABLE lightsabers;
DROP TABLE characters;  --we want to remove any previous versions of the file or any pre-existing table

CREATE TABLE characters( --this is a table setup
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers(
id SERIAL PRIMARY KEY,
hilt_metal VARCHAR(255) NOT NULL, --here, NOT NULL is a contraint
colour VARCHAR(255) NOT NULL,
character_id INT REFERENCES characters(id) --characters(id) here refers to the "id SERIAL" in the "characters" table.
);

INSERT INTO characters(name, darkside, age) VALUES ('Obi-Wan Kenobi', false, 27); --we always need to use single quotes.
INSERT INTO characters(name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters(name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters(name, darkside) VALUES ('Yoda', false);


INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('purple', 'titanium', 2);

SELECT * FROM lightsabers WHERE character_id = 2;
SELECT * FROM characters;


--===============================================================

-- -- then we need to insert some things into the DB
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Obi-Wan Kenobi', false, 27); --we always need to use single quotes.
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Anakin Skywalker', false, 19);
-- INSERT INTO characters(name, darkside, age)
-- VALUES ('Darth Maul', true, 32);
-- INSERT INTO characters(name, darkside)
-- VALUES ('Yoda', false);
--
-- SELECT * FROM characters;
--
-- SELECT name FROM characters;
--
-- SELECT COUNT(*) FROM characters;
--
-- UPDATE characters SET darkside = true;
--
-- UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
--
-- UPDATE characters SET (name, darkside) = ('Darth Vader', true)
-- WHERE name = 'Anakin Skywalker';
--
-- SELECT * FROM characters;
--
-- UPDATE characters SET (age, darkside) = (10, false)
-- WHERE name = 'Darth Vader';
--
-- SELECT * FROM characters;
--
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Luke Skywalker', false, 17);
--
-- UPDATE characters SET age= 65 WHERE name = 'Luke Skywalker';
--
-- SELECT * FROM characters;
--
-- DELETE FROM characters WHERE name = 'Darth Maul';
--
-- SELECT * FROM characters;
--
-- --SERIAL is another datatype which creates an ID. (Usually seen written as Serial4 or Serial2).
-- --Serials do autoincrement itself. (Serials are Postgres specific tough!!)
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 25);
-- INSERT INTO characters (name, darkside, age)
-- VALUES ('Stormtrooper', true, 25);
--
-- SELECT * FROM characters;
--
-- UPDATE characters SET age = 26 WHERE id= 8;
--
-- SELECT * FROM characters;
