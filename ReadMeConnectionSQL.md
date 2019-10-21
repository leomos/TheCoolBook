before to start the user has to create the user thecoolbook with the password thecoolbook

from the user sysdba ("sqlplus / as sysdba" from comand line)

create user thecoolbook identified by thecoolbook account unlock;
grant connect, resource to thecoolbook;
alter user thecoolbook quota unlimited on users;