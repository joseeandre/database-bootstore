DO
$$
BEGIN
  IF NOT EXISTS (
    SELECT FROM pg_catalog.pg_roles WHERE rolname='postgres'
  ) THEN
    CREATE ROLE bootcamp_role WITH SUPERUSER CREATEDB CREATEROLE LOGIN ENCRYPTED PASSWORD '123456';
  END IF;
END
$$;