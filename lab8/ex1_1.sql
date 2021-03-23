
CREATE TABLE account (
	account_id SERIAL PRIMARY KEY,
	customer_name VARCHAR NOT NULL,
	credit INT NOT NULL
);
INSERT INTO account (customer_name, credit)
VALUES
('Dwik', 1000),
('Shaheen', 1000),
('Hkhadra', 1000);
START TRANSACTION;
UPDATE account SET credit = credit - 500 WHERE account_id = 1;
UPDATE account SET credit = credit + 500 WHERE account_id = 3;
SELECT * FROM account;
ROLLBACK;
START TRANSACTION;
UPDATE account SET credit = credit - 700 WHERE account_id = 2;
UPDATE account SET credit = credit + 700 WHERE account_id = 1;
SELECT * FROM account;
ROLLBACK;
START TRANSACTION;
UPDATE account SET credit = credit - 100 WHERE account_id = 2;
UPDATE account SET credit = credit + 100 WHERE account_id = 3;	
SELECT * FROM account;
ROLLBACK;