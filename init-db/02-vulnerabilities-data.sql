----------------------------------------------------------------------------------
--                          Insert base datas
----------------------------------------------------------------------------------

-- vulnerability1
INSERT INTO vulnerability (title, severity, system, description, status, discovered_at, cvss_score)
VALUES (
  'SQL Injection in User Authentication',
  'CRITICAL',
  'web-app-prod-01',
  'Paramètres non échappés dans la requête de login',
  'OPEN',
  '2024-01-15T10:30:00Z'::timestamptz,
  9.2
);

-- vulnerability2
INSERT INTO vulnerability (title, severity, system, description, status, discovered_at, cvss_score)
VALUES (
  'Cross-Site Scripting (XSS) in Admin Panel',
  'HIGH',
  'admin-dashboard',
  'Lorem Ipsum',
  'IN_PROGRESS',
  '2024-01-20T09:00:00Z'::timestamptz,
  7.8
);

-- vulnerability3
INSERT INTO vulnerability (title, severity, system, description, status, discovered_at, cvss_score)
VALUES (
  'Outdated SSL/TLS Configuration',
  'MEDIUM',
  'mail-server-01',
  'Lorem Ipsum',
  'IN_PROGRESS',
  '2024-01-20T09:00:00Z'::timestamptz,
  5.3
);

-- vulnerability4
INSERT INTO vulnerability (title, severity, system, description, status, discovered_at, cvss_score)
VALUES (
  'Information Disclosure in API Response',
  'LOW',
  'api-gateway',
  'Lorem Ipsum',
  'RESOLVED',
  '2024-01-20T09:00:00Z'::timestamptz,
  3.1
);

-- vulnerability5
INSERT INTO vulnerability (title, severity, system, description, status, discovered_at, cvss_score)
VALUES (
  'Director Traversal Vulnerability',
  'HIGH',
  'file-server-02',
  'Lorem Ipsum',
  'OPEN',
  '2024-01-20T09:00:00Z'::timestamptz,
  8.1
);