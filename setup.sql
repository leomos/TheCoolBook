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
    isbn VARCHAR(13) NOT NULL,
    URLimage VARCHAR(255)
);

-- insertion of books
INSERT INTO book(title, num_pages, genre, isbn, URLimage) VALUES (
	'Il Signore degli Anelli',
	500,
	'Fantasy',
	'0123456789abc',
    'https://images-na.ssl-images-amazon.com/images/I/51EstVXM1UL._SX331_BO1,204,203,200_.jpg'
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
-- author
DROP TABLE IF EXISTS author;

CREATE TABLE author (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    birth_place VARCHAR(255) NOT NULL
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Alessandro', 
	'Manzoni', 
	'1785-05-07', 
	'Milano'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Ugo', 
	'Foscolo', 
	'1778-09-10', 
	'Zante'
);
	
INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Gabriele', 
	'D Annunzio', 
	'1785-04-10', 
	'Pescara'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Giovanni', 
	'Pascoli', 
	'1855-12-31', 
	'San Mauro Pascoli'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Luigi', 
	'Pirandello', 
	'1867-12-10', 
	'Agrigento'
); 

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Giuseppe', 
	'Ungaretti', 
	'1888-02-08', 
	'Alessandria D Egitto'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Alda', 
	'Merini', 
	'1931-02-08', 
	'Milano'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Cesare', 
	'Pavese', 
	'1908-02-08', 
	'Santo Stefano Belbo'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Elsa',
	'Morante', 
	'1912-02-08',
	'Roma'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Italo', 
	'Calvino', 
	'1923-02-08', 
	'L Avana'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Primo',
	'Levi', 
	'1919-02-08', 
	'Torino'
);

INSERT INTO author (first_name, last_name, birth_date, birth_place) VALUES (
	'Eugenio', 
	'Montale', 
	'1896-02-08', 
	'Genova'
);

ALTER TABLE author ADD COLUMN image VARCHAR (255); 
UPDATE author SET image = 'https://www.studiarapido.it/wp-content/uploads/2015/02/manzoni.jpg' where id = 1;
UPDATE author SET image = 'https://biografieonline.it/img/bio/u/Ugo_Foscolo.jpg' where id = 2;
UPDATE author SET image = 'http://www.eleganzadelgusto.com/wordpress/wp-content/uploads/2014/07/Capponcina-dAnnunzio-2.jpg' where id = 3;
UPDATE author SET image = 'https://matera.gocity.it/library/media/pascoli_giovanni_poeta.jpg' where id = 4;
UPDATE author SET image = 'https://upload.wikimedia.org/wikipedia/commons/1/17/Luigi_Pirandello_1932.jpg' where id = 5;
UPDATE author SET image = 'http://www.parlandosparlando.com/wp-content/uploads/2017/01/Giuseppe-Ungaretti.jpg' where id = 6;
UPDATE author SET image = 'https://isasposa.files.wordpress.com/2012/06/alda-merini1.jpg' where id = 7;
UPDATE author SET image = 'https://langhe.net/wp-content/uploads/2013/12/Cesare-Pavese1.jpg' where id = 8;
UPDATE author SET image = 'https://pad.mymovies.it/cinemanews/2017/139841/1.jpg' where id = 9;
UPDATE author SET image = 'http://cdn.quotationof.com/images/italo-calvino-1.jpg' where id = 10;
UPDATE author SET image = 'http://yalebooksnetwork.org/yupblog/wp-content/uploads/sites/4/2014/01/primo-levi-berel-lang-featured.jpg' where id = 11;
UPDATE author SET image = 'http://www.treccani.it/export/sites/default/Portale/resources/images/i_classici_italiani/Montale/01.jpg' where id = 12;

-- event
DROP TABLE IF EXISTS event;

CREATE TABLE event (
     id INT AUTO_INCREMENT PRIMARY KEY,
     name VARCHAR(255) NOT NULL,
     location VARCHAR(50) NOT NULL,
     datetime DATETIME NOT NULL
);

INSERT INTO event(name, location, datetime) VALUES (
	'ISdA',
	'OverNet',
	'2019-10-25 12:00:00'
);

-- event_book
DROP TABLE IF EXISTS eventbook;

CREATE TABLE event_book (
	id INT AUTO_INCREMENT PRIMARY KEY, 
	event_id INT NOT NULL,
	book_id INT NOT NULL,
	FOREIGN KEY (event_id) REFERENCES event(id),
    FOREIGN KEY (book_id) REFERENCES book(id)
);

INSERT INTO eventbook(event_id, book_id) VALUES (
	1,
    1
);