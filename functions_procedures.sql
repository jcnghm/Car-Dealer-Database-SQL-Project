-- Car Dealership Database SQL Project


-- Function to add a new customer into the database

CREATE OR REPLACE FUNCTION add_customer(_customer_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _address VARCHAR, _email VARCHAR, _billing_info VARCHAR)
RETURNS void 
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO customer(customer_id,first_name,last_name,address, email, billing_info)
	VALUES(_customer_id, _first_name, _last_name, _address, _email, _billing_info);
END;
$MAIN$

SELECT add_customer(2,'John', 'Smith', '3214 Street Ave Seattle, WA 55555', 'jsmith@email.com', '5555-5555-5555-5555 123 01/23');



-- Function to add a newly hired mechanic for the service department

CREATE OR REPLACE FUNCTION add_mechanic(_staff_id INTEGER, _first_name VARCHAR, _last_name VARCHAR, _staff_type VARCHAR, _email VARCHAR, _address VARCHAR, _phone_number VARCHAR)
RETURNS void 
LANGUAGE plpgsql
AS $MAIN$
BEGIN
	INSERT INTO staff(staff_id,first_name,last_name, staff_type, email, address, phone_number)
	VALUES(_staff_id, _first_name, _last_name, _staff_type, _email, _address, _phone_number);
END;
$MAIN$

SELECT add_mechanic(3,'Barry', 'Allen', 'Mechanic', 'ballen@starlabs.com', '55555 Street Ave Central City 55555', '123-321-4234');



-- Function to process a new invoice for a sale

CREATE OR REPLACE FUNCTION add_sale( _total_cost INTEGER, _customer_id INTEGER, _vehicle_id INTEGER, _staff_id INTEGER)
RETURNS void
LANGUAGE plpgsql
AS $MAIN$
BEGIN
    INSERT INTO sales_invoice(total_cost, customer_id, vehicle_id, staff_id)
    VALUES(_total_cost, _customer_id, _vehicle_id, _staff_id);
END;
$MAIN$

SELECT add_sale(45000, 1, 1, 1);


-- Procedure to add a discount to the purchase of the above vehicle and update the invoice

CREATE OR REPLACE PROCEDURE discount_post(
	invoice INTEGER,
	discount_amount NUMERIC(6,2)
)
LANGUAGE plpgsql
AS $$
BEGIN
	UPDATE sales_invoice
	SET total_cost = total_cost - discount_amount
	WHERE invoice_id = invoice;
	COMMIT;
	
END;
$$

CALL discount_post(1, 3000.00)