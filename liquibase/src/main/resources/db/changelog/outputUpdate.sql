-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: liquibase-changelogs.xml
-- Ran at: 26/12/22, 10:27 pm
-- Against: SYSTEM@jdbc:oracle:thin:@localhost:1521:orcl
-- Liquibase version: 4.18.0
-- *********************************************************************

-- Lock Database
UPDATE SYSTEM.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'Amir-HP-2204 (192.168.1.2)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- Changeset changes/insert-person-table-changeset.sql::2::Ahmad
insert into person (id, name) values (1, 'name 1');

insert into person (id, name) values (2, 'name 2');

INSERT INTO SYSTEM.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('2', 'Ahmad', 'changes/insert-person-table-changeset.sql', SYSTIMESTAMP, 2, '8:bb011aae326d73b5287661f477a39c7f', 'sql', '', 'EXECUTED', NULL, NULL, '4.18.0', '2073869462');

-- Changeset changes/update-person-table-precondition.sql::3::abc
ALTER TABLE person
ADD age int;

INSERT INTO SYSTEM.DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('3', 'abc', 'changes/update-person-table-precondition.sql', SYSTIMESTAMP, 3, '8:277c641f3f3ea263e8427be47d4f2e9d', 'sql', '', 'EXECUTED', NULL, NULL, '4.18.0', '2073869462');

-- Release Database Lock
UPDATE SYSTEM.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

