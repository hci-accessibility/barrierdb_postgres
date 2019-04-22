-- Table: public.barrier_type_constraints_map
DROP TABLE IF EXISTS barrier_type_accessibility_constraints ;

CREATE TABLE barrier_type_accessibility_constraints (
  barrier_type_id INT NOT NULL,
  access_constraint_id INT NOT NULL,
  PRIMARY KEY (barrier_type_id, access_constraint_id)
)
TABLESPACE pg_default;

ALTER TABLE barrier_type_accessibility_constraints
    OWNER to barrierdb;