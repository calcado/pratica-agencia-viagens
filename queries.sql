CREATE DATABASE agencia

CREATE TABLE companies(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    acronym VARCHAR(3) NOT NULL
);

CREATE TABLE airports(
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    acronym VARCHAR(3) NOT NULL
);

CREATE TABLE fligthts(
    id SERIAL PRIMARY KEY,
    "companyId" INTEGER REFERENCES "companies"("id"),
    acronym VARCHAR (3) NOT NULL,
    departureAirport INTEGER NOT NULL REFERENCES "airports"("id"),
    arrivalAirport INTEGER NOT NULL REFERENCES "airports"("id"),
    departure TIMESTAMP WITH TIMEZONE NOT NULL, 
    arrival TIMESTAMP WITH TIMEZONE NOT NULL 
)