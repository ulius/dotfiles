-- create user
create user user_name with password 'password';

-- grant all on a schema
grant all on all tables in schema public to user_name;

-- grant all for tables created in future
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT ALL ON TABLES TO depesz, postgres;

-- sample
REVOKE ALL ON table1 FROM GROUP PUBLIC;
GRANT SELECT ON table1 TO GROUP webreaders;
GRANT SELECT, INSERT, UPDATE, DELETE ON table1 TO editors;
GRANT ALL ON table1 TO admins;

-- example
GRANT USAGE ON SCHEMA someschema TO someuser;
CREATE GROUP webreaders;
GRANT SELECT ON pages TO webreaders;
GRANT INSERT ON viewlog TO webreaders;
GRANT webreaders TO tim, bob;

-- kill all connections to particular database (9.2)
select pg_terminate_backend(pid)
from pg_stat_activity
where pid <> pg_backend_pid()
and datname = 'eslschoolsreviews_dev';

