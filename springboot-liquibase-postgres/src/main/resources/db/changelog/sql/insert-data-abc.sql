--liquibase formatted sql

--changeset aamir:112

insert into abc(id, name) values (3, 'Zakiya');
insert into abc(id, name) values (4, 'Nahid');

-- rollback drop table abc ;