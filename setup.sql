-- user
DROP TABLE user;

CREATE TABLE user (
	id INT AUTO_INCREMENT PRIMARY KEY,
	email VARCHAR(255) NOT NULL,
	password VARCHAR(255) NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	is_admin BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO user(email, password, first_name, last_name, is_admin) VALUES (
	'leonardo.mosciatti@gmail.com',
	'leonardo',
	'Leonardo',
	'Mosciatti',
	true
);

-- book
DROP TABLE book;

CREATE TABLE book (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    num_pages INT NOT NULL,
    genre VARCHAR(100) NOT NULL,
    isbn VARCHAR(13) NOT NULL
);

INSERT INTO book(title, num_pages, genre, isbn) VALUES (
	'Il Signore degli Anelli',
	500,
	'Fantasy',
	'0123456789abc'
);

-- author
DROP TABLE author;

CREATE TABLE author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    birth_place VARCHAR(255) NOT NULL
);

INSERT INTO author(first_name, last_name, birth_date, birth_place) VALUES (
	'John Ronald Reuel',
	'Tolkien',
	'1892-01-03',
	'Bloemfontein, South Africa'
);

--event
DROP TABLE event;

CREATE TABLE event (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     place VARCHAR(50) NOT NULL,
     datetime DATETIME NOT NULL
);

INSERT INTO event(name, place, datetime) VALUES (
	'ISdA',
	'OverNet',
	'2019-10-25 12:00:00'
);

