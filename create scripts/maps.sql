-- Table: public.maps

DROP TABLE IF EXISTS maps;

CREATE TABLE maps
(
	map_id SERIAL NOT NULL PRIMARY KEY,
	name VARCHAR(45) NOT NULL,
	building_id INT NULL,
	mapfile VARCHAR(45) NOT NULL,
	transform_scaling REAL NULL,
	transform_offset REAL NULL,
	transform_rotation REAL NULL
)
TABLESPACE pg_default;

ALTER TABLE public.maps
    OWNER to barrierdb;