--liquibase formatted sql

--changeset Aamir:1
create table person (
    id int primary key,
    name varchar(255)  
);  
--rollback drop table person;