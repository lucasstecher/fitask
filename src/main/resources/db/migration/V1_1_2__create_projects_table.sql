CREATE TABLE projects (
    id UUID PRIMARY KEY ,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    owner_id UUID NOT NULL,
    active BOOLEAN NOT NULL,
    created_at TIMESTAMPTZ NOT NULL
);