-- Table: public.barriers
DROP TABLE IF EXISTS barriers;

CREATE TABLE barriers (
  barrier_id BIGSERIAL NOT NULL PRIMARY KEY,
  barrier_type_id INT NOT NULL,
  is_verified BOOLEAN NOT NULL DEFAULT false,
  map_id INT NOT NULL
)
TABLESPACE pg_default;

ALTER TABLE barriers
    OWNER to barrierdb;