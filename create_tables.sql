-- Car Dealership Database SQL Project

-- Create Tables Statements


CREATE TABLE vehicle(
    vehicle_id SERIAL PRIMARY KEY,
    vehicle_make VARCHAR(100),
    vehicle_model VARCHAR(100),
    vehicle_year NUMERIC(5),
    vehicle_cost NUMERIC(10,2),
    sale_service VARCHAR(100), -- Whether a vehicle is for sale or for service
    new_used VARCHAR(100) -- Whether a vehicle is new or used
);

CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(150),
    last_name VARCHAR(150),
    address VARCHAR(150),
    email VARCHAR(150),
    billing_info VARCHAR(150)
);

CREATE TABLE staff(
    staff_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    staff_type VARCHAR(100), -- Sales or Service Employee
    email VARCHAR(100),
    address VARCHAR(150),
    phone_number VARCHAR(30)
);

CREATE TABLE part(
    part_id SERIAL PRIMARY KEY,
    part_desc VARCHAR(100),
    part_cost NUMERIC(10,2),
    part_upc NUMERIC(12,0),
    in_stock BOOLEAN
);

CREATE TABLE sales_invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE DEFAULT CURRENT_DATE,
    total_cost NUMERIC(12,2),
    customer_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id),
    FOREIGN KEY(staff_id) REFERENCES staff(staff_id)
);

CREATE TABLE service_invoice(
    service_id SERIAL PRIMARY KEY,
    invoice_date DATE DEFAULT CURRENT_DATE,
    service_total NUMERIC(12,2),
    customer_id INTEGER NOT NULL,
    vehicle_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customer(customer_id),
    FOREIGN KEY(vehicle_id) REFERENCES vehicle(vehicle_id)
);

CREATE TABLE service_type(
    type_id SERIAL PRIMARY KEY,
    service_date DATE DEFAULT CURRENT_DATE,
    service_desc VARCHAR(100),
    service_cost NUMERIC(12,2),
    service_id INTEGER NOT NULL,
    staff_id INTEGER NOT NULL,
    part_id INTEGER NOT NULL,
    FOREIGN KEY(service_id) REFERENCES service_invoice(service_id),
    FOREIGN KEY(staff_id) REFERENCES staff(staff_id),
    FOREIGN KEY(part_id) REFERENCES part(part_id)
);



