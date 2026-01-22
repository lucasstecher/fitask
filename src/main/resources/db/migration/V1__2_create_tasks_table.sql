CREATE TYPE task_status as ENUM ('TODO', 'IN_PROGRESS', 'REVIEW', 'DONE');
CREATE TYPE priority as ENUM ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL')

CREATE TABLE tasks (
    id UUID PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    status task_status NOT NULL,
    priority priority NOT NULL,
    assigned_to_id UUID NOT NULL,
    created_by_id UUID NOT NULL,
    project_id UUID NOT NULL,
    due_date TIMESTAMPTZ NOT NULL,
    created_at TIMESTAMPTZ NOT NULL,
    updated_at TIMESTAMPTZ NOT NULL,
);