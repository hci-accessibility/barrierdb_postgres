-- Table: public.barrier_regions
DROP TABLE IF EXISTS barrier_regions ;

CREATE TABLE barrier_regions (
  	barrier_id BIGINT NOT NULL,
	region_id BIGSERIAL NOT NULL,
  	region BOX NOT NULL,
  PRIMARY KEY (barrier_id, region_id)
)
TABLESPACE pg_default;

ALTER TABLE public.barrier_regions
    OWNER to barrierdb;