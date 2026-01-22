CREATE TYPE action as ENUM ('CREATE', 'UPDATE', 'DELETE');

CREATE TABLE audit_logs (
    id UUID PRIMARY KEY,
    action action NOT NULL,
    entity_type VARCHAR(255) NOT NULL,
    entity_id UUID NOT NULL,
    user_id UUID NOT NULL,
    changes TEXT,
    timestamp TIMESTAMPTZ NOT NULL
);