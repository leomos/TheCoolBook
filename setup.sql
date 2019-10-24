-- user
DROP TABLE IF EXISTS user;

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
DROP TABLE IF EXISTS book;

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
INSERT INTO book(title, num_pages, genre, isbn, URLimage) VALUES (
	'The importance of being Brutti',
    '123',
    'Erotica',
    '6906660696969',
    'https://www.nostrofiglio.it/site_stored/imgs/0003/047/armando.630x420.jpg'
);
INSERT INTO book(title, num_pages, genre, isbn, URLimage) VALUES (
	'Electrodynamics',
    '500',
    'Physics',
    '0123333789abc', 
    'https://upload.wikimedia.org/wikipedia/commons/0/09/Front_cover_of_Griffiths%27_Electrodynamics.jpg'
);
INSERT INTO book(title, num_pages, genre, isbn, URLimage) VALUES (
	'Electrodynamics',
    '500',
    'Physics',
    '0123333789abc', 
    'https://upload.wikimedia.org/wikipedia/commons/0/09/Front_cover_of_Griffiths%27_Electrodynamics.jpg'
);
INSERT INTO book(title, num_pages, genre, isbn, URLimage) VALUES (
	'Programming with Plankalkül',
    '267',
    'Programming',
    '033789a45234b',
    'https://bookcover4u.com/pro/Educational-book-cover-design-P1484804032EDB-Java-web-design-internet-business-java.jpg'
);
INSERT INTO book(title, num_pages, genre, isbn, URLimage) VALUES (
	'Io, Rocco',
    '190',
    'Horror',
    '1244414234636',
    'https://img.frasicelebri.it/images/thumb_book-io-rocco.330x330_q95.jpg'
);





-- author
DROP TABLE IF EXISTS author;

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
DROP TABLE IF EXISTS event;

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

