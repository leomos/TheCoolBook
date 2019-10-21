drop table events;


create table events(    
event_id integer primary key, 
event_name varchar2(20),
author varchar2(20),
book_title varchar2(20),
place varchar2(30),
giorno date,
start_time date);

