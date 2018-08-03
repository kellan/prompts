CREATE TABLE prompts (
	id numeric,
	created_at timestamp,
	inserted_at timestamp,
	updated_at timestamp,
	prompt text,
	author_id text,
	url text,
);

CREATE UNIQUE INDEX prompts_idx on prompts (id);

CREATE TABLE prompt_participants (
	id numeric,
	prompts_id numeric,
	created_at timestamp,
	sent_at timestamp,
	open_at timestamp,
	response_at timestamp,
	name text,
	email text,
	response_text text,
	response_distributed_at timestamp
);

CREATE UNIQUE INDEX pp_idx on prompt_participants (id);