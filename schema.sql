DROP TABLE IF EXISTS coastline;
DROP TABLE IF EXISTS measurement;
DROP TABLE IF EXISTS city;
DROP TABLE IF EXISTS country;
DROP TABLE IF EXISTS region;

CREATE TABLE region (identifier INTEGER, description VARCHAR(50));
CREATE TABLE country (identifier INTEGER, region INTEGER NOT NULL, description VARCHAR(50));
CREATE TABLE city (identifier INTEGER, country INTEGER NOT NULL, description VARCHAR(50), latitude DOUBLE PRECISION NOT NULL, longitude DOUBLE PRECISION NOT NULL, dataset VARCHAR(10) NOT NULL);
CREATE TABLE measurement (city INTEGER NOT NULL, mark TIMESTAMP NOT NULL, temperature DOUBLE PRECISION NOT NULL);
CREATE TABLE coastline (shape INTEGER NOT NULL, segment INTEGER NOT NULL, latitude DOUBLE PRECISION NOT NULL, longitude DOUBLE PRECISION NOT NULL);

ALTER TABLE region ADD CONSTRAINT pk_region_id PRIMARY KEY (identifier);
ALTER TABLE country ADD CONSTRAINT pk_country_id PRIMARY KEY (identifier);
ALTER TABLE city ADD CONSTRAINT pk_city_id PRIMARY KEY (identifier);

ALTER TABLE measurement ADD CONSTRAINT fk_measurement_city_id FOREIGN KEY (city) REFERENCES city;
ALTER TABLE city ADD CONSTRAINT fk_city_country_id FOREIGN KEY (country) REFERENCES country;
ALTER TABLE country ADD CONSTRAINT fk_country_region_id FOREIGN KEY (region) REFERENCES region;