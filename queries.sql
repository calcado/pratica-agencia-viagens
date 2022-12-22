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

CREATE TABLE flights(
    id SERIAL PRIMARY KEY,
    "companyId" INTEGER FOREIGN KEY REFERENCES "companies"("id"),
    "airportId" INTEGER FOREIGN KEY REFERENCES "airports"("id"),
    acronym VARCHAR (3) NOT NULL,
    departure TIMESTAMP WITH TIMEZONE NOT NULL, 
    arrival TIMESTAMP WITH TIMEZONE NOT NULL 
)