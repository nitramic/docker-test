-- ####### creacion de roles ############ 
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