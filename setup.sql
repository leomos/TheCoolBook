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
    title varchar2(40),
