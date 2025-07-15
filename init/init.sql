CREATE SCHEMA IF NOT EXISTS storage_schema;

CREATE TABLE IF NOT EXISTS storage_schema.room_params (
    id SERIAL PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL,
    volume DOUBLE PRECISION NOT NULL,
    air_density DOUBLE PRECISION NOT NULL,
    air_specific_heat DOUBLE PRECISION NOT NULL,
    heater_power DOUBLE PRECISION NOT NULL,
    people_present BOOLEAN NOT NULL
);

CREATE TABLE IF NOT EXISTS storage_schema.sensor_data (
    id SERIAL PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    internal_temperature DOUBLE PRECISION NOT NULL,
    external_temperature DOUBLE PRECISION NOT NULL,
    window_open BOOLEAN NOT NULL,
    door_open BOOLEAN NOT NULL,
    people_count INT NOT NULL,
    heater_power DOUBLE PRECISION NOT NULL
);

CREATE TABLE IF NOT EXISTS storage_schema.sensor_data3 (
    id SERIAL PRIMARY KEY,
    room_name VARCHAR(100) NOT NULL,
    timestamp TIMESTAMP NOT NULL,
    internal_temperature DOUBLE PRECISION NOT NULL,
    external_temperature DOUBLE PRECISION NOT NULL,
    target_temperatute DOUBLE PRECISION NOT NULL
    window_open BOOLEAN NOT NULL,
    door_open BOOLEAN NOT NULL,
    people_count INT NOT NULL,
    heater_power DOUBLE PRECISION NOT NULL
);