-- Table: public.buildings
DROP TABLE IF EXISTS public.buildings;

CREATE TABLE public.buildings
(
	building_id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL
)
TABLESPACE pg_default;

ALTER TABLE public.buildings
    OWNER to barrierdb;