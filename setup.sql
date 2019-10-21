--run it from sqlplus as pippo
--pippo should be created as follow:
--
--create user pippo identified by brutti account unlock;
--grant connect, resource to pippo;
--alter user pippo quota unlimited on users;
--exit

drop table book_author;
drop table book_event;
drop table author_event;
drop table events;
drop table books;
drop table authors;
--drop sequence authors_seq;
--drop sequence book_seq;

--Creation of tables--
create table books (
    book_id integer primary key,
    title varchar2(20) not null,
    num_pages integer not null check (num_pages > 0),
    genre varchar2(40) not null,
    isbn varchar2(13) not null);
    
create table authors (
    author_id integer primary key,
    first_name varchar2(30) not null,
    last_name varchar2(30) not null,
    birth_date date not null,
    birth_place varchar2(30) not null);
    
create table events(    
     event_id integer primary key, 
     event_name varchar2(20) not null,
     place varchar2(30) not null,
     day_event date not null,
     start_time date not null);
  
create table book_author (
    book_id integer references books(book_id),
    author_id integer references authors(author_id));
     
create table book_event (
   book_id integer references books(book_id),
   event_id integer references events(event_id));
    
create table author_event (
   author_id integer references authors(author_id),
   event_id integer references events(event_id));
       
--create sequence book_seq start with 101;
--create sequence authors_seq start with 101;     

--Books
--insert into books values(book_seq.nextval, 'How to be Pippo', 203, 'Horror', '0493856370785');
--insert into books values(book_seq.nextval, 'How to be Pippa', 1937, 'Bibliography', '9484620463974');
--insert into books values(book_seq.nextval, 'How to be a genious', 400, 'Science', '0563428907894');
   
--Authors
--insert into authors values (authors_seq.nextval, 'Alessandro', 'Manzoni', '07-MAR-1785', 'Milano');
--insert into authors values (authors_seq.nextval, 'Ugo', 'Foscolo', '10-SET-1778', 'Zante');
--insert into authors values (authors_seq.nextval, 'Gabriele', 'D Annunzio', '07-MAR-1785', 'Pescara');
--insert into authors values (authors_seq.nextval, 'Giovanni', 'Pascoli', '31-DIC-1855', 'San Mauro Pascoli');
--insert into authors values (authors_seq.nextval, 'Luigi', 'Pirandello', '10-DIC-1867', 'Agrigento');
--insert into authors values (authors_seq.nextval, 'Giuseppe', 'Ungaretti', '08-FEB-1888', 'Alessandria D Egitto');
--insert into authors values (authors_seq.nextval, 'Alda', 'Merini', '21-MAR-1931', 'Milano');
--insert into authors values (authors_seq.nextval, 'Cesare', 'Pavese', '09-SET-1908', 'Santo Stefano Belbo');
--insert into authors values (authors_seq.nextval, 'Elsa', 'Morante', '18-AGO-1912', 'Roma');
--insert into authors values (authors_seq.nextval, 'Italo', 'Calvino', '15-OTT-1923', 'L Avana');
--insert into authors values (authors_seq.nextval, 'Primo', 'Levi', '31-LUG-1919', 'Torino');
--insert into authors values (authors_seq.nextval, 'Eugenio', 'Montale', '12-OTT-1896', 'Genova');
--insert into authors values (authors_seq.nextval, 'Salvatore', 'Quasimodo', '20-AGO-1901', 'Modica');

commit;
     