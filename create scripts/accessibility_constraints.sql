-- Table: public.accessibility_constraints

DROP TABLE IF EXISTS accessibility_constraints;

CREATE TABLE accessibility_constraints
(
	accessibility_constraint_id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL
)
TABLESPACE pg_default;

ALTER TABLE accessibility_constraints
    OWNER to barrierdb;