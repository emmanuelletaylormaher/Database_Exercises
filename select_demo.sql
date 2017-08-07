USE codeup_test_db;

-- how to get all rows and all columns
SELECT * from albums;

-- SELECT specified columns from a table
SELECT sales from albums;

--selecting multiple columns
SELECT name, artist FROM albums;

SELECT name, artist, release_date FROM albums;


SELECT * FROM albuns WHERE artist = "Michael Jackson";


SELECT sales from albums WHERE artist = "Bruce Springsteen";

SELECT *from albums where release_date > 1990;

SELECT artist, name from albums where release_date between 1995 and 1998;