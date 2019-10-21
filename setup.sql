--run it from sqlplus as pippo
--pippo should be created as follow:
--
--create user pippo identified by brutti account unlock;
--grant connect, resource to pippo;
--alter user pippo quota unlimited on users;
--exit

drop table events;
drop table books;

--Creation of tables--
create table books (
    book_id integer primary key,
     title varchar2(40)
     constraint title_nn not null,
    --intermediate_id integer
    --constraint intermediate_id_fk references intermediates(intermediate_id),
    pages integer
    constraint pages_nn not null,
    genre varchar2(40),
    isbn varchar2(13));
    
    create table intermediates (
     book_id integer
     constraint book_id_fk references books(book_id),
     author_id integer
     constraint author_id_fk references authors(author_id));
     
     commit;
     