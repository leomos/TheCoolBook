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

create table books(
    book_id integer primary key,
    title varchar2(20) not null,
    num_pages integer not null check (num_pages > 0),
    genre varchar2(40) not null,
    isbn varchar2(13) not null);
    
create table authors(
    author_id integer primary key,
    first_name varchar2(30) not null,
    last_name varchar2(30) not null,
    birth_date date not null,
    birth_place varchar2(30) not null);
    
create table events(
     event_id integer primary key,
     name varchar2(20) not null,
     place varchar2(30) not null,
     day_event date not null,
     start_time date not null);

create table book_author(
    book_id integer references books(book_id),
    author_id integer references authors(author_id));
     
create table book_event(
   book_id integer references books(book_id),
   event_id integer references events(event_id));
   
commit;