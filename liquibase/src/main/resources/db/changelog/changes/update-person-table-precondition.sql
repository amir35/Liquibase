--liquibase formatted sql

--changeset abc:3
ALTER TABLE person
ADD age int;

--rollback ALTER TABLE person DROP COLUMN age;