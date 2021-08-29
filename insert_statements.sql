-- Car Dealership Database SQL Project

-- Insert Statements


-- Insert Customer
INSERT INTO customer(
    customer_id,
    first_name,
    last_name,
    address,
    email,
    billing_info
)VALUES(
    1,
    'Joshua',
    'Cunningham',
    '123 Street Ave. Seattle, WA 12345',
    'email@email.com',
    '4242-4242-4242-4242 623 05/23'
);

-- Insert a salesman and a mechanic
INSERT INTO staff(
    staff_id,
    first_name,
    last_name,
    staff_type,
    email,
    address,
    phone_number
)VALUES(
    1,
    'Bruce',
    'Wayne',
    'Sale',
    'bwayne@batman.com',
    '1234 Batman Drive Gothim City',
    '555-555-5555'
);

INSERT INTO staff(
    staff_id,
    first_name,
    last_name,
    staff_type,
    email,
    address,
    phone_number
)VALUES(
    2,
    'Oliver',
    'Queen',
    'Mechanic',
    'greenarrow@starlabs.com',
    '1234 Flash Ave Star City 12345',
    '123-321-2314'
);

-- Insert vehicles into database

INSERT INTO vehicle(
    vehicle_id,
    vehicle_make,
    vehicle_model,
    vehicle_year,
    vehicle_cost,
    sale_service,
    new_used    
)VALUES(
    1,
    'Toyota',
    'Tacoma',
    2021,
    45000.00,
    'Sale',
    'New'
)

INSERT INTO vehicle(
    vehicle_id,
    vehicle_make,
    vehicle_model,
    vehicle_year,
    vehicle_cost,
    sale_service,
    new_used    
)VALUES(
    2,
    'Toyota',
    'Tundra',
    2022,
    65000.00,
    'Sale',
    'New'
)

-- Insert some parts into database

INSERT INTO part(
    part_id,
    part_desc,
    part_cost,
    part_upc,
    in_stock
)VALUES(
    1,
    'air filter',
    10.99,
    123456789012,
    True
);

INSERT INTO part(
    part_id,
    part_desc,
    part_cost,
    part_upc,
    in_stock
)VALUES(
    2,
    'radiator',
    699.99,
    123456789564,
    True
);

