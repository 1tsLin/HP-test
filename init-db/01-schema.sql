----------------------------------------------------------------------------------
--                          Create Enums
----------------------------------------------------------------------------------
CREATE TYPE severity AS ENUM ('CRITICAL', 'HIGH', 'MEDIUM', 'LOW');
CREATE TYPE status AS ENUM ('OPEN', 'IN_PROGRESS', 'RESOLVED');


----------------------------------------------------------------------------------
--                  Generate IDs with correct format 
----------------------------------------------------------------------------------
CREATE SEQUENCE vulnerability_seq START 1;
CREATE SEQUENCE incident_seq START 1;

CREATE FUNCTION generate_vulnerability_id()
RETURNS text LANGUAGE sql AS $$
  SELECT 'CVE-2024-' || lpad(nextval('vulnerability_seq')::text, 4, '0');
$$;

CREATE FUNCTION generate_incident_id()
RETURNS text LANGUAGE sql AS $$
  SELECT 'INC-2024-' || lpad(nextval('incident_seq')::text, 3, '0');
$$;


----------------------------------------------------------------------------------
--                           Create tables
----------------------------------------------------------------------------------
CREATE TABLE vulnerability (
  id text PRIMARY KEY DEFAULT generate_vulnerability_id(),
  title text NOT NULL,
  severity severity NOT NULL,
  system text NOT NULL,
  description text,
  status status NOT NULL DEFAULT 'OPEN',
  discovered_at timestamptz NOT NULL default now(),
  cvss_score numeric(3,1) CHECK (cvss_score >= 0 AND cvss_score <= 10)
);
CREATE INDEX vulnerability_severity ON vulnerability (severity);

CREATE TABLE incident (
  id text PRIMARY KEY DEFAULT generate_incident_id(),
  vulnerability_id text NOT NULL REFERENCES vulnerability(id) ON DELETE CASCADE,
  assigned_to text,
  priority severity NOT NULL,
  description text,
  created_at timestamptz NOT NULL DEFAULT now()
);
CREATE INDEX incident_priority ON incident (priority);