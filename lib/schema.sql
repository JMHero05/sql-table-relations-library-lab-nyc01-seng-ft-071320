-- The `Series` table should have a title and belong to an author and a sub-genre
CREATE TABLE series
(
  id INTEGER PRIMARY KEY,
  title TEXT,
  author_id INTEGER,
  subgenre_id INTEGER
);

-- The `Sub-Genres` table has a name
CREATE TABLE subgenres
(
  id INTEGER PRIMARY KEY,
  name TEXT
);

-- The `Authors` table has a name
CREATE TABLE authors
(
  id INTEGER PRIMARY KEY,
  name TEXT
);

-- The `Books` table has a title and year and belong to a series
CREATE TABLE books
(
  id INTEGER PRIMARY KEY,
  title TEXT,
  year INTEGER,
  series_id INTEGER
);

-- The `Characters` table has a name, motto, and species and belong to an author
CREATE TABLE characters
(
  id INTEGER PRIMARY KEY,
  name TEXT,
  motto TEXT,
  species TEXT,
  author_id INTEGER
);

-- The `Books` table has many characters and characters are in many books in a series.
--    How do we accomplish this complex association? With a join table between
--    Characters and Books. This join table (let's call it character_books) will
--    just have -in addition to its primary key- two foreign key columns for the
--    character and book ids. Each row in this join table acts as a relation
--  between a book and a character.
CREATE TABLE character_books
(
  id INTEGER PRIMARY KEY,
  character_id INTEGER,
  book_id INTEGER
);