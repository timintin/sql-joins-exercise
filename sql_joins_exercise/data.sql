-- Create tables
CREATE TABLE owners (
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

CREATE TABLE cars (
    id SERIAL PRIMARY KEY,
    make VARCHAR(50),
    model VARCHAR(50),
    year INT,
    price DECIMAL(10, 2),
    owner_id INT REFERENCES owners(id)
);

-- Insert data into owners table
INSERT INTO owners (first_name, last_name) VALUES
('Bob', 'Hope'),
('Jane', 'Smith'),
('Melody', 'Jones'),
('Sarah', 'Palmer'),
('Alex', 'Miller'),
('Shana', 'Smith'),
('Maya', 'Malarkin');

-- Insert data into cars table
INSERT INTO cars (make, model, year, price, owner_id) VALUES
('Toyota', 'Corolla', 2002, 2999.99, 1),
('Honda', 'Civic', 2012, 13000, 1),
('Nissan', 'Altima', 2016, 24000, 2),
('Subaru', 'Legacy', 2004, 5999.99, 2),
('Ford', 'F150', 2012, 2599.99, 3),
('GMC', 'Yukon', 2016, 13000, 3),
('GMC', 'Yukon', 2014, 23000, 4),
('Toyota', 'Avalon', 2009, 13000, 4),
('Toyota', 'Camry', 2013, 13000, 4),
('Honda', 'Civic', 2021, 7999.99, 5),
('Nissan', 'Altima', 1999, 1899.99, 6),
('Lexus', 'ES350', 1998, 1599.99, 6),
('BMW', '300', 2012, 23000, 6),
('BMW', '700', 2015, 53000, 6);
