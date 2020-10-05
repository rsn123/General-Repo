CREATE DATABASE cars_database;
USE cars_database;

CREATE TABLE T_PERSON (
	id INT NOT NULL AUTO_INCREMENT,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    address VARCHAR(255),
    city VARCHAR(255),
    PRIMARY KEY (id)
    );
CREATE TABLE T_CAR (
	id INT NOT NULL AUTO_INCREMENT,
	brand VARCHAR(255),
    model VARCHAR(255),
    reg_number VARCHAR(8),
    person_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (person_id) REFERENCES T_PERSON (id)
);
INSERT INTO T_PERSON (last_name, first_name, address, city)
VALUES ('Ivanov', 'Ivan', 'ul.Bubarska 8', 'Sofia'),
		('Petrov', 'Georgi', 'ul.Stamboliiski 8', 'Plovdiv'),
        ('Goranov', 'Goran', 'ul.Hristo 8', 'Pleven'),
        ('Stoyanov', 'Ivan', 'ul.Parva 8', 'Petrich'),
        ('Dinev', 'MIroslav', 'ul.Osma 8', 'Lovech');
        
INSERT INTO T_CAR (brand, model, reg_number, person_id)
VALUES ('Audi', 'R8', 'CB1683TX', 1),
		('Audi', 'S4', 'C4215HF', 2),
        ('BMW', 'C5', 'CA1682KD', 3),
        ('Lexus', 'AI', 'X3002YT', 4),
        ('Trabant', 'Turbo', 'PE1924IT', 4),
        ('Mercedes', 'S', 'OT1231PD', 1),
        ('Lambo', 'Aventador', 'PA1235FG', 2),
        ('Skoda', 'RG', 'YT9857MN', 3),
        ('Ferrari', 'F12', 'LM9878CX', 5),
        ('Nissan', 'GTR', 'RE6666MN', 5);
        
        SELECT * FROM T_PERSON;
        SELECT * FROM T_CAR;
        
        SELECT * FROM T_PERSON WHERE first_name='Ivan';
        
        SELECT brand, model, reg_number FROM T_CAR WHERE person_id=3;
        
        SELECT * FROM T_CAR WHERE reg_number LIKE 'C%' AND reg_number NOT LIKE 'CB%';
        
        SELECT first_name, last_name FROM T_PERSON;
        
        DELETE FROM T_PERSON WHERE id=6;
        DELETE FROM T_PERSON WHERE id=7;
        DELETE FROM T_PERSON WHERE id=8;
        DELETE FROM T_PERSON WHERE id=9;
        DELETE FROM T_PERSON WHERE id=10;
        
        SELECT last_name, first_name, T_CAR.brand, T_CAR.model FROM T_PERSON
        JOIN T_CAR ON T_PERSON.id = T_CAR.person_id;
        
        SELECT first_name, last_name, T_CAR.reg_number FROM T_PERSON
        JOIN T_CAR ON T_PERSON.id = T_CAR.person_id WHERE reg_number LIKE "C%" AND reg_number NOT LIKE 'CB%';
        
        SELECT * FROM T_CAR WHERE reg_number LIKE '%5%';
        
        
        
        
        
        
       