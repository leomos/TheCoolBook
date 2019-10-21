drop table events;


create table events(    
event_id integer primary key, 
event_name varchar2(20)
    constraint event_name_nn not null,
author varchar2(20)
    constraint author_nn not null,
book_title varchar2(20)
    constraint book_title_nn not null,
place varchar2(30)
    constraint place_nn not null,
day_event date
    constraint day_event_nn not null,
start_time date
    constraint start_time_nn not null);

