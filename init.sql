CREATE TABLE IF NOT EXISTS public.users (
    id integer GENERATED BY DEFAULT AS IDENTITY,
    created_at timestamp,
    updated_at timestamp, 
    name character varying(20),
    last_name character varying(20),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS public.posts (
    id integer GENERATED BY DEFAULT AS IDENTITY, 
    created_at timestamp,
    updated_at timestamp,
    theText character varying(250),
    user_id integer,
    PRIMARY KEY(id),
    CONSTRAINT fk_pk1
        FOREIGN KEY(user_id)
            REFERENCES public.users(id) 
);