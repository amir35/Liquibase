--liquibase formatted sql

--changeset Ahmad:2
insert into person (id, name) values (1, 'name 1');
insert into person (id, name) values (2, 'name 2');

--rollback delete from person;