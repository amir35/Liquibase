-- *********************************************************************
-- SQL to roll back currently unexecuted changes
-- *********************************************************************
-- Change Log: liquibase-changelogs.xml
-- Ran at: 26/12/22, 11:32 pm
-- Against: SYSTEM@jdbc:oracle:thin:@localhost:1521:orcl
-- Liquibase version: 4.18.0
-- *********************************************************************

-- Lock Database
UPDATE SYSTEM.DATABASECHANGELOGLOCK SET LOCKED = 1, LOCKEDBY = 'Amir-HP-2204 (192.168.1.2)', LOCKGRANTED = SYSTIMESTAMP WHERE ID = 1 AND LOCKED = 0;

-- Rolling Back ChangeSet: changes/update-person-table-precondition.sql::3::abc
ALTER TABLE person DROP COLUMN age;

DELETE FROM SYSTEM.DATABASECHANGELOG WHERE ID = '3' AND AUTHOR = 'abc' AND FILENAME = 'changes/update-person-table-precondition.sql';

-- Rolling Back ChangeSet: changes/insert-person-table-changeset.sql::2::Ahmad
delete from person;

DELETE FROM SYSTEM.DATABASECHANGELOG WHERE ID = '2' AND AUTHOR = 'Ahmad' AND FILENAME = 'changes/insert-person-table-changeset.sql';

-- Release Database Lock
UPDATE SYSTEM.DATABASECHANGELOGLOCK SET LOCKED = 0, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

