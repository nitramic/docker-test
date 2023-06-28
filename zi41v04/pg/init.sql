-- # ALTER SYSTEM writes the given parameter setting to the postgresql.auto.conf file, which is read in addition to postgresql.conf
-- # DB Version: 14
-- # OS Type: linux
-- # DB Type: web
-- # Total Memory (RAM): 4 GB
-- # CPUs num: 2
-- # Connections num: 300
-- # Data Storage: ssd


ALTER SYSTEM SET
 max_connections = '300';
ALTER SYSTEM SET
 shared_buffers = '1GB';
ALTER SYSTEM SET
 effective_cache_size = '3GB';
ALTER SYSTEM SET
 maintenance_work_mem = '256MB';
ALTER SYSTEM SET
 checkpoint_completion_target = '0.9';
ALTER SYSTEM SET
 wal_buffers = '16MB';
ALTER SYSTEM SET
 default_statistics_target = '100';
ALTER SYSTEM SET
 random_page_cost = '1.1';
ALTER SYSTEM SET
 effective_io_concurrency = '200';
ALTER SYSTEM SET
 work_mem = '1747kB';
ALTER SYSTEM SET
 min_wal_size = '1GB';
ALTER SYSTEM SET
 max_wal_size = '4GB';

 -- ####### ROLE CREATION ############ 
-- DROP ROLE erpuser; 
CREATE ROLE erpuser WITH  
	NOSUPERUSER 
	NOCREATEDB 
	NOCREATEROLE 
	INHERIT 
	LOGIN 
	NOREPLICATION 
	NOBYPASSRLS 
	CONNECTION LIMIT -1; 
 
-- DROP ROLE etichetto; 
CREATE ROLE etichetto WITH 
	NOSUPERUSER 
	NOCREATEDB 
	NOCREATEROLE 
	NOINHERIT 
	LOGIN 
	NOREPLICATION 
	NOBYPASSRLS 
	CONNECTION LIMIT -1; 

 -- DROP ROLE is_headu_reader; 
CREATE ROLE is_headu_reader WITH  
	NOSUPERUSER 
	NOCREATEDB 
	NOCREATEROLE 
	NOINHERIT 
	LOGIN 
	NOREPLICATION 
	NOBYPASSRLS 
	CONNECTION LIMIT -1; 

 -- DROP ROLE mesuser; 
CREATE ROLE mesuser WITH  
	NOSUPERUSER 
	NOCREATEDB 
	NOCREATEROLE 
	INHERIT 
	LOGIN 
	NOREPLICATION 
	NOBYPASSRLS 
	CONNECTION LIMIT -1; 
