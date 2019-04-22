-- Table: public.barrier_types
DROP TABLE IF EXISTS barrier_types;

CREATE TABLE barrier_types (
  barrier_type_id SERIAL NOT NULL PRIMARY KEY,
  name VARCHAR(45) NOT NULL
)
TABLESPACE pg_default;

ALTER TABLE public.barrier_types
    OWNER to barrierdb;