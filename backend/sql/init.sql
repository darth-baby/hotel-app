DROP TABLE IF EXISTS guests;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  user_login VARCHAR NOT NULL,
  password_hash VARCHAR NOT NULL
);

CREATE TABLE guests (
    id SERIAL PRIMARY KEY,
    full_name VARCHAR NOT NULL,
    phone_number VARCHAR NOT NULL,
    room_number INT,
    note TEXT,
    in_date TIMESTAMP,
    out_date TIMESTAMP
);

CREATE INDEX indx_guests_full_name ON guests(full_name);
